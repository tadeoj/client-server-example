package com.github.tadeoj.client.example.server.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

public class RedirectFilter implements Filter {

  private ServletContext context;

  @Override
  public void init(FilterConfig filterConfig) throws ServletException {
    this.context = filterConfig.getServletContext();
    this.context.log("RedirectFilter initialized");
  }

  @Override
  public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

    HttpServletRequest request = (HttpServletRequest) servletRequest;
    HttpServletResponse response = (HttpServletResponse) servletResponse;

    response.setHeader("Access-Control-Allow-Origin", "*");

    String uri = request.getRequestURI();
    this.context.log("Requested Resource: " + uri);
    this.context.log("context.getContextPath(): " + this.context.getContextPath());
    this.context.log("context.getServletContextName(): " + this.context.getServletContextName());

    if (isInitialRequest(uri)) {
      StringBuilder sbUrl = new StringBuilder();
      sbUrl.append(request.getContextPath())
           .append("/index.html");
      sbUrl.append("?");
      if (!Objects.isNull(request.getQueryString())) {
        sbUrl.append(request.getQueryString())
             .append("&");
      }
      sbUrl.append("uri=")
           .append(request.getRequestURI());
      this.context.log(sbUrl.toString());
      response.sendRedirect(sbUrl.toString());

    } else {
      filterChain.doFilter(request,
                           response);
    }
  }

  @Override
  public void destroy() {
  }

  private boolean isInitialRequest(String uri) {
    if (uri.endsWith(".css")) {
      return false;
    }
    if (uri.endsWith(".js")) {
      return false;
    }
    if (uri.endsWith(".html")) {
      return false;
    }
    if (uri.endsWith(".ttf")) {
      return false;
    }
    if (uri.endsWith(".woff")) {
      return false;
    }
    if (uri.endsWith(".woff2")) {
      return false;
    }
    if (uri.endsWith(".ico")) {
      return false;
    }
    if (uri.endsWith(".png")) {
      return false;
    }
    return true;
  }

}
