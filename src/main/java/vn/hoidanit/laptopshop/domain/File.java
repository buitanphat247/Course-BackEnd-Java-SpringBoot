package vn.hoidanit.laptopshop.domain;

public class File {
    private String name, url;

    @Override
    public String toString() {
        return "File [name=" + name + ", url=" + url + "]";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
