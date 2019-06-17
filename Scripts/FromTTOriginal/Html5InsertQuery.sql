USE [frienzff_Mixup]
GO
/****** Object:  Table [dbo].[TechnologyContents]    Script Date: 06/16/2019 18:39:57 ******/
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a3b70ca3-3873-4339-96db-079f25de105e', N'DOCTYPE declaration for HTML5', N'The <!DOCTYPE> declaration must be the very first thing in your HTML document, before the <html> tag.
The <!DOCTYPE> declaration is not an HTML tag; it is an instruction to the web browser about what version of HTML the page is written in.
In HTML 4.01, the <!DOCTYPE> declaration refers to a DTD, because HTML 4.01 was based on SGML. The DTD specifies the rules for the markup language, so that the browsers render the content correctly.
HTML5 is not based on SGML, and therefore does not require a reference to a DTD.
', N'<!DOCTYPE html> ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd3e0a0d3-44c4-49f1-b50d-0b2fbc1dac78', N'SVG', N'SVG stands for Scalable Vector Graphics
SVG is used to define graphics for the Web
SVG is a W3C recommendation

The HTML <svg> element is a container for SVG graphics.
SVG has several methods for drawing paths, boxes, circles, text, and graphic images.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dd93661a-e3f2-4eeb-8ed6-0bb86858c796', N'HTML5 Browser Support', N'HTML5 defines eight new semantic elements. All these are block-level elements.', N'
To secure correct behavior in older browsers, you can set the CSS display property for these HTML elements to block:
header, section, footer, aside, nav, main, article, figure {
    display: block; 
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a7335110-e10a-459c-a05f-195733eb8217', N'<abbr>', NULL, N'The <abbr title="World Health Organization">WHO</abbr> was founded in 1948.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b11ae7ca-413e-4dc6-90ff-1aeecef9f410', N'The default character encoding in HTML5 is UTF-8.', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a3f52a9b-9258-4bf1-b2b3-1e8defbf466b', N'character encoding (charset) declaration ', N'<metacharset="UTF-8"> ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9fed02e4-f1bc-4d29-9f01-21dc9eec5e67', N'<embed> Element', N'The <embed> element is supported in all major browsers.
The <embed> element also defines an embedded object within an HTML document.
Web browsers have supported the <embed> element for a long time. However, it has not been a part of the HTML specification before HTML5.
', N'<embed width="400" height="50" src="bookmark.swf">
<embed width="100%" height="500px" src="snippet.html">
<embed src="audi.jpeg">
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'07f0e901-ab15-419d-a48d-233eb81df0ba', N'novalidate Attribute', N'The novalidate attribute is a <form> attribute
 
When present, novalidate specifies that form data should not be validated when submitted
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1271f6e4-e41d-4380-9361-2343d9919125', N'empty', N'You can add any new element to HTML with a browser trick', N'<html>

<head>
  <title>Creating an HTML Element</title>
  <script>document.createElement("myHero")</script>
  <style>
  myHero {
    display: block;
    background-color: #ddd;
    padding: 50px;
    font-size: 30px;
  } 
  </style> 
</head>

<body>

<h1', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'56752b1d-8bbc-4c6f-bbba-25878932d6be', N'SGML (Standard Generalized Markup Language) ', N'is a standard for how to specify a document markup language or tag set. Such a specification is itself a document type definition (DTD).', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e3ac068c-6e13-423d-b19d-274e2f296c85', N'empty', N'The controls attribute adds video controls, like play, pause, and volume.
It is a good idea to always include width and height attributes. If height and width are not set, the page might flicker while the video loads.
The <source> element allows you to specify alternative video files which the browser may choose from. The browser will use the first recognized format.
The text between the <video> and </video> tags will only be displayed in browsers that do not support the <video> element.

', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8b3aea42-0ce8-43a1-a3a2-2df9da606e82', N'Drag and Drop', N'<!DOCTYPE HTML>
<html>
<head>
<script>
function allowDrop(ev) {
    ev.preventDefault();
}
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ca4f8fb9-118c-40f8-ae79-362a16e2c4e4', N'New Attribute Syntax', N'Type                                                    Example
Empty                          <input type="text" value="John Doe" disabled>
Unquoted                    <input type="text" value=John>
Double-quoted         <input type="text" value="John Doe">
Single-quoted             <input type="text" value=''John Doe''>', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a7933842-ef1f-4213-b6fc-37a872749aca', N'New Form Elements', N'<datalist> Defines pre-defined options for input controls
<keygen> Defines a key-pair generator field (for forms)
<output> Defines the result of a calculation', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7b8b3f3c-f251-4d6d-8aff-43e28fd80147', N'The EventSource Object', N'A  server-sent event is when a web page automatically gets updates from a server.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1646e10b-9ccc-400a-8c21-447e8e31653a', N'Videos', N'Before HTML5, a video could only be played in a browser with a plug-in (like flash).
The HTML5 <video> element specifies a standard way to embed a video in a web page.
', N'
<video width="320" height="240" controls>
  <source src="movie.mp4" type="video/mp4">
  <source src="movie.ogg" type="video/ogg">
    Your browser does not support the video tag.
</video>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9deb92a0-6ffa-426c-910f-4d30c9c101cd', N'Comparison of Canvas and SVG', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7bbaf1c9-87e2-4a56-9331-64febdeca9e5', N'empty', N'function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
}
</script>
</head>
<body>
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6212ba48-5bd1-4036-9901-6593c0e01c97', N'empty', N'Example Explained
The mapOptions variable defines the properties for the map.
The center property specifies where to center the map (using latitude and longitude coordinates).
The zoom property specifies the zoom level for the map (try to experiment with the zoom level).
The mapTypeId property specifies the map type to display. The following map types are supported: ROADMAP, SATELLITE, HYBRID, and TERRAIN.
The line: var map=new google.maps.Map(document.getElementById("map"), mapOptions); creates a new map inside the <div> element with id="map", using the parameters that are passed (mapOptions).
e.g
', N'var map = new google.maps.Map(document.getElementById("map"), mapOptions);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'480b43bc-d33a-42e6-b980-6f0215eb8e00', N'<address>', N'<address> tag defines the contact information for the author/owner of a document or an article.', N'<address>
 Written by <a href="mailto:webmaster@example.com">Jon Doe</a>.<br> 
