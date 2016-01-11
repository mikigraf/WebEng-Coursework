/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import beans.News;
import com.sun.glass.ui.Application;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author spejs
 */
public class NewsModel {
    public static ArrayList<News> listOfNews = new ArrayList<News>();

    public ArrayList<News> getListOfNews() {
        return listOfNews;
    }
   
    public boolean isInList(News news){
        for(News n : listOfNews){
            if(n.getID().equals(news.getID())){
                return true;
            }
        }
        return false;
    }
    
    public static synchronized News getNews(String id){
        for(News n : listOfNews){
            if(n.getID().equals(id)){
                return n;
            }
        }
        return null;
    }
    
    public static List<News> getNews()
    {
        return listOfNews;
    }
    
    public int getPosition(News news){
        return listOfNews.indexOf(news);
    }
    
    public static synchronized void addNews(News news){
        listOfNews.add(news);
    }
    
    public NewsModel(){
        
    }
    
    public static synchronized News getLastNews(){
        return listOfNews.get(listOfNews.size()-1);
    }
    
}
