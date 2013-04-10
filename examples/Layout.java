
import java.awt.*;

import javax.swing.*;

public class Layout {
	private static void init() {
		JFrame frame = new JFrame();
		Container panel;
		JButton b;

		frame.setDefaultCloseOperation(
					WindowConstants.EXIT_ON_CLOSE);
		frame.setSize(200, 100);

		panel = frame.getContentPane();
		panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));

		b = new JButton("Button 1");
		b.setAlignmentX(Component.CENTER_ALIGNMENT);
		panel.add(b);

		b = new JButton("B 2");
		b.setAlignmentX(Component.CENTER_ALIGNMENT);
		panel.add(b);

		b = new JButton("Very wide button number 3");
		b.setAlignmentX(Component.CENTER_ALIGNMENT);
		panel.add(b);


		frame.pack();
		frame.setVisible(true);
	}

	public static void main(String [] args) {
		java.awt.EventQueue.invokeLater(new Runnable() {
			public void run() {
				init();
			}
		});
	}
}

