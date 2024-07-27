
package HotelMangementSystem;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import net.proteanit.sql.*;


public class Room extends JFrame implements ActionListener{
    JTable table;
    JButton back;
Room (){
    getContentPane().setBackground(Color.WHITE);
    setLayout(null);
    
    
        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icons/eight.jpg"));
        Image i2 = i1.getImage().getScaledInstance(600, 600, Image.SCALE_DEFAULT); //l and b
        ImageIcon i3 = new ImageIcon(i2);
        JLabel image = new JLabel(i3);
        image.setBounds(500, 0, 600, 600); //95 from the top
        add(image);
    
        JLabel ll = new JLabel("Room Number");
        ll.setFont(new Font("Times New Roman", Font.BOLD, 13));
        ll.setForeground(new Color(139, 69, 19));
        ll.setBounds(3,10,100,20);
        add(ll);
        
        
         JLabel l2 = new JLabel("Availability");
         l2.setBounds(105,10,100,20);
         l2.setFont(new Font("Times New Roman", Font.BOLD, 13));
         l2.setForeground(new Color(139, 69, 19));
         add(l2);
         
          JLabel l3 = new JLabel("Status");
         l3.setBounds(205,10,100,20);
         l3.setFont(new Font("Times New Roman", Font.BOLD, 13));
         l3.setForeground(new Color(139, 69, 19));
         add(l3);
         
         JLabel l4 = new JLabel("Price");
         l4.setBounds(305,10,100,20);
         l4.setFont(new Font("Times New Roman", Font.BOLD, 13));
         l4.setForeground(new Color(139, 69, 19));
         add(l4);
         
         JLabel l5 = new JLabel("Bed");
         l5.setBounds(405,10,100,20);
         l5.setFont(new Font("Times New Roman", Font.BOLD, 13));
         l5.setForeground(new Color(139, 69, 19));
         add(l5);
        
        table = new JTable();
        table.setBounds(0,40,500,400);
        add(table);
        
        try{
            Conn c = new Conn();
            ResultSet rs = c.s.executeQuery("Select * from room");
            table.setModel(DbUtils.resultSetToTableModel(rs));
            
        }catch (Exception e){
            e.printStackTrace();
        }
    back = new JButton ("Back");
   
    back.setOpaque(true); // Set the label to be opaque background color milaunu parney bela only not needed for foreground color change
    back.setBackground(new Color(139, 69, 19)); // Set the background color
    back.setFont(new Font("Times New Roman", Font.BOLD, 13));
    back.setForeground(Color.WHITE);
    back.addActionListener(this);
    back.setBounds(200,500,120,30);
    add(back);
    
   setBounds(300,200,1050,600);
   setVisible(true);
   
   
}   
public void actionPerformed(ActionEvent ae){
    setVisible(false);
    new AddReception();
}
public static void main(String[]args){
    new Room();
}
}
