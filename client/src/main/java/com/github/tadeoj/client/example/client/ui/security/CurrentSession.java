package com.github.tadeoj.client.example.client.ui.security;

import com.google.gwt.user.client.Cookies;

import java.util.Date;

public class CurrentSession {

    private static final String SESSION = "session";
    private static final long DURATION = 1000 * 60 * 60 * 24;

    private String session = null;
    
    public String getSession() {
        if (session != null) {
            return session;
        } else {
            String cookie = getCookie();

            if (cookie != null) {
                session = cookie;
            }

            return session;
        }
    }

    public void setSession(String session) {
        setCookie(SESSION, session);
        this.session = session;
    }

    private void setCookie(String name, String value) {
        Cookies.setCookie(name, value, new Date(System.currentTimeMillis() + DURATION), null, "/", false);
    }

    private String getCookie() {

        String cookie = Cookies.getCookie(SESSION);

        if (cookie == null || cookie.equals("undefined") || cookie.equals("")) {
            return null;
        } else {
            return cookie;
        }
    }

    public void removeSession() {
        Cookies.removeCookie(SESSION);
        session = null;
    }

}
