package HotelMangementSystem;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class UpdateRoom extends JFrame implements ActionListener {
    Choice ccustomer;
    JTextField tfroom, tfavailable, tfstatus;
    JButton check, update, back;

    UpdateRoom() {
        getContentPane().setBackground(Color.WHITE);
        setLayout(null);

        JLabel text = new JLabel("Update Room Status");
        text.setFont(new Font("Tahoma", Font.PLAIN, 20));
        text.setBounds(30, 20, 250, 30);
        text.setForeground(new Color(139, 69, 19));
        add(text);

        JLabel lblid = new JLabel("Customer ID");
        lblid.setBounds(30, 80, 100, 20);
        add(lblid);

        ccustomer = new Choice();
        ccustomer.setBounds(200, 80, 150, 25);
        add(ccustomer);
        try {
            Conn c = new Conn();
            ResultSet rs = c.s.executeQuery("SELECT * FROM customer");
            while (rs.next()) {
                ccustomer.add(rs.getString("number"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        JLabel lblroom = new JLabel("Room Number");
        lblroom.setBounds(30, 120, 100, 20);
        add(lblroom);

        tfroom = new JTextField();
        tfroom.setBounds(200, 120, 150, 25);
        add(tfroom);

        JLabel lblname = new JLabel("Availability ");
        lblname.setBounds(30, 160, 100, 20);
        add(lblname);

        tfavailable = new JTextField();
        tfavailable.setBounds(200, 160, 150, 25);
        add(tfavailable);

        JLabel lblcheckin = new JLabel("Room Status");
        lblcheckin.setBounds(30, 200, 100, 20);
        add(lblcheckin);

        tfstatus = new JTextField();
        tfstatus.setBounds(200, 200, 150, 25);
        add(tfstatus);

        check = new JButton("Check");
        check.setBackground(new Color(139, 69, 19));
        check.setForeground(Color.WHITE);
        check.setBounds(30, 370, 100, 30);
        check.addActionListener(this);
        add(check);

        update = new JButton("Update");
        update.setBackground(new Color(139, 69, 19));
        update.setForeground(Color.WHITE);
        update.setBounds(150, 370, 100, 30);
        update.addActionListener(this);
        add(update);

        back = new JButton("Back");
        back.setBackground(new Color(139, 69, 19));
        back.setForeground(Color.WHITE);
        back.setBounds(270, 370, 100, 30);
        back.addActionListener(this);
        add(back);

        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icons/seventh.jpg"));
        Image i2 = i1.getImage().getScaledInstance(700, 400, Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel image = new JLabel(i3);
        image.setBounds(360, 55, 700, 300);
        add(image);

        setBounds(300, 200, 980, 500);
        setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent ae) {
        if (ae.getSource() == check) {
            String id = ccustomer.getSelectedItem();
            String query = "SELECT * FROM customer WHERE number = '" + id + "'";
            try {
                Conn c = new Conn();
                ResultSet rs = c.s.executeQuery(query);
                if (rs.next()) {
                    tfroom.setText(rs.getString("room"));
                    String roomNumber = tfroom.getText();
                    ResultSet rs2 = c.s.executeQuery("SELECT * FROM room WHERE roomnumber = '" + roomNumber + "'");
                    if (rs2.next()) {
                        tfavailable.setText(rs2.getString("availability"));
                        tfstatus.setText(rs2.getString("room_status"));
                    } else {
                        JOptionPane.showMessageDialog(null, "Room details not found for room number: " + roomNumber);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (ae.getSource() == update) {
    String room = tfroom.getText();
    String available = tfavailable.getText();
    String status = tfstatus.getText();
  
    try {
        Conn c = new Conn();
        c.s.executeUpdate("UPDATE room SET availability = '" + available + "', room_status = '" + status + "' WHERE roomnumber = '" + room + "'");
        JOptionPane.showMessageDialog(null, "Data Updated Successfully");
        setVisible(false);
        new AddReception(); 
    } catch (Exception e) {
        e.printStackTrace();
    }
}

        else if (ae.getSource() == back) {
            setVisible(false);
            new AddReception(); 
        }
    }

    public static void main(String[] args) {
        new UpdateRoom();
    }
}
