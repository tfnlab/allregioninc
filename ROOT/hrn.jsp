<%@ page import="java.io.*, java.net.*" %>

<%
  // Get the map of all of the request parameters and their values
  Map<String, String[]> parameterMap = request.getParameterMap();

  // Set up the URL and the connection to the target site
  URL url = new URL("https://homerenovationnation.com/api/signin.jsp");
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
  StringBuilder postData = new StringBuilder();
  for (Map.Entry<String, String[]> entry : parameterMap.entrySet()) {
      String parameter = entry.getKey();
      String[] values = entry.getValue();
      for (String value : values) {
          postData.append(parameter).append("=").append(value).append("&");
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
  StringBuilder response = new StringBuilder();
  while ((line = reader.readLine()) != null) {
      response.append(line);
  }

  // Close the input stream
  inputStream.close();

  // Print the response from the server
  out.println(response.toString());
%>
