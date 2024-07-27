package HotelMangementSystem;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Dashboard extends JFrame implements ActionListener {
    
    public Dashboard() {
        initializeUI();
    }
    
    private void initializeUI() {
        setBounds(0, 0, 1550, 1000);
        setLayout(null);
        
        ImageIcon backgroundImage = new ImageIcon(ClassLoader.getSystemResource("icons/98.jpg"));
        Image scaledImage = backgroundImage.getImage().getScaledInstance(1550, 1100, Image.SCALE_DEFAULT);
        ImageIcon imageIcon = new ImageIcon(scaledImage);
        
        JLabel imageLabel = new JLabel(imageIcon);
        imageLabel.setBounds(0, 0, 1550, 1000);
        add(imageLabel);
        
        JLabel welcomeLabel = new JLabel("COQUETTE ");
        welcomeLabel.setBounds(600, 26, 1000, 50);
        welcomeLabel.setFont(new Font("Times New Roman", Font.BOLD, 60));
        welcomeLabel.setForeground(Color.BLACK);
        imageLabel.add(welcomeLabel);
        
        JMenuBar menuBar = new JMenuBar();
        menuBar.setBounds(0, 0, 1550, 100); // Increase gareko 
        menuBar.setBackground(Color.WHITE);
        imageLabel.add(menuBar);
        
        ImageIcon logoIcon = new ImageIcon(ClassLoader.getSystemResource("icons/logo.jpg"));
        Image logoImage = logoIcon.getImage().getScaledInstance(250, 150, Image.SCALE_DEFAULT);
        ImageIcon logoImageIcon = new ImageIcon(logoImage);
        JLabel logoLabel = new JLabel(logoImageIcon);
        menuBar.add(logoLabel);
        
        JTextField textField = new JTextField("HOTEL MANAGEMENT");
        JMenu hotelMenu = new JMenu("HOTEL MANAGEMENT");
        hotelMenu.setForeground(new Color(139, 69, 19));
        hotelMenu.setBounds(0, 0, 200, 30);
        textField.setHorizontalAlignment(JTextField.RIGHT);
         
        menuBar.add(hotelMenu);
        JMenuItem receptionItem = new JMenuItem("RECEPTION");
        receptionItem.setForeground(Color.BLACK); 
        receptionItem.setFont(new Font("Times New Roman", Font.BOLD, 12));
        receptionItem.addActionListener(this);
        hotelMenu.add(receptionItem);
        
        JMenu adminMenu = new JMenu("ADMIN");
        adminMenu.setForeground(new Color(139, 69, 19)); 
        menuBar.add(adminMenu);
        
        JMenuItem addEmployeeItem = new JMenuItem("ADD EMPLOYEE");
        addEmployeeItem.setForeground(Color.BLACK); 
        addEmployeeItem.setFont(new Font("Times New Roman", Font.BOLD, 12));
        addEmployeeItem.addActionListener(this);
        adminMenu.add(addEmployeeItem);
        
        JMenuItem addDriverItem = new JMenuItem("ADD DRIVER");
        addDriverItem.setForeground(Color.BLACK); 
        addDriverItem.setFont(new Font("Times New Roman", Font.BOLD, 12));
        addDriverItem.addActionListener(this);
        adminMenu.add(addDriverItem);
        
        JMenuItem addRoomItem = new JMenuItem("ADD ROOM");
        addRoomItem.setForeground(Color.BLACK); 
        addRoomItem.setFont(new Font("Times New Roman", Font.BOLD, 12));
        addRoomItem.addActionListener(this);
        adminMenu.add(addRoomItem);
        
        setVisible(true);
    }
    
    @Override
    public void actionPerformed(ActionEvent ae) {
        if (ae.getActionCommand().equals("ADD EMPLOYEE")) {
            new AddEmployee();
        } else if (ae.getActionCommand().equals("ADD ROOM")) {
            new AddRooms();
        } else if (ae.getActionCommand().equals("ADD DRIVER")) {
            new AddDriver();
        } else if (ae.getActionCommand().equals("RECEPTION")) {
            new AddReception();
        }
    }
    
    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
   
            new Dashboard();
        });
    }
}
