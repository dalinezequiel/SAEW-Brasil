package com.sae.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoSQL {
	public static Connection getConnection()
    {
        Connection conexao=null;
        String driver="org.postgresql.Driver";
        String url="jdbc:postgresql://localhost:5432/sae";
        String user="postgres";
        String password="hund,70";
        
        try
        {
            Class.forName(driver);
            conexao=DriverManager.getConnection(url, user, password);
            return conexao;
        }catch(ClassNotFoundException ex)
        {
            ex.printStackTrace();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
         return null;
    }
	
	public static Connection getConnectionFromDatabase()
    {
        Connection conexao=null;
        String driver="org.postgresql.Driver";
        String url="jdbc:postgresql://localhost:5432/sae";
        String user="postgres";
        String password="hund,70";
        
        try
        {
            Class.forName(driver);
            conexao=DriverManager.getConnection(url, user, password);
            return conexao;
        }catch(ClassNotFoundException ex)
        {
            ex.printStackTrace();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
         return null;
    }
}
