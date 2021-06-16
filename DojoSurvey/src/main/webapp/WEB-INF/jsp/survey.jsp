<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Dojo Survey Index</title>
</head>
<body>
	<form method="post" action="/result">
        <label>Your Name: <input type="text" name="name"></label>
        <br><br>
        <label>Dojo Location: 
            <select name="location">
                <option value="Seattle">Seattle</option>
                <option value="San Jose">San Jose</option>
                <option value="Dallas">Dallas</option>
                <option value="Chicago">Chicago</option>
                <option value="Los Angeles">Los Angeles</option>
                <option value="Boise">Boise</option>
            </select>
        </label>
        <br><br>
        <label>Favorite Language: 
            <select name="language">
                <option value="Java">Java</option>
                <option value="Javascript">Javascript</option>
                <option value="Python">Python</option>
                <option value="C#">C#</option>
            </select>
        </label>
        <br><br>
        <label>Comment (optional):
        <br><br>
            <input type="text" name = "comment">
        </label>
        <button>Submit</button>
    </form>
</body>
</html>