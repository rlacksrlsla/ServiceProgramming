package koreatech.cse.domain.rest;

public class Event{
    // mysql 설정
    // NOT NULL, AUTO INCREMENT(자동증가) 설정에 따라 mysql에 데이터를 삽입

    private String name;
    private String code;
    private String begindate;
    private String enddate;
    private String place;

    public String getName() {return name;}

    public void setName(String name) { this.name = name;}

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getBegindate() {
        return begindate;
    }

    public void setBegindate(String begindate) {
        this.begindate = begindate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }


    public String getPlace() {return place;}

    public void setPlace(String place) {
        this.place = place;
    }

    @Override
    public String toString() {
        return "";
    }
}

