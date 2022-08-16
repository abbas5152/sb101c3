import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class StudentDb {

    Map<ss,String> map=new HashMap<>();


    void addStudent(ss student){

       student.studentId=1;
       student.studentName="Abbas";
       student.student_email="abc";
       student.studentAddress="jam";
       student.studentPassword="123";

        student.studentId=2;
        student.studentName="Abb";
        student.student_email="abc";
        student.studentAddress="jam";
        student.studentPassword="123";

    }
    Set<Map.Entry<ss,String>> studentsData=map.entrySet();
}

