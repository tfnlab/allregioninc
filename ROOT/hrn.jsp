<%@ page import="java.util.*,java.io.*, java.net.*" %>
<%@ page import="java.net.URLEncoder" %>
<%
  // Get the map of all of the request parameters and their values
  Map<String, String[]> parameterMap = request.getParameterMap();

  // Set up the URL and the connection to the target site
  URL url = new URL("https://homerenovationnation.com/api/rh.jsp");
  HttpURLConnection connection = (HttpURLConnection) url.openConnection();

  // Set the request method to POST
  connection.setRequestMethod("POST");

  // Set the content type to application/x-www-form-urlencoded
  connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");

  // Enable output for the connection
  connection.setDoOutput(true);

  // Set up the output stream for the connection
  OutputStream outputStream = connection.getOutputStream();
  OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream);

  // Iterate through the request parameters and add them to the POST data

  String postData = "";
  for (Map.Entry<String, String[]> entry : parameterMap.entrySet()) {
      String parameter = entry.getKey();
      String[] values = entry.getValue();
      for (String value : values) {
          postData += value + "=" + URLEncoder.encode(parameter, "UTF-8") + "&";
      }
  }

  // Write the POST data to the output stream
  outputStreamWriter.write(postData.toString());
  outputStreamWriter.flush();

  // Close the output stream
  outputStream.close();

  // Get the response from the server
  int responseCode = connection.getResponseCode();
  String responseMessage = connection.getResponseMessage();

  // Set up the input stream for reading the response
  InputStream inputStream = connection.getInputStream();
  InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
  BufferedReader reader = new BufferedReader(inputStreamReader);

  // Read the response from the server
  String line;
  StringBuilder responseStr = new StringBuilder();
  while ((line = reader.readLine()) != null) {
      responseStr.append(line);
  }

  // Close the input stream
  inputStream.close();

  out.println(postData.toString());
  // Print the response from the server
  out.println(responseStr.toString());
%>
