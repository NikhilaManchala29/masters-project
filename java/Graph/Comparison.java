/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Graph;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class Comparison extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception { try{
        primaryStage.setTitle("RSA,Elliptic Curve Cryptography & Diffie Hellman KeyExchange Algorithms Perforrmence Results");

        CategoryAxis xAxis    = new CategoryAxis();
        xAxis.setLabel("Tasks");

        NumberAxis yAxis = new NumberAxis();
        yAxis.setLabel("Time Complexity(in Ms.)");

        BarChart     barChart = new BarChart(xAxis, yAxis);

       
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enhancedsecurity", "root", "root");
        PreparedStatement ps=con.prepareStatement("Select fname,RSA,Eliptic,DiffeHelman from vmfiles group by fname");
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
             XYChart.Series dataSeries1 = new XYChart.Series();
        dataSeries1.setName(rs.getString(1));
        dataSeries1.getData().add(new XYChart.Data("RSA", rs.getInt(2)));
        dataSeries1.getData().add(new XYChart.Data("ECC"  , rs.getInt(3)));
        dataSeries1.getData().add(new XYChart.Data("DHKE"  ,rs.getInt(4)));
        barChart.getData().add(dataSeries1);
        }
        

        VBox vbox = new VBox(barChart);

        Scene scene = new Scene(vbox, 400, 200);

        primaryStage.setScene(scene);
        primaryStage.setHeight(400);
        primaryStage.setWidth(1200);
        primaryStage.show();
        
    }catch(Exception ex){ex.printStackTrace();}
    }

    public static void main(String[] args) {
        Application.launch(args);
    }
}
