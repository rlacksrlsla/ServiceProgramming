package koreatech.cse.domain.rest;

public class Library {
    // mysql 설정
    // NOT NULL, AUTO INCREMENT(자동증가) 설정에 따라 mysql에 데이터를 삽입

    private String name;
    private String address;
    private String phone;
    private String homepage;
    private String holiday;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getHomepage() {
        return homepage;
    }

    public void setHomepage(String homepage) {
        this.homepage = homepage;
    }

    public String getHoliday() {
        return holiday;
    }

    public void setHoliday(String holiday) {
        this.holiday = holiday;
    }


    @Override
    public String toString() {
        return "name: " + name + ", address: " + address
                + ", phone: " + phone + ", homepage: " + homepage + ", holiday: " + holiday;
    }
}

