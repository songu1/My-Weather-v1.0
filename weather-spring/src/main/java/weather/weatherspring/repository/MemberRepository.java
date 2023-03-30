package weather.weatherspring.repository;


import weather.weatherspring.domain.Member;
import java.util.Optional;

public interface MemberRepository {

    Member save(Member member);     // 회원 저장하면 저장된 회원이 반환됨
    Optional<Member> findByUid(Long uid);
    Optional<Member> findById(String id);     // id로 회원 찾기
    Optional<Member> findByName(String nickname);   // name으로 회원찾기 - 필요할까..?

}
