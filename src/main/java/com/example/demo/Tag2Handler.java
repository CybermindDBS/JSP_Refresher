package com.example.demo;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.IterationTag;
import javax.servlet.jsp.tagext.Tag;

public class Tag2Handler implements IterationTag {
    int iteration, tmp = 0;
    char aChar;

    public int getIteration() {
        return iteration;
    }

    public void setIteration(int iteration) {
        this.iteration = iteration;
    }

    public char getaChar() {
        return aChar;
    }

    public void setaChar(char aChar) {
        this.aChar = aChar;
    }

    @Override
    public void setPageContext(PageContext pageContext) {

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
        if (tmp == iteration) return SKIP_BODY;
        else {
            tmp++;
            return EVAL_BODY_INCLUDE;
        }
    }

    @Override
    public int doAfterBody() throws JspException {
        if (tmp < iteration) {
            tmp++;
            return EVAL_BODY_AGAIN;
        } else return SKIP_BODY;
    }

    @Override
    public int doEndTag() throws JspException {
        tmp = 0;
        return EVAL_PAGE;
    }

    @Override
    public void release() {

    }
}
