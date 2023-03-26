<?php 
//get all products
function getAllproducts($db) {

    
    $sql = 'Select * FROM products '; 
    $stmt = $db->prepare ($sql); 
    $stmt ->execute(); 
    return $stmt->fetchAll(PDO::FETCH_ASSOC); 
} 

//get STUDENT by id 
function getproducts($db, $productsId) {

    $sql = 'Select o.product_name, o.product_description, o.product_price FROM products o  ';
    $sql .= 'Where o.id = :id';
    $stmt = $db->prepare ($sql);
    $id = (int) $productsId;
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC); 

}

//add new products 
function createproducts($db, $form_data) { 
    //stop at sisni
    $sql = 'Insert into products (product_name, product_description, product_price)'; 
    $sql .= 'values (:product_name, :product_description, :product_price)';  
    $stmt = $db->prepare ($sql); 
    $stmt->bindParam(':product_name', ($form_data['product_name']));
    $stmt->bindParam(':product_description', ($form_data['product_description']));
    $stmt->bindParam(':product_price', ($form_data['product_price']));
    $stmt->execute(); 
    return $db->lastInsertID();
}


//delete products by id 
function deleteproducts($db,$productsId) { 

    $sql = ' Delete from products where id = :id';
    $stmt = $db->prepare($sql);  
    $id = (int)$productsId; 
    $stmt->bindParam(':id', $id, PDO::PARAM_INT); 
    $stmt->execute(); 
} 

//update products by id 
function updateproducts($db,$form_dat,$productsId) { 

    
    $sql = 'UPDATE products SET product_name = :product_name , product_description = :product_description , product_price = :product_price'; 
    $sql .=' WHERE id = :id'; 
    $stmt = $db->prepare ($sql); 
    $id = (int)$productsId;  
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);   
    $stmt->bindParam(':product_name', ($form_dat['product_name']));
    $stmt->bindParam(':product_description', ($form_dat['product_description']));
    $stmt->bindParam(':product_price', ($form_dat['product_price']));
    $stmt->execute(); 
}