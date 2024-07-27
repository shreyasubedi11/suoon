package HotelMangementSystem;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class HotelManagementSystem extends JFrame implements ActionListener {

    public HotelManagementSystem() {
        setSize(1600, 900);
        setLocationRelativeTo(null); 
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); 
        setTitle("Hotel Management System"); 

        ImageIcon backgroundImage = new ImageIcon(ClassLoader.getSystemResource("icons/KATHM.jpg"));
        JLabel image = new JLabel(backgroundImage);
        image.setBounds(0, 0, 1600, 900);
        image.setLayout(new BorderLayout()); 

        JLabel textLabel = new JLabel("HOTEL MANAGEMENT SYSTEM");
        textLabel.setHorizontalAlignment(SwingConstants.CENTER); 
        textLabel.setForeground(Color.WHITE);
        textLabel.setFont(new Font("Arial", Font.BOLD, 45));
        image.add(textLabel, BorderLayout.NORTH); 

        JButton nextButton = new JButton("NEXT");
        nextButton.setBackground(Color.WHITE);
        nextButton.setForeground(Color.BLACK);
        nextButton.addActionListener(this);
        nextButton.setFont(new Font("Arial", Font.BOLD, 28));
        image.add(nextButton, BorderLayout.SOUTH); 

        add(image);
        setVisible(true);

        animateText(textLabel);
    }

    private void animateText(JLabel label) {
        new Thread(() -> {
            try {
                while (true) {
                    label.setVisible(false);
                    Thread.sleep(500);
                    label.setVisible(true);
                    Thread.sleep(500);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }).start();
    }

    @Override
    public void actionPerformed(ActionEvent ae) {
        setVisible(false);
        new Login();
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new HotelManagementSystem());
    }
}
