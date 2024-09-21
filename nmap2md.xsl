<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Output method for plain text (Markdown) -->
    <xsl:output method="text" />

    <!-- Main Template -->
    <xsl:template match="/nmaprun">
        <!-- Loop through each host -->
        <xsl:for-each select="host">
            <xsl:text>### TCP&#10;&#10;- Target: `</xsl:text>
            <xsl:value-of select="hostnames/hostname/@name" />
            <xsl:if test="hostnames/hostname"><xsl:text> </xsl:text></xsl:if>
            <xsl:value-of select="address/@addr" />
            <xsl:text>`&#10;</xsl:text>
            <xsl:text>- Command: `</xsl:text>
            <xsl:value-of select="/nmaprun/@args" />
            <xsl:text>&#10;&#10;</xsl:text>

            <!-- Loop through each port -->
            <xsl:for-each select="ports/port">
                <xsl:text>#### </xsl:text>
                <xsl:value-of select="@portid" />
                <xsl:text>/</xsl:text>
                <xsl:value-of select="@protocol" />
                <xsl:text>-</xsl:text>
                <xsl:value-of select="service/@name" />

                <!-- Display product and version, if available -->
                <xsl:if test="service/@product">
                    <xsl:text> `</xsl:text>
                    <xsl:value-of select="service/@product" />
                    <xsl:text>`</xsl:text>
                </xsl:if>
                <xsl:if test="service/@version">
                    <xsl:text> `</xsl:text>
                    <xsl:value-of select="service/@version" />
                    <xsl:text>`</xsl:text>
                </xsl:if>
                <xsl:if test="service/@extrainfo">
                    <xsl:text> `(</xsl:text>
                    <xsl:value-of select="service/@extrainfo" />
                    <xsl:text>)`</xsl:text>
                </xsl:if>

                <xsl:text>&#10;&#10;</xsl:text>

                <!-- Script output (if any) -->
                <xsl:if test="script">
                  <xsl:text>```</xsl:text>
                </xsl:if>
                <xsl:for-each select="script">
                  <xsl:text>&#10;__</xsl:text>
                  <xsl:value-of select="@id" /><xsl:text>:&#10;</xsl:text>
                  <!-- Call recursive template to remove leading newlines -->
                  <xsl:call-template name="strip-leading-newlines">
                    <xsl:with-param name="text" select="@output" />
                  </xsl:call-template>

                </xsl:for-each>
                <xsl:if test="script">
                  <xsl:text>&#10;```&#10;&#10;</xsl:text>
                </xsl:if>

            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- Recursive template to strip leading newlines -->
    <xsl:template name="strip-leading-newlines">
        <xsl:param name="text" />
        <xsl:choose>
            <!-- If the first character is a newline, strip it recursively -->
            <xsl:when test="starts-with($text, '&#10;')">
                <xsl:call-template name="strip-leading-newlines">
                    <xsl:with-param name="text" select="substring($text, 2)" />
                </xsl:call-template>
            </xsl:when>
            <!-- Otherwise, output the string as-is -->
            <xsl:otherwise>
                <xsl:value-of select="$text" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
