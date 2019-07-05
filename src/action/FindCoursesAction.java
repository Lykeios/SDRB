package action;
import db.DBConnection;
import model.Course;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FindCoursesAction {
    private List<Course> courseList_ongoing;
    private List<Course> courseList_coming;
    private List<Course> courseList_finished;
    private List<Course> courseList_temp_ongoing =new ArrayList<Course>();
    private List<Course> courseList_temp_coming =new ArrayList<Course>();
    private List<Course> courseList_temp_finished =new ArrayList<Course>();

    public void setCourseList_ongoing(List<Course> courseList_ongoing) {
        this.courseList_ongoing = courseList_ongoing;
    }
    public List<Course> getCourseList_ongoing() {
        return courseList_ongoing;
    }

    public void setCourseList_coming(List<Course> courseList_coming) {
        this.courseList_coming = courseList_coming;
    }
    public List<Course> getCourseList_coming() {
        return courseList_coming;
    }

    public void setCourseList_finished(List<Course> courseList_finished) {
        this.courseList_finished = courseList_finished;
    }
    public List<Course> getCourseList_finished() {
        return courseList_finished;
    }


    public String FindC() throws Exception{
        //从数据库查找指定用户的课程并返回课程ID数组
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Course temp_course = null;
        String forward = null;
        con = DBConnection.getDBConnection();

        //ongoing
        String sql = "SELECT course.* FROM user_has_course,course WHERE User_User_id =? and user_has_course.Course_Course_Id=course.Course_Id and Course_Pass=0";
        try{
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, u2_id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                temp_course = new Course();
                temp_course.setCourse_Id(rs.getInt("Course_Id"));
                temp_course.setCourse_Name(rs.getString("Course_Name"));
                temp_course.setCourse_Pass(rs.getInt("Course_Pass"));
                temp_course.setCourse_Intro(rs.getString("Course_Intro"));
                temp_course.setCourse_Image(rs.getString("Course_Image"));
                temp_course.setCourse_Date(rs.getDate("Course_Date"));
                temp_course.setCourse_Teacher(rs.getString("Course_Teacher"));
                courseList_temp_ongoing.add(temp_course);
            }
        }catch(Exception e) {
            forward = "failure";
            e.printStackTrace();
        }finally {
            //DBConnection.closeDB(con, pstmt, rs);
        }
        this.setCourseList_ongoing(courseList_temp_ongoing);


        //coming

        sql = "SELECT course.* FROM user_has_course,course WHERE User_User_id =? and user_has_course.Course_Course_Id=course.Course_Id and Course_Pass=1";
        try{
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, u2_id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                temp_course = new Course();
                temp_course.setCourse_Id(rs.getInt("Course_Id"));
                temp_course.setCourse_Name(rs.getString("Course_Name"));
                temp_course.setCourse_Pass(rs.getInt("Course_Pass"));
                temp_course.setCourse_Intro(rs.getString("Course_Intro"));
                temp_course.setCourse_Image(rs.getString("Course_Image"));
                temp_course.setCourse_Date(rs.getDate("Course_Date"));
                temp_course.setCourse_Teacher(rs.getString("Course_Teacher"));
                courseList_temp_coming.add(temp_course);
            }
        }catch(Exception e) {
            forward = "failure";
            e.printStackTrace();
        }finally {
            //DBConnection.closeDB(con, pstmt, rs);
        }
        this.setCourseList_coming(courseList_temp_coming);

        //finished

        sql = "SELECT course.* FROM user_has_course,course WHERE User_User_id =? and user_has_course.Course_Course_Id=course.Course_Id and Course_Pass=2";
        try{
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, u2_id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                temp_course = new Course();
                temp_course.setCourse_Id(rs.getInt("Course_Id"));
                temp_course.setCourse_Name(rs.getString("Course_Name"));
                temp_course.setCourse_Pass(rs.getInt("Course_Pass"));
                temp_course.setCourse_Intro(rs.getString("Course_Intro"));
                temp_course.setCourse_Image(rs.getString("Course_Image"));
                temp_course.setCourse_Date(rs.getDate("Course_Date"));
                temp_course.setCourse_Teacher(rs.getString("Course_Teacher"));
                courseList_temp_finished.add(temp_course);
            }
            forward = "success";
            System.out.println("success");
        }catch(Exception e) {
            forward = "failure";
            e.printStackTrace();
        }finally {
            DBConnection.closeDB(con, pstmt, rs);
        }
        this.setCourseList_finished(courseList_temp_finished);
        return forward;
    }

    public int u2_id = 0;

    public int getU2_id() {
        return u2_id;
    }

    public void setU2_id(int u2_id) {
        this.u2_id = u2_id;
    }
}