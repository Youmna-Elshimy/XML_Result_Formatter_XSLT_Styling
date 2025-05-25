<?xml version="1.0" ?>
<xsl:stylesheet
version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>

<xsl:template match="/result">

<html>
    <head>
        <title>XSLT example</title>
    </head>

    <style>
        #table
        {
            border-style: solid;
            border-color: black;
            norder-width: 1px;
            border-collapse: separate;
            border-spacing: 5px;
        }

        #table td
        {
            border-style: dashed;
            border-color: grey;
            border-width: 1px;
            padding: 10px;
        }    

        .column1
        {
            text-align: right;
            color: grey;
            font-size: 10px;
        }   
        
        .column2
        {
            text-align: left;
            color: maroon;
            font-size: 20px;
        }    

    </style>        
    
    <body>
        <h1>Exam result</h1>

        <table id = "table">
            <tr>
                <td class="column1">
                    Reference number
                </td>
                
                <td class="column2">
                    <xsl:value-of select="@ref" />
                </td>    
            </tr>  
            
            <tr>
                <td class="column1">
                    Exam number
                </td>
                
                <td class="column2">
                    <xsl:value-of select="examId" />
                </td>    
            </tr>

            <tr>
                <td class="column1">
                    Contestant number
                </td>
                
                <td class="column2">
                    <xsl:value-of select="contestantId" />
                </td>    
            </tr>

            <tr>
                <td class="column1">
                    Digital signature
                </td>
                
                <td class="column2">
                    <xsl:value-of select="digitalSignature" />
                </td>    
            </tr>

            <tr>
                <td class="column1">
                    Score
                </td>
                
                <td class="column2">
                    <xsl:value-of select="score" />
                </td>    
            </tr>

            <tr>
                <td class="column1">
                    Band
                </td>
                
                <td class="column2">
                    <xsl:value-of select="band" />
                </td>    
            </tr>
        </table>    
    </body>
</html>

</xsl:template>
</xsl:stylesheet>