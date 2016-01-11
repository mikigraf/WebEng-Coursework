/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author spejs
 */
public class Shoutbox {
    private static List<ShoutboxMessage> listOfMessages = Collections.synchronizedList(new LinkedList<>());
    
    
    public static void add(ShoutboxMessage msg){
        listOfMessages.add(msg);
    }
    
    public static List<ShoutboxMessage> getMessages(){
        return listOfMessages;
    }
    
    public static ShoutboxMessage getLastMessage(){
        return (listOfMessages.size() > 0) ? listOfMessages.get(listOfMessages.size() - 1) : null;
    }
    
    public static int getSize(){
        return listOfMessages.size();
    }
}
