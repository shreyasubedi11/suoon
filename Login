package HotelMangementSystem;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class Login extends JFrame implements ActionListener, KeyListener {
     
    private JTextField username, password;
    private JButton login, cancel;
    
    Login() {
        getContentPane().setBackground(new Color(240, 240, 240));
        setLayout(null); // Use null layout for manual positioning
        
        JLabel user = new JLabel("Username");
        user.setBounds(40, 20, 100, 30);
        user.setFont(new Font("Arial", Font.BOLD, 14));
        add(user);
        
        username = new JTextField();
        username.setBounds(150, 20, 200, 30);
        username.setFont(new Font("Arial", Font.PLAIN, 14));
        add(username);
        username.addKeyListener(this); // Add KeyListener to username field
        
        JLabel pass = new JLabel("Password");
        pass.setBounds(40, 70, 100, 30);
        pass.setFont(new Font("Arial", Font.BOLD, 14));
        add(pass); 
       
        password = new JPasswordField();
        password.setBounds(150, 70, 200, 30);
        password.setFont(new Font("Arial", Font.PLAIN, 14));
        add(password);
        password.addKeyListener(this); // Add KeyListener to password field
        
        login = new JButton("Login");
        login.setBounds(40, 130, 120, 40);
        login.setBackground(new Color(70, 130, 180));
        login.setForeground(Color.WHITE);
        login.setFont(new Font("Arial", Font.BOLD, 14)); 
        login.setFocusPainted(false); 
        login.addActionListener(this);
        add(login);
        
        cancel = new JButton("Cancel");
        cancel.setBounds(180, 130, 120, 40);
        cancel.setBackground(new Color(220, 20, 60));
        cancel.setForeground(Color.WHITE);
        cancel.setFont(new Font("Arial", Font.BOLD, 14)); 
        cancel.setFocusPainted(false); 
        cancel.addActionListener(this);
        add(cancel);
        
        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icons/akriti.jpg"));
        Image i2 = i1.getImage().getScaledInstance(120, 120, Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel image = new JLabel(i3);
        image.setBounds(400, 20, 120, 120);
        add(image);
 
        setBounds(500, 200, 600, 230);
        setVisible(true);
        
        // Set default button for Enter key action
        getRootPane().setDefaultButton(login);
    }
    
    public void actionPerformed(ActionEvent ae) {
        if (ae.getSource() == login) {
            String user = username.getText();
            String pass = password.getText();
          
            try {
                Conn c = new Conn();
                String query = "select * from login where username = '" + user + "' and password = '" + pass + "'";
                ResultSet rs = c.s.executeQuery(query);
                
                if (rs.next()) {
                    setVisible(false);
                    new Dashboard();
                } else {
                    JOptionPane.showMessageDialog(null, "Invalid username or password");
                    setVisible(false);
                }
                
            } catch (Exception e) {
                e.printStackTrace();
            }
          
        } else if (ae.getSource() == cancel) {
            setVisible(false);
        }
    }
    
    public void keyPressed(KeyEvent e) {
        if (e.getKeyCode() == KeyEvent.VK_ENTER) {
            String user = username.getText();
            String pass = password.getText();
            System.out.println("Username entered: " + user);
            System.out.println("Password entered: " + pass);
        }
    }
    
    // Unused methods from KeyListener interface
    public void keyTyped(KeyEvent e) {}
    public void keyReleased(KeyEvent e) {}
    
    public static void main(String[] args) {
        new Login();
    }
}
