<?php 
//get all CUSTOMER
function getAllcustomer($db) {

    
    $sql = 'Select * FROM customer '; 
    $stmt = $db->prepare ($sql); 
    $stmt ->execute(); 
    return $stmt->fetchAll(PDO::FETCH_ASSOC); 
} 

//get CUSTOMER by id 
function getcustomer($db, $customerId) {

    $sql = 'Select o.customer_name, o.customer_email, o.customer_phone FROM customer o  ';
    $sql .= 'Where o.id = :id';
    $stmt = $db->prepare ($sql);
    $id = (int) $customerId;
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC); 

}

//add new CUSTOMER 
function createcustomer($db, $form_data) { 
    //stop at sisni
    $sql = 'Insert into customer (customer_name, customer_email, customer_phone)'; 
    $sql .= 'values (:customer_name, :customer_email, :customer_phone)';  
    $stmt = $db->prepare ($sql); 
    $stmt->bindParam(':customer_name', ($form_data['customer_name']));
    $stmt->bindParam(':customer_email', ($form_data['customer_email']));
    $stmt->bindParam(':customer_phone', ($form_data['customer_phone']));
    $stmt->execute(); 
    return $db->lastInsertID();
}


//delete customer by id 
function deletecustomer($db,$customerId) { 

    $sql = ' Delete from customer where id = :id';
    $stmt = $db->prepare($sql);  
    $id = (int)$customerId; 
    $stmt->bindParam(':id', $id, PDO::PARAM_INT); 
    $stmt->execute(); 
} 

//update customer by id 
function updatecustomer($db,$form_dat,$customerId) { 

    
    $sql = 'UPDATE customer SET customer_name = :customer_name , customer_email = :customer_email , customer_phone = :customer_phone'; 
    $sql .=' WHERE id = :id'; 
    $stmt = $db->prepare ($sql); 
    $id = (int)$customerId;  
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);   
    $stmt->bindParam(':customer_name', ($form_dat['customer_name']));
    $stmt->bindParam(':customer_email', ($form_dat['customer_email']));
    $stmt->bindParam(':customer_phone', ($form_dat['customer_phone']));
    $stmt->execute(); 
}