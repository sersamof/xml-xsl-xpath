<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../xsl/output/html.xsl"/>
    <xsl:import href="../xsl/layout/html-layout.xsl"/>
    <xsl:import href="../xsl/repository/title.xsl"/>
    <xsl:import href="../xsl/pull-request/list.xsl"/>

    <xsl:template match="/">
        <xsl:apply-templates select="/doc" mode="layout"/>
    </xsl:template>

    <xsl:template match="/doc" mode="page-title">
        <xsl:value-of select="@title"/>
    </xsl:template>

    <xsl:template match="/doc" mode="page-content">
        <div class="container">
            <h2>
                <xsl:apply-templates select="repository" mode="repository-name"/>
            </h2>
            <xsl:apply-templates select="repository/pullRequests"/>
        </div>
    </xsl:template>

</xsl:stylesheet>
