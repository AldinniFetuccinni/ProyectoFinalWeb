/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.webfinal.DAO;

import com.mycompany.webfinal.models.User;
import com.mycompany.webfinal.utils.DbConnection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;

/**
 *
 * @author aldom
 */
public class userDao {
    /*
CREATE TABLE `user` (
  `email` varchar(30) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `avatar` varchar(45) NOT NULL,
  `adm` tinyint DEFAULT NULL,
  `mode` tinyint DEFAULT NULL,
  `edit` tinyint DEFAULT NULL,
  `amon` tinyint DEFAULT NULL,
  `red1` varchar(45) DEFAULT NULL,
  `red2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  */
    
    /*
    USE `usuario`;
DROP procedure IF EXISTS `SignIn`;

DELIMITER $$
USE `usuario`$$
CREATE PROCEDURE `SignIn` (
 IN `Pemail` varchar(30),
 IN `Pusername` varchar(45),
 IN `Ppassword` varchar(45),
 IN `Pavatar` varchar(45),
 IN `Pred1` varchar(45),
 IN `Pred2` varchar(45)
)
BEGIN
INSERT INTO `user`
(`email`,
`username`,
`password`,
`avatar`,
`red1`,
`red2`)
VALUES
(Pemail,
Pusername,
Ppassword,
Pavatar,
Pred1,
Pred2);

END$$

DELIMITER ;
    */
    
    
    /*
    DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `LogIn`(
IN PEmail varchar(30),
IN PPassword varchar(45)
)
BEGIN
	select
    u.username,
    u.avatar
    from user u 
    where 
    u.email = PEmail
    AND u.password = PPassword;
END$$
DELIMITER ;



    */
    
    public static int SignInUser(User user){
    try{
        Connection con = DbConnection.getConnection();
        CallableStatement callable = con.prepareCall("call SignIn(?,?,?,?,?,?);");
        callable.setString(1, user.getUserName());
        callable.setString(2, user.getEmail());
        callable.setString(3, user.getPassword());
        callable.setString(4, user.getImg());
        callable.setString(5, user.getRed1());
        callable.setString(6, user.getRed2());
        return callable.executeUpdate();
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
    return 0;
}
    
    public static User LogInUser(User user){
    try{
        Connection con = DbConnection.getConnection();
        CallableStatement callable = con.prepareCall("call LogIn(?,?);");
        callable.setString(1, user.getEmail());
        callable.setString(2, user.getPassword());
        ResultSet result = callable.executeQuery();
        while(result.next()){
            String UserName = result.getString(1);
            String Img = result.getString(2);
            return new User(UserName, Img);
        }
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
    return null;
}
    
}
