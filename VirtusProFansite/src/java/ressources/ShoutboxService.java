/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ressources;

import java.util.List;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import model.Shoutbox;
import model.ShoutboxMessage;
/**
 *
 * @author spejs
 */
@Path("shoutbox")
public class ShoutboxService {
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public List<ShoutboxMessage> getMessages(){
        return Shoutbox.getMessages();
    }
    
    @POST
    @Produces({MediaType.APPLICATION_JSON})
    @Consumes({MediaType.APPLICATION_JSON})
    public ShoutboxMessage addMessage(ShoutboxMessage msg){
        Shoutbox.add(msg);
        return Shoutbox.getLastMessage();
    }
}
