```mermaid 
classDiagram
    class 교수 {
        -String 교수id
        +교수체크(String 입력id) boolean
    }

    class 성적 {
        -String 학생id
        -int 총점
        -double 평균
        -String 학점
        +성적입력(String 학생id, int 자바, int DB, int 보안)
        +학점조회() String
        -총점계산()
        -평균계산()
        -학점결정() String
    }

    class 입력_화면_jsp {
        <<Boundary>>
        +입력값_시뮬레이션()
        +교수체크_요청()
        +성적입력_요청()
    }

    class 조회_화면_jsp {
        <<Boundary>>
        +조회요청_시뮬레이션()
        +교수체크_요청()
        +학점조회_요청()
    }

    %% 관계 설정
    입력_화면_jsp ..> 교수 : 인증 요청
    입력_화면_jsp ..> 성적 : 데이터 저장
    조회_화면_jsp ..> 교수 : 인증 요청
    조회_화면_jsp ..> 성적 : 데이터 조회
    교수 "1" -- "0..*" 성적 : 평가관리