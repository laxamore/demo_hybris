<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>

<template:demoPage pageTitle="${pageTitle}">
    <cms:pageSlot position="Section1" var="feature">
        <cms:component component="${feature}" />
    </cms:pageSlot>

    <div class="about-tentang">
        <cms:pageSlot position="Section2" var="feature" element="div" class="row no-margin" >
            <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
        </cms:pageSlot>
    </div>

    <div class="container about-info-1">
            <div class="row about-info-1-isi">
                <div class="col-sm-6 about-info-1-para">
                    <cms:pageSlot position="Section3A" var="feature" element="div" class="row no-margin info1" >
                        <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                    </cms:pageSlot>
                </div>
                <div class="col-sm-6 about-info-1-img">
                    <cms:pageSlot position="Section3B" var="feature" element="div" class="row no-margin info1img" >
                        <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                    </cms:pageSlot>
                </div>
            </div>
        </div>
        <div class="container about-info-2">
            <div class="row about-info-2-isi">
                <div class="col-sm-6 about-info-2-img">
                    <cms:pageSlot position="Section4A" var="feature" element="div" class="row no-margin info2img" >
                        <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                    </cms:pageSlot>
                </div>
                <div class="col-sm-6 about-info-2-para">
                    <cms:pageSlot position="Section4B" var="feature" element="div" class="row no-margin info2" >
                        <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                    </cms:pageSlot>
                </div>
            </div>
        </div>

        <div class="container about-info-3">
                <div class="row about-info-3-isi">
                    <div class="col-sm-6 about-info-3-para">
                        <cms:pageSlot position="Section5A" var="feature" element="div" class="row no-margin info3" >
                            <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                        </cms:pageSlot>
                    </div>
                    <div class="col-sm-6 about-info-3-img">
                        <cms:pageSlot position="Section5B" var="feature" element="div" class="row no-margin info3img" >
                            <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                        </cms:pageSlot>
                    </div>
                </div>
            </div>


        <div class="faq" id="faq">
                <div class="faq-head">
                    <cms:pageSlot position="Section6A" var="feature" element="div" class="row no-margin" >
                        <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                    </cms:pageSlot>
                </div>
                <div class="faq-content">
                    <div class="faq-content-row">
                        <a class="question about-collapsible">
                            <cms:pageSlot position="Section6B" var="feature" element="div" class="row no-margin" >
                                    <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                            </cms:pageSlot>
                        </a>
                        <div class="answer" id="faq0">
                            <cms:pageSlot position="Section6C" var="feature" element="div" class="row no-margin" >
                                    <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                            </cms:pageSlot>
                        </div>
                    </div>
                    <div class="faq-content-row">
                        <a class="question about-collapsible">
                            <cms:pageSlot position="Section6D" var="feature" element="div" class="row no-margin" >
                                <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                            </cms:pageSlot>
                        </a>
                        <div class="answer" id="faq1">
                            <cms:pageSlot position="Section6E" var="feature" element="div" class="row no-margin" >
                                    <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                            </cms:pageSlot>
                        </div>
                    </div>
                    <div class="faq-content-row">
                        <a class="question about-collapsible">
                            <cms:pageSlot position="Section6F" var="feature" element="div" class="row no-margin" >
                                <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                            </cms:pageSlot>
                        </a>
                        <div class="answer" id="faq2">
                            <cms:pageSlot position="Section6G" var="feature" element="div" class="row no-margin" >
                                <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                            </cms:pageSlot>
                        </div>
                    </div>
                    <div class="faq-content-row">
                        <a class="question about-collapsible">
                            <cms:pageSlot position="Section6H" var="feature" element="div" class="row no-margin" >
                                <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                            </cms:pageSlot>
                        </a>
                        <div class="answer" id="faq3">
                            <cms:pageSlot position="Section6I" var="feature" element="div" class="row no-margin" >
                                <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                            </cms:pageSlot>
                        </div>
                    </div>
                </div>
            </div>

</template:demoPage>


