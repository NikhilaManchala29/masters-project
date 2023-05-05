
<%@page import="javafx.scene.layout.VBox"%>
<%@page import="java.util.Arrays"%>
<%@page import="org.knowm.xchart.CategoryChartBuilder"%>
<%@page import="org.knowm.xchart.CategoryChart"%>
<%@page import="javafx.stage.Stage"%>
<%@page import="javafx.scene.Scene"%>
<%@page import="javafx.scene.chart.XYChart"%>
<%@page import="javafx.scene.chart.BarChart"%>
<%@page import="javafx.scene.chart.NumberAxis"%>
<%@page import="javafx.scene.chart.CategoryAxis"%>
<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.File"%>
<%@page import="org.knowm.xchart.style.Styler.ChartTheme"%>
<%@page import="org.knowm.xchart.PieChartBuilder"%>
<%@page import="org.knowm.xchart.PieChart"%>
<%@page import="org.knowm.xchart.style.PieStyler.AnnotationType"%>
<%@page import="org.knowm.xchart.BitmapEncoder.BitmapFormat"%>
<%@page import="org.knowm.xchart.BitmapEncoder"%>
<%@page import="org.knowm.xchart.SwingWrapper"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="org.jfree.chart.labels.StandardPieSectionLabelGenerator"%>
<%@page import="org.jfree.chart.labels.PieSectionLabelGenerator"%>
<%@page import="org.jfree.chart.plot.PiePlot"%>
<%@page import="org.jfree.data.general.DefaultPieDataset"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.OutputStream"%>
<%@page import="org.jfree.chart.entity.StandardEntityCollection"%>
<%@page import="org.jfree.chart.ChartRenderingInfo"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="java.awt.BasicStroke"%>
<%@page import="java.awt.Color"%>
<%@page import="org.jfree.data.jdbc.JDBCPieDataset"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page import="org.knowm.xchart.style.Styler.LegendPosition"%>

<%
String showname=(String)session.getAttribute("branch");  
Connection connection = null;PreparedStatement ps=null;ResultSet rs=null;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/enhancedsecurity", "root", "root");
Stage stage=null;
ps=connection.prepareStatement("Select fname,(Select count(RSA) from vmfiles) AS RSA, (Select count(Eliptic) from vmfiles ) AS Eliptic,(Select count(DiffeHelman) from vmfiles ) as DiffeHelman from vmfiles");
rs=ps.executeQuery();
    CategoryAxis xAxis    = new CategoryAxis();
        xAxis.setLabel("File Names");

        NumberAxis yAxis = new NumberAxis();
        yAxis.setLabel("Time Delay");
         BarChart  barChart = new BarChart(xAxis, yAxis);

        XYChart.Series dataSeries1 = new XYChart.Series();

       while (rs.next())
        {
      
     
        dataSeries1.setName(rs.getString("fname"));

        dataSeries1.getData().add(new XYChart.Data("RSA", rs.getString(2)));
        dataSeries1.getData().add(new XYChart.Data("Eliptic Curver"  , rs.getString(3)));
        dataSeries1.getData().add(new XYChart.Data("DiffeHelman"  , rs.getString(4)));

            }
         primaryStage.setTitle("BarChart Experiments");
        barChart.getData().add(dataSeries1);

        VBox vbox = new VBox(barChart);

        Scene scene = new Scene(vbox, 400, 200);
         primaryStage.setScene(scene);
        primaryStage.setHeight(300);
        primaryStage.setWidth(1200);

        primaryStage.show();
        %>
        <img  class="img-responsive" src="data:images/png;base64, <%=b64%>" WIDTH="543" HEIGHT="430" BORDER="0"/>  
<%}catch (SQLException e) {
e.printStackTrace();
}

%>