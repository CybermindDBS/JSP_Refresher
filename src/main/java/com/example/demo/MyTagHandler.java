package com.example.demo;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;
import java.io.IOException;
import java.util.Random;

public class MyTagHandler implements Tag {
    PageContext pageContext;
    String digits;
    String msg = "";

    public String getDigits() {
        return digits;
    }

    public void setDigits(String digits) {
        this.digits = digits;
    }

    @Override
    public void setPageContext(PageContext pageContext) {
        this.pageContext = pageContext;
    }

    @Override
    public void setParent(Tag tag) {

    }

    @Override
    public Tag getParent() {
        return null;
    }

    @Override
    public int doStartTag() throws JspException {
        Random random = new Random();
        msg = "";
        for (int i = 0; i < Integer.parseInt(digits); i++) {
            msg += random.nextInt(9);
        }
        return EVAL_BODY_INCLUDE;
    }

    @Override
    public int doEndTag() throws JspException {
        try {
            pageContext.getOut().println(msg);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return EVAL_PAGE;
    }

    @Override
    public void release() {

    }
}