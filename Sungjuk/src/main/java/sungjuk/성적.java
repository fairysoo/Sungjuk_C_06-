package sungjuk;

public class 성적 {
    private String 학생id;
    private int 자바;
    private int DB;
    private int 보안;
    private int 총점;
    private double 평균;
    private String 학점;

    // 성적입력(교수id, 학생id, 자바, DB, 보안)
    public void 성적입력(String 학생id, int 자바, int DB, int 보안) {
        this.학생id = 학생id;
        this.자바 = 자바;
        this.DB = DB;
        this.보안 = 보안;
        
        총점계산();
        평균계산();
        this.학점 = 학점결정();
    }

    private void 총점계산() {
        this.총점 = this.자바 + this.DB + this.보안;
    }

    private void 평균계산() {
        this.평균 = this.총점 / 3.0;
    }

    private String 학점결정() {
        if (평균 >= 90) return "A";
        else if (평균 >= 80) return "B";
        else if (평균 >= 70) return "C";
        else return "F";
    }

    public String 학점조회() {
        return String.format("학생ID: %s, 총점: %d, 평균: %.2f, 학점: %s", 
                              학생id, 총점, 평균, 학점);
    }
}