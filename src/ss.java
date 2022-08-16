public class ss {
   int studentId;
    String studentName;
   String studentAddress;
   String student_email;
    transient String studentPassword;

    public ss(int studentId, String studentName, String studentAddress, String student_email, String studentPassword) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.studentAddress = studentAddress;
        this.student_email = student_email;
        this.studentPassword = studentPassword;
    }
}
