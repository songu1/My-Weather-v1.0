package weather.weatherspring.domain;

import jakarta.persistence.*;
import org.springframework.lang.NonNull;

@Entity     // JPA가 관리하는 entity
@Table(name="userlist")
public class Member {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name="Uniq_id")
    private Long uid;
    @Column(name="User_id")
    private String id;
    private String pw;
    private String nickname;
    @Column(name="Introduction")
    private String intro;
    @Column(name="Available")
    private String avail;

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getAvail() {
        return avail;
    }

    public void setAvail(String avail) {
        this.avail = avail;
    }
}