</address> ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'41627011-cf68-4978-9c0a-75a752ee3217', N'autofocus Attribute', N'The autofocus attribute is a boolean attribute.
 
When present, it specifies that an <input> element should automatically get focus when the page loads.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'26cb896a-519a-48bf-ad21-813918fd5ebc', N'Canvas', N'SVG', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'719fc80f-ea9b-4875-8cd4-877125540493', N'<tt>', N'Define teletype text', N'<p><tt>Teletype text</tt></p>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'987d4e39-2ad9-4a24-b3a0-87ce801d83ed', N'formmethod Attribute', N'The formmethod attribute defines the HTTP method for sending form-data to the action URL.
 
The formmethod attribute overrides the method attribute of the <form> element.
 
The formmethod attribute can be used with type="submit" and type="image".
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'37e2d156-7b5e-424b-a239-9969a15ad63b', N'New Input Types', N'color
date
datetime
datetime-local
email
month
number
range
search
tel
time
url
week', N'input type="number"
input type="email"
input type="url"
input type="color"
input type="search"
input type="date"', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7b6a5e56-0f47-48c5-b69a-a01d4b11d235', N'Canvas', N'
The HTML <canvas> element is used to draw graphics, on the fly, via JavaScript.
The <canvas> element is only a container for graphics. You must use JavaScript to actually draw the graphics.
Canvas has several methods for drawing paths, boxes, circles, text, and adding images.
', N'<canvas id="myCanvas" width="200" height="100" style="border:1px solid #000000;">
</canvas>
JS:
var c = document.getElementById("myCanvas");
var ctx = c.getContext("2d");
ctx.moveTo(0, 0);
ctx.lineTo(200, 100);
ctx.stroke();', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f62940ae-ee6d-497f-836e-a41c21f16923', N'empty', NULL, N'
Difference Between <article> <section> and <div>
the <section> element is defined as a block of related elements.
The <article> element is defined as a complete, self-contained block of related elements.
he <div> element is defined as a block of children', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd528fdc0-e712-40e8-90dd-ade39d7804b7', N'<wbr>', N'The <wbr> (Word Break Opportunity) tag specifies where in a text it would be ok to add a line-break', N'<p>
 To learn AJAX, you must be familiar with the XML<wbr>Http<wbr>Request Object.
