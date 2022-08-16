import java.io.*;

public class Main {
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        StudentDb s1=new StudentDb();
        ss o=new ss(1,"abs","jam","abc","123");
        s1.map.put(o,"one");

        ss t=new ss(2,"abs","jam","abc","123");
        s1.map.put(t,"on");
        System.out.println(s1);
        FileOutputStream f1=new FileOutputStream("student.txt");
        ObjectOutputStream f2=new ObjectOutputStream(f1);
        f2.writeObject(s1);
        f1.close();

        FileInputStream f3=new FileInputStream("student.txt");
        ObjectInputStream f4=new ObjectInputStream(f3);
        Object obj=f4.readObject();
        ss s2=(ss)obj;

        System.out.println(s2.student_email);
        System.out.println(s2.studentAddress);
        System.out.println(s2.studentId);
        System.out.println(s2.studentName);
        System.out.println(s2.studentPassword);
        f4.close();







    }
}

