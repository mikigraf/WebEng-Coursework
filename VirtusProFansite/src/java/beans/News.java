package beans;


import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author spejs
 */
public class News implements Serializable{

    public News(String title, String author, String category, String news, String email) {
        this.id = UUID.randomUUID();
        this.title = title;
        this.author = author;
        this.date = new SimpleDateFormat("dd.MM.yyyy HH:mm").format(new Date());
        this.category = category;
        this.news = news;
        this.email = email;
    }
    private UUID id;
    private String title;
    private String author;
    private String date;
    private String category;
    private String news;
    private String email; 
    
    public News(){
        
    }
    
    public String getID()
    {
        return id.toString();
    }
    
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getNews() {
        return news;
    }

    public void setNews(String news) {
        this.news = news;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPreview(int characters){
        if(characters < news.length()){
           return news.substring(0, characters); 
        }else{
            return "";
        }
    }
    
}
