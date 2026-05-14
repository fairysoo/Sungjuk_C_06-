```mermaid
graph LR
    %% 액터 설정
    Professor["교수 (Actor)"]

    %% 유스케이스 (시스템 경계 내 기능)
    subgraph "성적 관리 시스템"
        UC1["성적입력"]
        UC2["학점조회"]
        UC3["교수체크"]
    end

    %% 관계 설정
    Professor --- UC1
    Professor --- UC2

    %% 포함 관계 (Include) 표현
    UC1 -.->|"&lt;&lt;include&gt;&gt;"| UC3
    UC2 -.->|"&lt;&lt;include&gt;&gt;"| UC3