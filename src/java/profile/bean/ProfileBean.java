package profile.bean;

import java.io.Serializable;

public class ProfileBean implements Serializable {

    private String name, nickname, birthday, gender;
    private String studentID, program, pastEdu;
    private String email, phone;
    private String hobbies, favorite, favSinger, pet;
    private String intro;

    public ProfileBean() {}

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getNickname() { return nickname; }
    public void setNickname(String nickname) { this.nickname = nickname; }

    public String getBirthday() { return birthday; }
    public void setBirthday(String birthday) { this.birthday = birthday; }

    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }

    public String getStudentID() { return studentID; }
    public void setStudentID(String studentID) { this.studentID = studentID; }

    public String getProgram() { return program; }
    public void setProgram(String program) { this.program = program; }

    public String getPastEdu() { return pastEdu; }
    public void setPastEdu(String pastEdu) { this.pastEdu = pastEdu; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getHobbies() { return hobbies; }
    public void setHobbies(String hobbies) { this.hobbies = hobbies; }

    public String getFavorite() { return favorite; }
    public void setFavorite(String favorite) { this.favorite = favorite; }

    public String getFavSinger() { return favSinger; }
    public void setFavSinger(String favSinger) { this.favSinger = favSinger; }

    public String getPet() { return pet; }
    public void setPet(String pet) { this.pet = pet; }

    public String getIntro() { return intro; }
    public void setIntro(String intro) { this.intro = intro; }
}
