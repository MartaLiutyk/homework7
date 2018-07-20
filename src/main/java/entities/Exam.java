package entities;

import java.util.Date;

public class Exam {

    private Student student;
    private Subject subject;
    private int mark;
    private Date examinationDate;

    public Exam(Student student, Subject subject, Date examinationDate, int mark) {
        super();
        this.student = student;
        this.subject = subject;
        this.examinationDate = examinationDate;
        this.mark = mark;
    }

}
