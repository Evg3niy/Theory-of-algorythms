<%-- 
    Document   : lab4
    Created on : 15 черв. 2021 г. 20:11:43 
    Author     : Evgeniy
--%>

<%@page import="fit.knu.ist.ta2.lab4.TextProcessor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 4</title>
       <form action="index.jsp">          
          <input type="submit" value="Home">
       </form> 
    </head>
    <style>
        body{
            font-family: Helvetica;
            background-color: #f8f9fa
        }
        h1{
            color: green;
        }
        #laba{
            border: 2px green solid;
            padding: 25px
        }
        input{
            max-width: 150px;
        }
    </style>
    <body>
        <div class="container">
            <h1 class="text-center">Lab 4</h1>
            <div class="mt-5" id="laba">
                <%! TextProcessor textProcessor = new TextProcessor("Lunches for school"
                    + " Every day in elementary school in America begins at 9.20 a.m."
                        + " Children have classes till 3.15 p.m. At 12 o’clock children have lunch. "
                        + "Many boys and girls bring their lunch from home. "
                        + "But some of them go for lunch to a school cafeteria."
                        + "Bradley prepares school lunches almost every weekday for her two children. "
                        + "Sometimes she gives the children money and they eat in the school cafeteria. "
                        + "But usually the children prefer to take a lunch from home."
                        + "This morning Mrs. Bradley is making peanut butter and cheese sandwiches, the children's favorite. "
                        + "She puts two bottles of apple juice for the children to drink. "
                        + "She is going to put the sandwiches, some cherry tomatoes and two bananas in their lunchboxes. "
                        + "The lunchbox is easy for the children to carry to school.");%>
                <p><b>Text:</b> <%= textProcessor.GetText()%></p>
                <p><b>Text:</b> <%= textProcessor.GetClearedText()%></p>
                <p><b>Number of words:</b> <%= textProcessor.GetWordsNumber()%></p>
                <p><b>Number of unique words:</b> <%= textProcessor.GetUniqueWordsNumber()%></p>
                <p><b>Most popular words (3):</b> <%= textProcessor.GetFirstNMostPopularWords(3)%></p>
                <p><b>Number of words that do not contain letter (u):</b>
                    <%= textProcessor.GetNumberOfWordsThatNotContain('u')%></p>
                <p><b>Number of words that contain 2 similar letters (2):</b>
                    <%= textProcessor.GetNumberOfWordsThatContainSimilarLetters(2)%></p>
                <p><b>Most popular sequences (3):</b>
                    <%= textProcessor.MostPopularSequences(3, 3)%></p>
            </div>
        </div>
    </body>
</html>