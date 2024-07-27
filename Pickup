package HotelMangementSystem;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import net.proteanit.sql.*;

public class Pickup extends JFrame implements ActionListener {
    JTable table;
    JButton back, submit;
    Choice typeofcar;

    Pickup() {
        getContentPane().setBackground(Color.WHITE);
        setLayout(null);

        JLabel text = new JLabel("Pickup Service");
        text.setFont(new Font("Tahoma", Font.PLAIN, 20));
        text.setBounds(400, 30, 200, 30);
        add(text);

        JLabel lblcar = new JLabel("Type of Car");
        lblcar.setBounds(50, 100, 100, 20);
        add(lblcar);

        typeofcar = new Choice();
        typeofcar.setBounds(150, 100, 150, 25);
        typeofcar.setBackground(Color.WHITE);
        add(typeofcar);

        try {
            Conn c = new Conn();
            ResultSet rs = c.s.executeQuery("select * from driver");
            while (rs.next()) {
                typeofcar.add(rs.getString("model"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        JLabel l1 = new JLabel("Name");
        l1.setFont(new Font("Times New Roman", Font.BOLD, 13));
        l1.setForeground(new Color(139, 69, 19));
        l1.setBounds(50, 160, 100, 20);
        add(l1);

        JLabel l2 = new JLabel("Age");
        l2.setBounds(180, 160, 100, 20);
        l2.setFont(new Font("Times New Roman", Font.BOLD, 13));
        l2.setForeground(new Color(139, 69, 19));
        add(l2);

        JLabel l3 = new JLabel("Gender");
        l3.setBounds(290, 160, 100, 20);
        l3.setFont(new Font("Times New Roman", Font.BOLD, 13));
        l3.setForeground(new Color(139, 69, 19));
        add(l3);

        JLabel l4 = new JLabel("Company");
        l4.setBounds(450, 160, 100, 20);
        l4.setFont(new Font("Times New Roman", Font.BOLD, 13));
        l4.setForeground(new Color(139, 69, 19));
        add(l4);

        JLabel l5 = new JLabel("Model");
        l5.setBounds(600, 160, 100, 20);
        l5.setFont(new Font("Times New Roman", Font.BOLD, 13));
        l5.setForeground(new Color(139, 69, 19));
        add(l5);

        JLabel l6 = new JLabel("Available");
        l6.setBounds(730, 160, 100, 20);
        l6.setFont(new Font("Times New Roman", Font.BOLD, 13));
        l6.setForeground(new Color(139, 69, 19));
        add(l6);

        JLabel l7 = new JLabel("Location");
        l7.setBounds(880, 160, 100, 20);
        l7.setFont(new Font("Times New Roman", Font.BOLD, 13));
        l7.setForeground(new Color(139, 69, 19));
        add(l7);

        table = new JTable();
        table.setBounds(0, 200, 1000, 300);
        add(table);

        try {
            Conn c = new Conn();
            ResultSet rs = c.s.executeQuery("Select * from driver");
            table.setModel(DbUtils.resultSetToTableModel(rs));

        } catch (Exception e) {
            e.printStackTrace();
        }

        submit = new JButton("Submit");
        submit.setOpaque(true);
        submit.setBackground(new Color(139, 69, 19));
        submit.setFont(new Font("Times New Roman", Font.BOLD, 13));
        submit.setForeground(Color.WHITE);
        submit.addActionListener(this);
        submit.setBounds(300, 520, 120, 30);
        add(submit);

        back = new JButton("Back");
        back.setOpaque(true);
        back.setBackground(new Color(139, 69, 19));
        back.setFont(new Font("Times New Roman", Font.BOLD, 13));
        back.setForeground(Color.WHITE);
        back.addActionListener(this);
        back.setBounds(500, 520, 120, 30);
        add(back);

        setTitle("Pickup Service"); // Setting the title correctly

        setBounds(300, 200, 1050, 600);
        setVisible(true);
    }

    public void actionPerformed(ActionEvent ae) {
        if (ae.getSource() == submit) {
            try {
                String selectedCarModel = typeofcar.getSelectedItem();
                String query = "select * from driver where model = '" + selectedCarModel + "'";

                Conn conn = new Conn();
                ResultSet rs = conn.s.executeQuery(query);
                table.setModel(DbUtils.resultSetToTableModel(rs));

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (ae.getSource() == back) {
            setVisible(false);
            // Handle the back action (perhaps navigate to another screen)
        }
    }

    public static void main(String[] args) {
        new Pickup();
    }
}
