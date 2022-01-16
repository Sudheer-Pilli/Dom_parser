<?xml version="1.1" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>placement Man</title>
            <style>
                @font-face {
                    font-family: 'Montserrat';
                    src: url("../frontend/font/Montserrat-Regular.ttf");
                }
                *{
                    margin: 0;
                    padding: 0;
                }
                body{
                    background-color: #f9f9f9;
                    font-family: 'Montserrat';
                }
                h1{
                    text-align: center;
                    color: white;
                    background-color: #333333;
                    padding:1%;
                }
                h2{
                    margin:2% 5%;
                }
                table{
                    background-color: #e3e3e3;
                    margin:2% 5%;
                    width:90%;
                }
                td, th{
                    text-align:left;
                    padding:2%;
                }
            </style>
        </head>
        <body>
            <h1>Employee Management System</h1> 
            <h2>Employee Details</h2>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Salary</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Designation</th>
                    <th>Promotion</th>

                </tr>
                <xsl:for-each select="Company/Employee_details">
                <xsl:sort select="name"/>
                <xsl:choose>
                    <xsl:when test="Age &gt; 50">
                        <tr>
                        
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="Age"/></td>
                            <td><xsl:value-of select="Salary"/></td>
                            <td><xsl:value-of select="email"/></td>
                            <td><xsl:value-of select="PhoneNo"/></td>
                            <td><xsl:value-of select="Designation"/></td>
                            <td><xsl:value-of select="promotion"/></td>
                        </tr>
                    </xsl:when>
                    <xsl:when test="Age &gt; 40">
                        <tr>
                        
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="Age"/></td>
                            <td><xsl:value-of select="Salary"/></td>
                            <td><xsl:value-of select="email"/></td>
                            <td><xsl:value-of select="PhoneNo"/></td>
                            <td><xsl:value-of select="Designation"/></td>
                            <td><xsl:value-of select="promotion"/></td>
                        </tr>
                    </xsl:when>
                    <xsl:when test="Age &gt; 21">
                        <tr>
                        
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="Age"/></td>
                            <td><xsl:value-of select="Salary"/></td>
                            <td><xsl:value-of select="email"/></td>
                            <td><xsl:value-of select="PhoneNo"/></td>
                            <td><xsl:value-of select="Designation"/></td>
                            <td><xsl:value-of select="promotion"/></td>
                        </tr>
                    </xsl:when>
                    <xsl:otherwise>
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="Age"/></td>
                            <td><xsl:value-of select="Salary"/></td>
                            <td><xsl:value-of select="email"/></td>
                            <td><xsl:value-of select="PhoneNo"/></td>
                            <td><xsl:value-of select="Designation"/></td>
                        </tr>
                    </xsl:otherwise>
                </xsl:choose>
                </xsl:for-each>
            </table>
            
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
