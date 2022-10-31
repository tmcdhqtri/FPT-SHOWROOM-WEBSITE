/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Blog {
    private String blogID;
    private String namePost;
    private String datePost;
    private String imageURL;
    private String title;
    private String description;

    public Blog() {
    }

    public Blog(String blogID, String namePost, String datePost, String imageURL, String title, String description) {
        this.blogID = blogID;
        this.namePost = namePost;
        this.datePost = datePost;
        this.imageURL = imageURL;
        this.title = title;
        this.description = description;
    }

    public String getBlogID() {
        return blogID;
    }

    public void setBlogID(String blogID) {
        this.blogID = blogID;
    }

    public String getNamePost() {
        return namePost;
    }

    public void setNamePost(String namePost) {
        this.namePost = namePost;
    }

    public String getDatePost() {
        return datePost;
    }

    public void setDatePost(String datePost) {
        this.datePost = datePost;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Blog{" + "blogID=" + blogID + ", namePost=" + namePost + ", datePost=" + datePost + ", imageURL=" + imageURL + ", title=" + title + ", description=" + description + '}';
    }
    
    
    
   
}
