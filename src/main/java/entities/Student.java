package entities;

import java.util.Date;

public class Student {

    private int studentCode;
    private String fname;
    private String lname;
    private String sex;
    private Date dateOfBirth;
    private String parentName;
    private String address;
    private long phoneNumber;
    private String passport;
    private String examBook;
    private Date enterDate;
    private String group;
    private Faculty faculty;


    public Student(int studentCode, String fname, String lname, String sex, Date dateOfBirth,
                   String parentName, String address, long phoneNumber, String passport, String examBook,
                   Date enterDate, String group, Faculty faculty) {
        super();
        this.studentCode = studentCode;
        this.fname = fname;
        this.lname = lname;
        this.sex = sex;
        this.dateOfBirth = dateOfBirth;
        this.parentName = parentName;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.passport = passport;
        this.examBook = examBook;
        this.enterDate = enterDate;
        this.group = group;
        this.faculty = faculty;
    }
}
