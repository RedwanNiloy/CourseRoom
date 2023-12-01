package cse.web;


public class Course {
    private String courseCode;
    private String courseName;
    private String instructor;
    private int noOfStudents;
    
    public Course(String courseCode, String courseName, String instructor,int noOfStudents) {
        this.courseCode = courseCode;
        this.courseName = courseName;
        this.instructor = instructor;
        this.noOfStudents = noOfStudents;
    }
    
    public String getCourseCode() {
        return courseCode;
    }
    
    public String getCourseName() {
        return courseName;
    }
    
    public String getInstructor() {
        return instructor;
    }
    
    public int getNoOfStudents() {
    	return noOfStudents;
    }
}