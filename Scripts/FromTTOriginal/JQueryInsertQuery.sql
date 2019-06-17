USE [frienzff_Mixup]
GO
/****** Object:  Table [dbo].[TechnologyContents]    Script Date: 06/16/2019 18:27:49 ******/
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'62f3abb5-795e-4a5a-8f6e-03e820fa0ad4', N'JSON', N'JSON: JavaScript Object Notation.

JSON is a syntax for storing and exchanging data.

JSON is an easier to use alternative to XML.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fce86990-c6ac-485f-8451-07eb280f4f9e', N'Difference between bind(),', NULL, N'http://www.codeproject.com/Articles/662949/Differences-Among-Bind-Live-Delegate-Trigger-in-jQ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b559082b-afb8-4471-8370-0bb062bf9bcf', N'Use of "strict"', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9d880b31-7ce6-4899-bb04-0e1bef6c1bf7', N'7) Explain bind() vs live() vs delegate() methods', N'The bind() method will not attach events to those elements which are added after DOM is loaded while live() and delegate() methods attach events to the future elements also.
-The difference between live() and delegate() methods is live() function will not', N'$(document).ready(function(){
$("#myTable").find("tr").live("click",function(){
alert($(this).text());
});
});

Above code will not work using live() method. But using delegate() method we can accomplish this.

