<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.apache.pdfbox.pdmodel.PDDocument" %>
<%@ page import="org.apache.pdfbox.pdmodel.PDPage" %>
<%@ page import="org.apache.pdfbox.pdmodel.PDPageContentStream" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="pdf-content">
        <h1>Hello PDF!</h1>
        <p>This is an example PDF generated using JSP and PDFBox.</p>
    </div>
    
    <% 
        // Generate PDF using PDFBox
        PDDocument document = new PDDocument();
        PDPage page = new PDPage();
        document.addPage(page);

        PDPageContentStream contentStream = new PDPageContentStream(document, page);
        contentStream.beginText();
        contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
        contentStream.newLineAtOffset(100, 700); // Set starting position
        contentStream.showText("Hello PDFBox!");
        contentStream.endText();
        contentStream.close();

        // Save PDF to a file or send it as a response
        document.save("output.pdf");
        document.close();
    %>
</body>
</html>
