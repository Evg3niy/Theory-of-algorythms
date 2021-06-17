<%-- 
    Document   : lab5
    Created on : 12 черв. 2021 г., 19:52:37
    Author     : Evgeniy
--%>

<%@page import="fit.knu.ist.ta2.lab5.Lab5_1"%>
<%@page import="fit.knu.ist.ta2.lab5.Lab5_1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 5</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <%! Lab5_1 lab5_1 = new Lab5_1("Giraffes"
            + " There are different kinds of animals on our planet, and all of them are very important for it. "
                + "For example, everybody knows that the sharks are dangerous for people, "
                + "but they are useful for cleaning seawater. There are two types of animals: "
                + "domestic (or pets) and wild. People keep pets in their homes. And some wild animals are very dangerous. "
                + "Domestic animals live next to people, whereas wild animals’ “homes” are forests, jungles, oceans and so on."
                + "Giraffes are very beautiful and unusual animals. They are the tallest land animals in the world. "
                + "Giraffes can reach a height of 5,5 m and a weight of 900 kg. They are famous for their long necks. "
                + "But does anybody know, that giraffes have a very long tongue? They even can clean the ears with it! "
                + "Giraffes are usually yellow or light brown with dark stains. Giraffes live in African savannas. "
                + "They can live from 20 to 30 years. It is interesting to know, that giraffes sleep only twenty minutes at a time. "
                + "They sit down on the ground and bend their long neck down."
                + "Giraffes do not hunt. They eat leaves, grass, and fruit. "
                + "Due to their long neck, they can reach the highest leaves on the trees that other animals cannot eat."
                + "You can often meet giraffes in city Zoos. They are very friendly and all the children like them");%>
            <p><b>Text:</b> <%= lab5_1.GetText()%></p>
            <form action="./lab5" method="post" class="form-inline">
                <label for="find"><b>Enter word to search for: </b></label>
                <div class="input-group">
                    <input  class="form-control" id="find" type="text" name="find"/>
                    <input class="btn btn-success" type="submit" value="Submit"/>
                </div>
                <p class="mt-3 mb-0"><b>Word number: </b><%=request.getAttribute("result")%></p>
            </form>
            <p><b>Most popular words:</b> <%= lab5_1.GetMostPopularWords()%></p>
            <p><b>Most popular sequences (4):</b>
                <%= lab5_1.MostPopularSequences(4)%></p>
    </body>
</html>
