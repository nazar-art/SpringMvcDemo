package lelyak.demo.utility;

import java.io.File;
import java.io.IOException;

public class FromCyrillicToUtfConverter {
    public static void main(String[] args) throws IOException {
        String pathSrc = "./tmp/src.txt";
        String pathOut = "./tmp/output.txt";
        String cmdLine = "native2ascii -encoding utf8 " + new File(pathSrc).getAbsolutePath() + " " + new File(pathOut).getAbsolutePath();
        Runtime.getRuntime().exec(cmdLine);
        System.out.println("THE END");
    }
}
