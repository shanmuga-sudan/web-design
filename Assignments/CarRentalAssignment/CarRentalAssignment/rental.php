<!DOCTYPE HTML>
<html>

<head>
    <style>
        #p {
            color: #FF0000;
        }
        p{
            color: darkblue;
        }

    </style>
</head>

<body>
<?php

    $err=array();
    $input = array();
    
    if($_POST["PICKUP_YEAR"]>$_POST["RETURN_YEAR"] ){
        $yearErr = "Your return date and time should be later than your pickup date and time for car renting.";
        array_push($err,$yearErr);
    }else{
        if($_POST["PICKUP_YEAR"] == $_POST["RETURN_YEAR"]){
            if($_POST["PICKUP_MONTH"] > $_POST["RETURN_MONTH"]){
                $monthErr = "Your return date and time should be later than your pickup date and time for car renting.";
                array_push($err,$monthErr);
            }else{
                if($_POST["PICKUP_MONTH"] == $_POST["RETURN_MONTH"]){
                    if($_POST["PICKUP_DAY"] > $_POST["RETURN_DAY"]){
                       $dayErr = "Your return date and time should be later than your pickup date and time for car renting.";
                       array_push($err,$dayErr);
                    }else{
                        if($_POST["PICKUP_DAY"] == $_POST["RETURN_DAY"]){
                            if($_POST["PICKUP_AM_PM"] == $_POST["RETURN_AM_PM"] && $_POST["PICKUP_HOUR"] > $_POST["RETURN_HOUR"]){
                                $hourErr = "Your return date and time should be later than your pickup date and time for car renting.";
                                array_push($err,$hourErr);
                            }else{
                                if($_POST["PICKUP_AM_PM"] == $_POST["RETURN_AM_PM"] && $_POST["PICKUP_HOUR"] == $_POST["RETURN_HOUR"]){
                                    if($_POST["PICKUP_MINUTE"] > $_POST["RETURN_MINUTE"]){
                                        $minuteErr = "Your return date and time should be later than your pickup date and time for car renting.";
                                        array_push($err,$minuteErr);
                                    }
                                }
                            }
                            
                            if($_POST["PICKUP_AM_PM"] == "PM" && $_POST["RETURN_AM_PM"] == "AM"){
                               $ampmErr = "Your return date and time should be later than your pickup date and time for car renting.";
                                array_push($err,$ampmErr);   
                            }
                        }
                    }
                }
            }
        }
    }
    

    
    if(count($err)< 0){
        
    }
    else{
        if($_POST["PICKUP_YEAR"] == $_POST["RETURN_YEAR"] && $_POST["PICKUP_MONTH"] == $_POST["RETURN_MONTH"] && $_POST["PICKUP_DAY"] == $_POST["RETURN_DAY"] && $_POST["PICKUP_AM_PM"] == $_POST["RETURN_AM_PM"] && $_POST["PICKUP_HOUR"] == $_POST["RETURN_HOUR"] && $_POST["PICKUP_MINUTE"] == $_POST["RETURN_MINUTE"]){
            $eqErr = "Your return date and time should be later than your pickup date and time for car renting.";
            array_push($err,$eqErr); 
            
        }else{
            $PICK_UP_DATE_TIME = "You Entered Pickup Date & Time for car renting as ".$_POST["PICKUP_DAY"]."/".$_POST["PICKUP_MONTH"]."/".$_POST["PICKUP_YEAR"]." ".$_POST["PICKUP_HOUR"].":".$_POST["PICKUP_MINUTE"]." ".$_POST["PICKUP_AM_PM"];
            array_push($input,$PICK_UP_DATE_TIME);
        
            $RETURN_UP_DATE_TIME = "You Entered Return Date & Time for car renting as ".$_POST["RETURN_DAY"]."/".$_POST["RETURN_MONTH"]."/".$_POST["RETURN_YEAR"]." ".$_POST["RETURN_HOUR"].":".$_POST["RETURN_MINUTE"]." ".$_POST["RETURN_AM_PM"];
            array_push($input,$RETURN_UP_DATE_TIME);
        
        }    
    
    }
    if (empty($_POST["PICKUP_STREET_ADDRESS"])) {
        $nameErr = "PickUp Street Address is required";
        array_push($err,$nameErr);
    }
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z0-9 ]*$/",$_POST["PICKUP_STREET_ADDRESS"])) {
        $nameSpecialErr = "Only letters and white space are allowed in Pick Up Street Address"; 
        array_push($err,$nameSpecialErr);     
    }
    
    if($_POST["PICKUP_STREET_ADDRESS"]!=""){
        $PICKUP_STREET_ADDRESS = "PickUp Street Address : ".$_POST["PICKUP_STREET_ADDRESS"];
        array_push($input,$PICKUP_STREET_ADDRESS);
    }
     
    if (empty($_POST["PICKUP_CITY_NAME"])) {
        $city = "PickUp City Name is required";
        array_push($err,$city); 
    } 

    if (!preg_match("/^[a-zA-Z ]*$/",$_POST["PICKUP_CITY_NAME"])) {
        $regexCity = "Only letters and white space allowed in Pick Up City"; 
        array_push($err,$regexCity); 
    }
    if($_POST["PICKUP_CITY_NAME"]!=""){
        $PICKUP_CITY_NAME = "PickUp City : ".$_POST["PICKUP_CITY_NAME"];
        array_push($input,$PICKUP_CITY_NAME);
    }
    
    
    if(isset($_POST['PICKUP_STATE']) && $_POST['PICKUP_STATE'] == '0') { 
        $pickUpStateErr = 'Please select a Pick up State.'; 
        array_push($err,$pickUpStateErr); 
    } 
    
    else{
         $PICKUP_STATE = "PickUp State : ".$_POST["PICKUP_STATE"];
        array_push($input,$PICKUP_STATE);
    }
    
    if($_POST['PICKUP_COUNTRY_CODE'] !='0'){
        $PICKUP_COUNTRY_CODE = "PickUp Country : ".$_POST["PICKUP_COUNTRY_CODE"];
        array_push($input,$PICKUP_COUNTRY_CODE);
    }

    if($_POST["PICKUP_LOCATION_CODE"] != ''){
        $PICKUP_LOCATION_CODE = "Airport Pickup Location Code : ".$_POST["PICKUP_LOCATION_CODE"];
        array_push($input,$PICKUP_LOCATION_CODE);
    }
    if($_POST["RENTAL_ONEWAY"] == 'true'){
        $RENTAL_ONEWAY = "I plan to return the car to a different location : ".$_POST["RENTAL_ONEWAY"];
        array_push($input,$RENTAL_ONEWAY);
    }
    
    if($_POST["AIRLINE_CODE"] != '0'){
        $AIRLINE_CODE = "Arriving Airline : ".$_POST["AIRLINE_CODE"];
        array_push($input,$AIRLINE_CODE);
    }
   
    if($_POST["FLIGHT_NUMBER"] != ''){
        $FLIGHT_NUMBER = "Flight No : ".$_POST["FLIGHT_NUMBER"];
        array_push($input,$FLIGHT_NUMBER);
    }
        
    if($_POST["RETURN_LOCATION_CODE"] != ''){
        $RETURN_LOCATION_CODE = "Airport Return Location Code : ".$_POST["RETURN_LOCATION_CODE"];
        array_push($input,$RETURN_LOCATION_CODE);
    }
    
    if (empty($_POST["RETURN_STREET_ADDRESS"])) {
        $returnnameErr = "Return Street Address is required";
        array_push($err,$returnnameErr);
    }
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z0-9 ]*$/",$_POST["RETURN_STREET_ADDRESS"])) {
        $returnSpecialErr = "Only letters and white space are allowed in Return Street Address"; 
        array_push($err,$returnSpecialErr);     
    }
    
    if($_POST["RETURN_STREET_ADDRESS"]!=""){
        $RETURN_STREET_ADDRESS = "Return Street Address : ".$_POST["RETURN_STREET_ADDRESS"];
        array_push($input,$RETURN_STREET_ADDRESS);
    }
     
    if (empty($_POST["RETURN_CITY_NAME"])) {
        $RETURN_CITY_NAME = "Return City Name is required";
        array_push($err,$RETURN_CITY_NAME); 
    } 

    if (!preg_match("/^[a-zA-Z ]*$/",$_POST["RETURN_CITY_NAME"])) {
        $regexReturnCity = "Only letters and white space allowed in Return City"; 
        array_push($err,$regexReturnCity); 
    }
    if($_POST["RETURN_CITY_NAME"]!=""){
        $RETURN_CITY_NAME = "Return City : ".$_POST["RETURN_CITY_NAME"];
        array_push($input,$RETURN_CITY_NAME);
    }
    
    
    if(isset($_POST['RETURN_STATE']) && $_POST['RETURN_STATE'] == '0') { 
        $returnStateErr = 'Please select a Return State.'; 
        array_push($err,$returnStateErr); 
    } 
    
    else{
         $RETURN_STATE = "Return State : ".$_POST["RETURN_STATE"];
        array_push($input,$RETURN_STATE);
    }
    
    
    if($_POST['RETURN_COUNTRY_CODE'] !='0'){
        $RETURN_COUNTRY_CODE = "Return Country : ".$_POST["RETURN_COUNTRY_CODE"];
        array_push($input,$RETURN_COUNTRY_CODE);
    }
    
    if($_POST["RATE_CODE"] != ''){
        $RATE_CODE = "Worldwide Discount : ".$_POST["RATE_CODE"];
        array_push($input,$RATE_CODE);
    }
        
    if ($_POST["CHILD_INFANT_SEAT"] == 'true'){
        if(isset($_POST['CHILD_INFANT_SEAT_QUANTITY']) && $_POST['CHILD_INFANT_SEAT_QUANTITY'] == '0') { 
            $infantSeatQuantErr = 'Please select a Quantity for Infant Seats.'; 
            array_push($err,$infantSeatQuantErr); 
        } 
    }
    
    if($_POST["CHILD_INFANT_SEAT"] == 'true'&& $_POST['CHILD_INFANT_SEAT_QUANTITY'] !='0'){
        $CHILD_INFANT_SEAT = "Infant Seat and Quantity : ".$_POST["CHILD_INFANT_SEAT"]." & ".$_POST['CHILD_INFANT_SEAT_QUANTITY'];
        array_push($input,$CHILD_INFANT_SEAT); 
    }
    
    
    if ($_POST["CHILD_SAFETY_SEAT"] == 'true'){
        if(isset($_POST['CHILD_SAFETY_SEAT_QUANTITY']) && $_POST['CHILD_SAFETY_SEAT_QUANTITY'] == '0') { 
            $safetySeatQuantErr = 'Please select a Quantity for Safety Seats.'; 
            array_push($err,$safetySeatQuantErr); 
        } 
    }
    
    if($_POST["CHILD_SAFETY_SEAT"] == 'true'&& $_POST['CHILD_SAFETY_SEAT_QUANTITY'] !='0'){
        $CHILD_SAFETY_SEAT = "Safety Seats and Quantity : ".$_POST["CHILD_SAFETY_SEAT"]." & ".$_POST['CHILD_SAFETY_SEAT_QUANTITY'];
        array_push($input,$CHILD_SAFETY_SEAT); 
    }
       
    
    
    if ($_POST["CHILD_BOOSTER_SEAT"] == 'true'){
        if(isset($_POST['CHILD_BOOSTER_SEAT_QUANTITY']) && $_POST['CHILD_BOOSTER_SEAT_QUANTITY'] == '0') { 
            $boosterSeatQuantErr = 'Please select a Quantity for Booster Seats.'; 
            array_push($err,$boosterSeatQuantErr); 
        } 
    }
    
    if($_POST["CHILD_BOOSTER_SEAT"] == 'true'&& $_POST['CHILD_BOOSTER_SEAT_QUANTITY'] !='0'){
        $CHILD_BOOSTER_SEAT = "Booster Seats and Quantity : ".$_POST["CHILD_BOOSTER_SEAT"]." & ".$_POST['CHILD_BOOSTER_SEAT_QUANTITY'];
        array_push($input,$CHILD_BOOSTER_SEAT); 
    }
    
    
    if (empty($_POST["CAR_GROUP_CODE"])) {
        $carSelectionErr = "Car Selection is required";
        array_push($err,$carSelectionErr); 
    } 
    else {
        $CAR_GROUP_CODE = "Car Selection : ".$_POST["CAR_GROUP_CODE"];
        array_push($input,$CAR_GROUP_CODE);
    }

    if ($_POST["CDW_ACCEPT"] == 'true'){
        $CDW_ACCEPT = " Loss Damage Waiver ( 22.99 USD per day ) : ".$_POST["CDW_ACCEPT"];
        array_push($input,$CDW_ACCEPT);
    }
    
    if ($_POST["PAI_ACCEPT"] == 'true'){
        $PAI_ACCEPT = "Personal Accident insurance ( 22.99 USD per day ) : ".$_POST["PAI_ACCEPT"];
        array_push($input,$PAI_ACCEPT);
    }
    
    if ($_POST["ALI_ACCEPT"] == 'true'){
        $ALI_ACCEPT = " Additional Liability Insurance ( 11.99 USD per day ) : ".$_POST["ALI_ACCEPT"];
        array_push($input,$ALI_ACCEPT);
    }
    
    if (empty($_POST["FIRST_NAME"])) {
        $firstNameErr = "First Name is required";
        array_push($err,$firstNameErr); 
    }
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z ]*$/",$_POST["FIRST_NAME"])) {
        $firstNameRegexErr = "Only letters and white space are allowed in First Name"; 
         array_push($err,$firstNameRegexErr); 
    }
    if($_POST["FIRST_NAME"]!=""){
        $FIRST_NAME = "First Name : ".$_POST["FIRST_NAME"];
        array_push($input,$FIRST_NAME);
    }
    
    
        
    if (empty($_POST["LAST_NAME"])) {
        $lastNameErr = "Last Name is required";
        array_push($err,$lastNameErr); 
    } 

    if (!preg_match("/^[a-zA-Z ]*$/",$_POST["LAST_NAME"])) {
        $lastNameRegexErr = "Only letters and white space are allowed in Last Name"; 
        array_push($err,$lastNameRegexErr); 
    }
    if($_POST["LAST_NAME"]!=""){
        $LAST_NAME = "Last Name : ".$_POST["LAST_NAME"];
        array_push($input,$LAST_NAME);
    }
  
        
    if (empty($_POST["EMAIL_ADDRESS"])) {
        $emailErr = "Email is required";
       array_push($err,$emailErr); 
    } 
    // check if e-mail address is well-formed
    if (!filter_var($_POST["EMAIL_ADDRESS"], FILTER_VALIDATE_EMAIL)) {
        $emailInvalidErr = "Invalid email format"; 
        array_push($err,$emailInvalidErr); 
    }
    
    if($_POST["EMAIL_ADDRESS"]!=""){
        $EMAIL_ADDRESS = "Email Address : ".$_POST["EMAIL_ADDRESS"];
        array_push($input,$EMAIL_ADDRESS);
    }

  
  
    echo "<p id='p'>Here is the List of Errors on the information submited:</p>";
    
    foreach ($err as $error) {
    echo "<p id='p'>$error</p>";

     } 
    
    
    echo "<p>Here is all the information you submitted for Renting the Car:</p>";
    
    foreach ($input as $inputArray) {
    echo "<p>$inputArray</p>";

     } 
    
    $arrayLength=count($err);
    echo "<p>You have $arrayLength Errors. Please go back and correct them.</p>";
?>
</body>

</html>
