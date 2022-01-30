<?php
require_once __DIR__."/form.html";

if(!empty($_POST)){
    if(empty($_POST["FIO"]))
        $warnings[] = "Не заполенено поле ФИО.";
    if(empty($_POST["phone_number"]))
        $warnings[] = "Не указан мобильный телефон.";
    if(strpos($_POST["email"], "@gmail.com"))
        $warnings[] = "Регистрация пользователей с таким почтовым адресом невозможна (@gmail.com).";

    if(!empty($warnings)){
        $answer = implode('\n',$warnings);
        echo "<script>alert('$answer');</script>";
    }else{
        $answer = 'Ваш отзыв успешно утерян!';
        echo "<script>alert('$answer');</script>";
    }
}