$(document).ready(function(){
$("#dvContaine', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'99776664-65fa-484d-a996-0ed3608eef48', N'Use of "ON" keyword', N'it used to bind event with jquery', N'$(''#id'').on(''click'',function() { 
alert(event Binded);
});', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3a289660-cd98-4229-8b36-13bd2a8afe0e', N'removeClass', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7be281df-4db5-484f-8410-16e385dde506', N'$ keyword + why to use', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'675503ea-9243-445a-806f-1b1444082272', N'animate()', N'An object of CSS properties and values that the animation will move toward', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'659ca6a0-38f4-4531-9611-22679950b6b0', N'animation', N'delay(),fadeIn(),fadeOut(),fadeTo(),show(),hide(),slideDown(),slideUp(),slideToggle(),toggle(),stop()', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b0effddd-7de0-4f73-a6b6-246d317ca4d1', N'Start point', N'$(Documnet).ready()', N'$(Documnet).ready( Function () {
alert("ready function")
})', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a9c1721b-900a-4543-ab5e-24af79dd250e', N'search elements with specified value of attribute', N'*,^,$,!', N'$(a[href=mydomain])', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'da5b1dfb-6d08-44c6-b62a-2a5e361d2133', N'JSON.parse()', N'The JavaScript function JSON.parse(text) can be used to convert a JSON text into a JavaScript object', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3f3f2124-0fec-4877-8a52-2ac8546391ce', N'$("div.a")', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7441fbe2-39a4-4e12-a1c5-2c9d82880c15', N':enabled,:disabled', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'16484645-f644-42de-b39d-3a96c262e6ae', N':first,:last,:even,:odd,:not,:first-child,:last-child,nth-child()', NULL, N'$("h2:first")', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8fa2a34d-04fd-4630-907f-3aa1ee528923', N'What is Chaining in jQuery?', N'Chaining means specifying multiple function and/or selectors to an element.
Advantage of chaining is that it makes your code simple and simple to manage.
-The execution becomes faster because the code search for the element only once.', N'$(document).ready(function(){
$(''#mydiv'').css(''color'', ''blue'');
$(''#mydiv'').addClass(''myclass'');
$(''#mydiv'').fadeIn(''fast'');
}

By using chaining we can write above code as follows

$(document).ready(function(){
$(''#mydiv'').css(''color'', ''blue'').addClass(''', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'90e1d78f-2bf5-4613-a4b6-3b06e153dea3', N'type:', N'http request type,GET or POST', N'type:POST', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5d414816-ba08-4d6d-914d-3d13a9b482bc', N'parent(),parents(),parentsUntil(),closet()

searching in Dom in up direction', N'closest() : 
Begins with the current element
Travels up the DOM tree and returns the first (single) ancestor that matches the passed expression
The returned jQuery object contains zero or one element

parents() : Begins with the parent element Travels up ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e654398b-1255-48e4-b509-3fdfe8f24341', N'this keyword', N'http://learn.jquery.com/javascript-101/this-keyword/', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0db3c9dc-79a4-4095-a5f6-44e98c865b1f', N'url:', NULL, N'url: "xyz.asmx/getemployee"', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8e62f4d0-b989-44e3-b2c8-45394cfe4e8b', N'Callback in Jquery', N'wait untill the current function completes its execution.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'111e1d6c-e69d-4f44-94fc-4d8a9b8d405e', N'$("div>a")', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f9f44bf1-6b65-4190-b4c6-52699e1dd766', N'Namespaced events', NULL, N'$( ''li'' ).on( ''click.logging'', function() {
  console.log( ''a list item was clicked'' );
});', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ba37e5c4-3de9-42af-8dc1-599d408fef66', N'Diffenrt functions', N'fadeIn(),fadeOut().SlideToggle(),toggle()', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'17fc3076-7ff4-40be-8621-5b9fc64873c9', N'contentType', N'request''s multipurpose internet mail extension(NIME) type,The content type used when sending data to the server. Default is: "application/x-www-form-urlencoded"', N'contentType:"application/json"', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6cc84465-869c-4b96-abc6-5befeb050141', N'setInterval()', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ad13578f-f4ea-44e8-a2ee-5c57275e663d', N'Load', N'The load() method loads data from a server and puts the returned data into the selected element.', N'$(selector).load(URL,data,callback);', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'432b9cb2-0c21-4f35-97dd-5cf50d0f717a', N'jQuery-1.4.1.min.js', N'it is minified versoin of jquery file.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c1cf2efe-bad1-4c63-9c78-6022c070f0b2', N'$(:checked),$(:selected),', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1a7dad2f-7557-45ef-8a85-6042a4eef600', N'clearInterval()', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'442dc05f-903f-4732-a758-6364b338bdc8', N'this keyword', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'85067144-fec8-4ac9-a8f8-658adbb35e3f', N'async:', N'A Boolean value indicating whether the request should be handled asynchronous or not. Default is true', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8a73213a-0cc5-4fac-bb22-6b50349db0a7', N'Ready function will be loaded  when ? Page life cycle realted', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fcddc06e-c6cc-4e21-a81b-72aa83adfe2a', N'$("h2").eq(1)', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3d35080d-1d13-4c14-9005-72bdc5ada348', N'resize()', N'The resize() function is called whenever the browser size is changed. This event can be only used with $(window).', N'$(window).resize(function() {
$(''#message).text(''window is resized to '' + $(window).width() + ‘x’ + $(window).height());
});', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'30135717-f5c9-43c3-a93d-7a2472cc70ca', N'$.ajax({})', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4ec009b6-f92d-44ce-a209-90a1611346d0', N'empty', N'Here is the description of all the parameters used by this method:

url: A string containing the URL to which the request is sent

data:: This optional parameter represents key/value pairs that will be sent to the server.

callback:: This optional paramet', N'The first callback parameter is simply the content of the page requested, while the second callback parameter is the textual status of the request', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'db0b9c88-f119-4abf-a9e2-91c038972ca4', N'preventDefault', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'34cb961b-0ab7-44f9-9dd1-9751360bee3f', N'error:', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'622fef82-f0f8-45c2-9b54-97f00118bbfc', N'success:', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b56cfe17-1e7f-4886-b944-9c27fa366e79', N'children(),find(),', N'searching in Dom in down direction', N'This method only traverse a single level down the DOM tree.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'332ea915-a875-4c70-a2d2-a41b9b7cb2c9', N'What is difference between $(this) and ‘this’ in jQuery?', N'his and $(this) references the same element but the difference is that “this” is used in traditional way but when “this” is used with $() then it becomes a jQuery object on which we can use the functions of jQuery.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5e0d856d-342a-4625-b272-a5eef5bee461', N'manipulating ', N'append(),detach(),$("#id1).after($("#div2")),replacewith()', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fa4f0d31-1517-412a-91ea-a7a0a39c652b', N'how to get attibutevalue', N'$(''#ID'').attr(''href'');', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'782a3028-b405-430d-954e-a830c17b1d8c', N'chaining in jQuery', N'Chaining allows us to run multiple jQuery methods (on the same element) within a single statement.
Execution will be from left to right.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cd85a115-469d-4d22-be2f-aa57e1a18afe', N'Difference between Empty and remove', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'edf5f45b-42c0-4b74-86f4-b4b996c16841', N'siblings()
next()
nextAll()
nextUntil()
prev()
prevAll()
prevUntil()', N'Traversing Sideways in The DOM Tree', N'The siblings() method returns all sibling elements of the selected element.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3a1a19aa-2b41-4e43-9042-b5faf00170e4', N'empty() vs .remove() vs .detach().', N'empty() method is used to remove all the child elements from matched elements.
-.remove() method is used to remove all the matched element. This method will remove all the jQuery data associated with the matched element.
-.detach() method is same as .remo', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'618b3854-3334-4044-bc8e-ba171c8702df', N'ajax', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e96eb27e-823c-4e3a-9be4-bbf4c634a5b5', N'Is window.onload is different from document.ready()?', N'The window.onload() is Java script function and document.ready() is jQuery event which are called when page is loaded.
- The difference is that document.ready() is called after the DOM is loaded without waiting for all the contents to get loaded. While wi', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b2115385-25f5-4171-9f91-be4bde79fb6d', N'jQuery-1.4.1.js', N'it is debug version of jquery.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fd704c92-f276-4c55-a1e4-c16afbe3160f', N'beforeSend(xhr)', N'A function to run before the request is sent', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1ddac675-da97-419b-8ff7-c383ea56871d', N'jQuery-1.4.1-vsdoc.js', N'Provide intelligence to visual studio', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'78076bc5-2a55-4e13-9523-ca4263b00aaf', N'On,Off,One', N'on to bind the event,off to unbind event and one to create an event to be executed one time only', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'559b59f0-43b2-4692-b4e6-cafa50ddfda9', N'jQuery() and $()', N'called as selectors.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4d93a849-f000-4d6a-b0a8-cc8b38c51d01', N'Types of event in jquery', N'mouseover,mouseout,click', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'eb2f8e1a-e869-491f-abcf-ccd398fde8cb', N'$.each()', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3a351b2f-f677-4be6-8f6f-cce49be89d03', N'Other function as a starting point ?', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cfd3b73f-c2c0-4ee7-8969-d20a3c75ede7', N'$.Get()', N'The jQuery.get( url, [data], [callback], [type] ) method loads data from the server using a GET HTTP request.

The method returns XMLHttpRequest object.', N'<script type="text/javascript">
$(function()
{
        $.get("content.html", function(data, textStatus)
        {
                alert("Done, with the following status: " + textStatus + ". Here is the response: " + data);
        });
});
</script>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6a070951-2fd6-4465-992e-d24c17a2378e', N'$("h2").size(),$("h2").length()', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4e5b1f8a-b098-4153-b4b1-d45f465540de', N'jQuery.holdReady()', N'By using jQuery.holdReady() function we can hold or release the execution of jQuery’s ready event.                                                                                                                                                             ', N'jQuery.holdReady(true);

-When we want to release the ready event then we have to call
jQuery.holdReady(false);', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'00fa4920-966f-4cb2-8ed3-d4a3d2c06dfc', N'$()', N'it is a selector fuction..to select the elements from web page.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'31c91d36-f613-487d-93ef-d7b784ad4db9', N'addClass', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'65967a54-40de-4668-aaff-db631e07551f', N'Unbind the event', NULL, N'$( ''li'' ).off( ''click'' );', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ea136dd6-c483-42c9-8d16-e00e7d664c56', N'What is difference between prop and attr?', N'In jQuery both prop() and attr() function is used to set/get the value of specified property of an element.
The difference in both the function is that attr() returns the default value of the property while the prop() returns the current value of the prop', N'<input value="My Value" type="text"/> 

$(''input'').prop(''value'', ''Changed Value'');

-.attr(''value'') will return ''My Value'' 
-.prop(''value'') will return ''Changed Value''', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'82e9a491-3154-4999-a0fe-e69140b1f153', N'To include the jquery files', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4d1410d5-8223-4e63-8f50-e843240e2eda', N'dataType:', N'MIME type of data you want to have returned from the request', N'dataType:"json"', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'938d45c1-ebc5-4e9c-8eb1-e8b064015818', N'$("h2").eq(1).css("color","green")', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3a160815-1f06-4622-a5e7-ec36427581f9', N'param() ', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'53958ca8-bf18-4954-a9bd-f4a4149772c6', N'$.Post()', NULL, N'<script type="text/javascript">
$(function()
{
        $.post("test_post.php",
        {
                name: "John Doe",
                age: "42"
        },
        function(data, textStatus)
        {
                alert("Response from server: " + d', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'65c90be2-3e46-465c-85cc-fbc17b83e637', N'data:', NULL, N'data: "{}"', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b4634af4-64cc-4d0f-8b9b-fc4087020bb1', N'SOAP ', N'SOAP stands for Simple Object Access Protocol
SOAP is a communication protocol
SOAP is for communication between applications
SOAP is a format for sending messages
SOAP communicates via Internet
SOAP is platform independent
SOAP is language independent
SO', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
