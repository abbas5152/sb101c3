import java.io.*;

public class Student {
    public static void main(String[] args) throws IOException {
        File f1 = new File("student.txt");
        f1.createNewFile();
        PrintWriter pp = new PrintWriter(new FileWriter("student.txt"));
        pp.write("Ram");
        pp.write(80);
        pp.write(68);
        pp.write(59);
        pp.flush();
        pp.close();
      //   int sum=0;
//        BufferedReader fr = new BufferedReader(new FileReader("student.txt"));
//        int i = 0;
//        String line = fr.readLine();
//        int ll = fr.read();
//        int sum = 0;
//        while (line != null ) {
//
//            System.out.print(line);





//            line = fr.readLine();
       // }


    }
}


