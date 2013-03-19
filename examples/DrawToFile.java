import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.io.*;

class DrawToFile {
	public static void main(String args[]) throws IOException {
		if (args.length != 1) {
			System.out.println("Usage: java DrawToFile <file>");
			System.exit(1);
		}

		/* создать изображение в оперативной памяти */
		BufferedImage bi = new BufferedImage(300, 400, BufferedImage.TYPE_INT_RGB);
		/* создать объект для рисования в bi */
		Graphics2D g2 = bi.createGraphics();

		g2.drawLine(10, 10, 200, 300);

		/* сохранить изображение в файл */
		ImageIO.write(bi, "PNG", new File(args[0]));
	}
}
