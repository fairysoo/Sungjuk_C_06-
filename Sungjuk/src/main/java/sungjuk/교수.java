package sungjuk;

public class 교수 {
    private String 교수id = "inha";

    // 교수체크(입력id: String) boolean
    public boolean 교수체크(String 입력id) {
        return this.교수id.equals(입력id);
    }
}