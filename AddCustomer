
package HotelMangementSystem;

import javax.swing.*;
import java.awt.*;
import java.sql.*;
import java.util.Date;
import java.awt.event.*;

public class AddCustomer extends JFrame implements ActionListener {

    JComboBox<String> comboid;
    JTextField tfnumber, tfname, tfcountry, tfdeposit;
    JRadioButton rmale, rfemale;
    Choice croom;
    JLabel checkintime;
    JButton add, back;

    public AddCustomer() {
        getContentPane().setBackground(Color.white);
        setLayout(null);

        Font labelFont = new Font("Raleway", Font.PLAIN, 20);
        Font smallLabelFont = new Font("Raleway", Font.PLAIN, 18);

        JLabel text = new JLabel("NEW CUSTOMER FORM");
        text.setBounds(100, 40, 300, 30);
        text .setForeground(new Color(139, 69, 19));
        
        text.setFont(new Font("Raleway", Font.BOLD, 20));
        add(text);

        JLabel lblid = new JLabel("ID");
        lblid.setBounds(100, 100, 100, 20);
        lblid.setForeground(new Color(139, 69, 19));
        lblid.setFont(new Font("Raleway", Font.BOLD, 14));
        lblid.setFont(labelFont);
        add(lblid);

        String options[] = {"Citizenship", "Passport", "Driving License", "Voter-id Card", "Ration Card"};
        comboid = new JComboBox<>(options);
        comboid.setBounds(260, 100, 150, 25);
        comboid.setBackground(Color.white);
        add(comboid);

        JLabel lblnumber = new JLabel("Number");
        lblnumber.setBounds(100, 140, 100, 20);
        lblnumber.setForeground(new Color(139, 69, 19));
        lblnumber.setFont(new Font("Raleway", Font.BOLD, 14));
        lblnumber.setFont(labelFont);
        add(lblnumber);

        tfnumber = new JTextField();
        tfnumber.setBounds(260, 140, 150, 25);
        add(tfnumber);

        JLabel lblname = new JLabel("Name");
        lblname.setBounds(100, 180, 100, 20);
         lblname.setForeground(new Color(139, 69, 19));
        lblname.setFont(new Font("Raleway", Font.BOLD, 14));
        lblname.setFont(labelFont);
        add(lblname);

        tfname = new JTextField();
        tfname.setBounds(260, 180, 150, 25);
        add(tfname);

        JLabel lblgender = new JLabel("Gender");
        lblgender.setBounds(100, 220, 100, 20);
         lblgender.setForeground(new Color(139, 69, 19));
        lblgender.setFont(new Font("Raleway", Font.BOLD, 14));
        lblgender.setFont(labelFont);
        add(lblgender);

        rmale = new JRadioButton("Male");
        rmale.setBackground(Color.white);
        rmale.setBounds(260, 220, 60, 25);
        add(rmale);

        rfemale = new JRadioButton("Female");
        rfemale.setBackground(Color.white);
        rfemale.setBounds(330, 220, 100, 25);
        add(rfemale);

        JLabel lblcountry = new JLabel("Country");
        lblcountry.setBounds(100, 260, 100, 20);
         lblcountry.setForeground(new Color(139, 69, 19));
        lblcountry.setFont(new Font("Raleway", Font.BOLD, 14));
        lblcountry.setFont(labelFont);
        add(lblcountry);

        tfcountry = new JTextField();
        tfcountry.setBounds(260, 260, 150, 25);
        add(tfcountry);

        JLabel lblroom = new JLabel("Room Number");
        lblroom.setBounds(100, 300, 150, 20);
         lblroom.setForeground(new Color(139, 69, 19));
        lblroom.setFont(new Font("Raleway", Font.BOLD, 14));
        lblroom.setFont(labelFont);
        add(lblroom);

        croom = new Choice();
        croom.setBounds(260, 300, 150, 25);
        add(croom);

        try {
            Conn conn = new Conn();
            String query = "select * from room where availability = 'Available'";
            ResultSet rs = conn.s.executeQuery(query);
            while (rs.next()) {
                croom.add(rs.getString("roomnumber"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        JLabel lbltime = new JLabel("Check-in Time");
        lbltime.setBounds(100, 340, 150, 20);
        lbltime.setForeground(new Color(139, 69, 19));
        lbltime.setFont(new Font("Raleway", Font.BOLD, 14));
        lbltime.setFont(smallLabelFont);
        add(lbltime);

        Date date = new Date();

        checkintime = new JLabel("" + date);
        checkintime.setBounds(260, 340, 160, 25);
        checkintime.setFont(new Font("Raleway", Font.PLAIN, 14));
        add(checkintime);

        JLabel lbldeposit = new JLabel("Deposit");
        lbldeposit.setForeground(new Color(139, 69, 19));
        lbldeposit.setFont(new Font("Raleway", Font.BOLD, 14));
        lbldeposit.setBounds(100, 380, 100, 20);
        lbldeposit.setFont(labelFont);
        add(lbldeposit);

        tfdeposit = new JTextField();
        tfdeposit.setBounds(260, 380, 150, 25);
        add(tfdeposit);

        add = new JButton("Add");
        add.setBackground(new Color(139, 69, 19));
        add.setForeground(Color.WHITE);
        add.setBounds(100, 440, 120, 30);
        add.addActionListener(this);
        add(add);

        back = new JButton("Back");
        back.setBackground(new Color(139, 69, 19));
        back.setForeground(Color.WHITE);
        back.setBounds(260, 440, 120, 30);
        back.addActionListener(this);
        add(back);

        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icons/front.jpg"));
        Image i2 = i1.getImage().getScaledInstance(700, 400, Image.SCALE_DEFAULT); //l and b
        ImageIcon i3 = new ImageIcon(i2);
        JLabel image = new JLabel(i3);
        image.setBounds(460, 95, 700, 400); //95 from the top
        add(image);

        setBounds(350, 150, 1200, 580);
        setVisible(true);
    }

    public void actionPerformed(ActionEvent ae) {
        if (ae.getSource() == add) {
            String id = (String) comboid.getSelectedItem();
            String number = tfnumber.getText();
            String name = tfname.getText();
            String gender = null;

            if (rmale.isSelected()) {
                gender = "Male";
            } else {
                gender = "Female";
            }

            String country = tfcountry.getText();
            String room = croom.getSelectedItem();
            String time = checkintime.getText();
            String deposit = tfdeposit.getText();

            try {
                String query = "insert into customer values ('" + id + "', '" + number + "','" + name + "','" + gender + "','" + country + "','" + room + "','" + time + "','" + deposit + "')";
                String query2 = "update room set availability = 'Occupied' where roomnumber = '" + room + "'";

                Conn conn = new Conn();
                conn.s.executeUpdate(query);
                conn.s.executeUpdate(query2);

                JOptionPane.showMessageDialog(null, "New Customer Added Successfully");
                setVisible(false);
                new AddReception();

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (ae.getSource() == back) {
            setVisible(false);
            new AddReception();
        }
    }

    public static void main(String[] args) {
        new AddCustomer();
    }
}

