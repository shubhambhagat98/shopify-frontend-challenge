package com.shopify.shopifyfrontend;

import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.StandardCharsets;


@WebServlet(name = "shopify-frontend", value = "/shopify-frontend")
public class ShopifyFrontend extends HttpServlet {

    private String apiEndpoint;
    public void init() {
        apiEndpoint = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=14&api_key="+System.getenv("NASA_API_KEY");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        try {
            URL url = new URL(apiEndpoint);
            JSONObject json = new JSONObject(IOUtils.toString(url, StandardCharsets.UTF_8));
            JSONArray jsonArray = json.getJSONArray("photos");
            request.setAttribute("photoObject", jsonArray);
            request.getRequestDispatcher("marsrover.jsp").forward(request, response);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