</p> ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'60a9204d-9942-4689-96a9-b1fdb1571795', N'empty', NULL, N'<article> Defines an article in the document
<aside> Defines content aside from the page content
<bdi> Defines a part of text that might be formatted in a different direction from other text
<details> Defines additional details that the user can view or h', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'55ea3801-e48e-4e96-9e82-b40c0a89be1b', N'What are “web workers”?', N'A web worker is a script that runs in the background (i.e., in another thread) without the page needing to wait for it to complete. The user can continue to interact with the page while the web worker runs in the background. Workers utilize thread-like message passing to achieve parallelism.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'96e1b1c0-1ff4-438c-9c78-bdd69fa95771', N'Google Maps', N'Google Maps allows you to display maps on your web page', N'<!DOCTYPE html>
<html>
<body>

<h1>My First Google Map</h1>

<div id="map" style="width:400px;height:400px;background:yellow"></div>
<script>
function myMap() {
var mapOptions = {
    center: new google.maps.LatLng(51.5, -0.12),
    zoom: 10,
    mapTypeI', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b97aed68-22ca-4350-a1a7-c0260e74d43b', N'<progress>', NULL, N'<progress value="22" max="100"></progress> ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'24398d47-f677-4ef1-89f0-c102997a7576', N'Differences Between SVG and Canvas', N'
SVG is a language for describing 2D graphics in XML.
Canvas draws 2D graphics, on the fly (with a JavaScript).
SVG is XML based, which means that every element is available within the SVG DOM. You can attach JavaScript event handlers for an element.
In SVG, each drawn shape is remembered as an object. If attributes of an SVG object are changed, the browser can automatically re-render the shape.
Canvas is rendered pixel by pixel. In canvas, once the graphic is drawn, it is forgotten by the browser. If its position should be changed, the entire scene needs to be redrawn, including any objects that might have been covered by the graphic.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9d09d8b8-f05c-4ae6-8eb9-c1f685a257cc', N'Resolution dependent
No support for event handlers
Poor text rendering capabilities
You can save the resulting image as .png or .jpg
Well suited for graphic-intensive games
', N'Resolution independent
Support for event handlers
Best suited for applications with large rendering areas (Google Maps)
Slow rendering if complex (anything that uses the DOM a lot will be slow)
Not suited for game applications
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4bc3a856-30a8-439d-92ea-c34aba32e9b5', N'New Media Elements', N'<audio> Defines sound or music content
<embed> Defines containers for external applications (like plug-ins)
<source> Defines sources for <video> and <audio>
<track> Defines tracks for <video> and <audio>
<video> Defines video or movie content', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'61e44f58-a1ff-43d5-8e90-cd83c3cdce68', N'Custom Attributes:', N'A custom data attribute starts with data- and would be named based on your requirement. ', N'<div class="example" data-subject="physics" data-level="complex">
...
</div>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bb03ec32-8e2d-4359-901a-d253880bc7aa', N'HTML Web Storage', N'With web storage, web applications can store data locally within the user''s browser.
Before HTML5, application data had to be stored in cookies, included in every server request. Web storage is more secure, and large amounts of data can be stored locally, without affecting website performance.
Unlike cookies, the storage limit is far larger (at least 5MB) and information is never transferred to the server.
Web storage is per origin (per domain and protocol). All pages, from one origin, can store and access the same data.

HTML web storage provides two objects for storing data on the client:', N'window.localStorage - stores data with no expiration date
window.sessionStorage - stores data for one session (data is lost when the browser tab is closed)

e.g.
localStorage.setItem("lastname", "Smith");
// Retrieve
document.getElementById("result").inne', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'aea26d2f-ab4e-4a73-a616-d655bb66f7d7', N'<details>', NULL, N'<details>
   <summary>Copyright 1999-2014.</summary>
   <p> - by Refsnes Data. All Rights Reserved.</p>
   <p>All content and graphics on this web site are the property of the company Refsnes Data.</p>
</details> ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f2a14515-a2bc-43c6-a67e-dd9d94087c97', N'New Input Attributes', N'autocomplete
autofocus
form
formaction
formenctype
formmethod
formnovalidate
formtarget
height and width
list
min and max
multiple
pattern (regexp)
placeholder
required
step', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9b0553e2-2645-498b-9917-dde1e38d3941', N'empty', NULL, N'<style>
myHero {
    display: block;
    background-color: #dddddd;
    padding: 50px;
    font-size: 30px;
}
<body>

<h1>A Heading</h1>
<myHero>My Hero Element</myHero>

</body>
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a756a302-0934-4bbf-805b-de834c9ffa1f', N'In the HTML5 standard, the <html> tag, the <body> tag, and the <head> tag can be omitted.', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0222f727-de33-494f-bb1b-e488b131bafd', N'formnovalidate Attribute', N'The novalidate attribute is a boolean attribute.
 
When present, it specifies that the <input> element should not be validated when submitted.
 
The formnovalidate attribute overrides the novalidate attribute of the <form> element.
 
The formnovalidate attribute can be used with type="submit".
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ee197927-1b95-4e95-9ebc-e691c69c759d', N'<object> Element', N'
The <object> element is supported by all browsers.
The <object> element defines an embedded object within an HTML document.
It is used to embed plug-ins (like Java applets, PDF readers, Flash Players) in web pages.', N'<object width="100%" height="500px" data="snippet.html"></object>
<object data="audi.jpeg"></object>
<object width="400" height="50" data="bookmark.swf"></object>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0e56c304-c0eb-41a3-910c-ea99b7ccfb36', N'8 new semantic HTML elements', N'header, section, footer, aside, nav, main, article, figure ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a62e6977-8d0f-4b7e-8b54-ef1fe597650f', N'<datalist>', NULL, N'<input list="browsers">

<datalist id="browsers">
   <option value="Internet Explorer">
   <option value="Firefox">
   <option value="Chrome">
   <option value="Opera">
   <option value="Safari">
</datalist> ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'57c54d54-e2fa-439f-9d71-f1d96a5a8827', N'formaction Attribute', N'The formaction attribute specifies the URL of a file that will process the input control when the form is submitted.
 
The formaction attribute overrides the action attribute of the <form> element.
 
The formaction attribute is used with type="submit" and type="image".
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8dc03ca6-ac39-4505-a927-f6b794982685', N'Using the <dialog> element:', NULL, N'<table>
<tr>
  <th>January <dialog open>This is an open dialog window</dialog></th>
  <th>February</th>
  <th>March</th>
</tr>
<tr>
  <td>31</td>
  <td>28</td>
  <td>31</td>
</tr>
</table> ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a7d16d79-0d4c-47ff-8e47-fb5da889f6f7', N'formenctype Attribute', N'The formenctype attribute specifies how the form-data should be encoded when submitting it to the server (only for forms with method="post")
 
The formenctype attribute overrides the enctype attribute of the <form> element.
 
The formenctype attribute is used with type="submit" and type="image".
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8b82b96d-c039-4533-b0f1-fde9b139eea0', N'<meter>', NULL, N'<meter value="2" min="0" max="10">2 out of 10</meter><br>
<meter value="0.6">60%</meter> ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a674cb83-59d0-4add-b58e-ff16209f8bd4', N'HTML5 Graphics', N'<canvas> Defines graphic drawing using JavaScript
<svg> Defines graphic drawing using SVG', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
