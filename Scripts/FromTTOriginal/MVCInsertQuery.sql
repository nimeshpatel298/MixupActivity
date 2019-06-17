USE [frienzff_Mixup]
GO
/****** Object:  Table [dbo].[TechnologyContents]    Script Date: 06/16/2019 18:13:14 ******/
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0d5c24a9-e016-4e4e-907b-01aaf8d4f794', N'Razor Vs. Aspx View Engine', NULL, N'http://www.dotnet-tricks.com/Tutorial/mvc/91JM151212-Difference-Between-Razor-View-Engine-and-ASPX-View-Engine.html', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'968ad848-93c5-41d7-a7a2-01f2c5552f80', N'View Compilation', N'1. Open MVC project file using a notepad. Project files have the extension of .csproj or .vbproj
2. Search for MvcBuildViews under PropertyGroup. MvcBuildViews is false by default. Turn this to true as shown below.
<MvcBuildViews>true</MvcBuildViews>', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'32422f69-dae9-45c5-8d41-03717a61f892', N'Any scenario where I have implemented custom filter', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b3a753b9-c57d-4a25-be1c-064de3eb60d2', N'empty', N'Since the example works only with Movie types, a better option is to use IValidatableObject as shown in the following paragraph.

Alternatively, this same code could be placed in the model by implementing the Validate method on the IValidatableObject interface. While custom validation attributes work well for validating individual properties, implementing IValidatableObject can be used to implement class-level validation as seen here.', N'public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
{
    if (Genre == Genre.Classic && ReleaseDate.Year > _classicYear)
    {
        yield return new ValidationResult(
            $"Classic movies must have a release year ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'48293c57-0011-41fb-bf32-0759c9d5bdb6', N'Part 94 & 95 & 96
option of  AjaxOption class', N'1.HttpMethod  : set the method type of ajax call
2.UpdateTargetId  : set the id og html tag where ajax return data wil be binded.
3.InsertionMode  : will specify whether to replace the previous called data or append it. possible options are ''Replace'',''Ins', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'72ffec83-a514-48b4-9ad1-0761e7ebfe35', N'part 92 Ajax with asp.net mvc', N'ASP.NET AJAX enables a Web application to retrieve data from the server asynchronously and to update portions of the existing page.', N'//Code to call the ajax method
@Ajax.ActionLink("All", "All", 
    new AjaxOptions 
    {
      HttpMethod = "GET", // HttpMethod to use, GET or POST
      UpdateTargetId = "divStudents", // ID of the HTML element to update
      InsertionMode = Insertion', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ce1a7b93-edcf-44f2-81c3-09e0caaf04e7', N'Filter In Details', N'There may be circumstances where you want to execute some logic before or after an action method executes. ASP.NET MVC provides filters for this purpose.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b31e33a6-c392-423f-b245-0a646a74b77f', N'empty', N'RedirectResult   and RedirectToRouteResult internally calls Keep method to retain items', N'Peek   method is not called internally with any of ActionResult.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f7384629-bb13-4b28-9b92-0fa7ac048212', N'Part 85 - Enable client side validation', N'Add Following file reference in same order.
<script src="~/Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="~/Scripts/jquery.validate.min.js" type="text/javascript"></script>
<script src="~/Scripts/jquery.validate.unobtrusive.min', N'Enable ClientValidation and UnobtrusiveJavaScript in web.config file.
<appSettings>
  <add key="ClientValidationEnabled" value="true" />
  <add key="UnobtrusiveJavaScriptEnabled" value="true" />
</appSettings>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'569f1651-e3cf-409b-8a6d-1088996567d4', N'Standard HTML Helpers', N'Standard HTML Helpers are used to render the most common type of HTML controls like TextBox, DropDown, Radio buttons, Checkbox etc. Extension methods of HTML Helper classes have several overloaded versions. We can use any one according to our requirement.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f6f72586-a81b-4160-acd1-10b5f20d8a16', N'RouteTable have one static property called Routes of Type RouteCollection
RouteCollection manages to hold all routes of type collection RouteData. all Add Remove funcitons 
and Return RouteDate based on httpRequest considering all form data
public RouteDa', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2c02a1e1-bc54-4c7f-89e2-1278ab556d30', N'few in built behaviour and its variant of controller class', N'    1. PartialView()
    2. Redirect()
    3. RedirectToAction() 
    4. RedirectToActionPermanent()
    5. RedirectToRoute()
    6. RedirectToRoutePermanent()
    7. ValidateModel()
    8. View()
    9. ModelState => Isvalid & AddModelError
    10. HttpContext
    11. Request
    12. Response
    13. RouteData
    14. Session
    15. Url', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9e979f3c-37c4-4dc1-af4c-1401a8d6b254', N'Compare : Part 84', N'To compare two fields of user input, Compare attribute is used.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b9f4f028-d056-476d-abf9-155a46c3f58e', N'Custom authentication implementation', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e7dc8896-4593-4c70-ab29-18fbfe51f6f1', N'HTML Helper method', N'HTML helper are used to create/render HTML Content.They are Extension method.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd6918d5c-70c6-4e92-a729-193ea82f4184', N'HTML Helpers are categorized into three types', N'1. Inline HTML Helpers
2. Built-in HTML Helpers
3. Custom HTML Helpers', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c4dc37aa-2950-427c-9645-199b335b2f4c', N'MVC pattern In detail', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4be1b0fc-73c2-4538-b969-1b05acb095e7', N'ViewBag', N'ViewBag can be useful when you want to transfer temporary data (which is not included in model) from the controller to the view. The viewBag is a dynamic type property of ControllerBase class which is the base class of all the controllers.
ViewBag only transfers data from controller to view, not visa-versa. ViewBag values will be null if redirection occurs.
The ViewBag''s life only lasts during the current http request. ViewBag values will be null if redirection occurs.
ViewBag is actually a wrapper around ViewData.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8868a003-47f0-435a-8aa9-1c495f472aa3', N'Our Controller inherits from the Controller class that inherits from ControllerBase that implements the Icontroller interface. The Icontroller interface has an Execute() abstract method that is implemented in the ControllerBase class.
so Execute() method ', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1a88f3a6-cdc1-46d4-b5e5-1e999820fb4a', N'UrlRoutingModule Does three things
1. RouteData routeData = RouteCollection.GetRouteData(context); => Find the matching RouteData from RouteCollection
2. RequestContext requestContext = new RequestContext(context, routeData);


            // Dev10 766875', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5266bcc7-02b5-4f6a-8aab-1fa6645d3a93', N'RedirectToAction() ', N'To redirect the user to specified controller', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b7952fb9-958c-4280-b31c-20d10a776c27', N'Types of Filters', N'Authorization filters run first and are used to determine whether the current user is authorized for the current request. They can short-circuit the pipeline if a request is unauthorized.
Resource filters are the first to handle a request after authorization. They can run code before the rest of the filter pipeline, and after the rest of the pipeline has completed. They''re useful to implement caching or otherwise short-circuit the filter pipeline for performance reasons. Since they run before model binding, they''re useful for anything that needs to influence model binding.
Action filters can run code immediately before and after an individual action method is called. They can be used to manipulate the arguments passed into an action and the result returned from the action.
Exception filters are used to apply global policies to unhandled exceptions that occur before anything has been written to the response body.
Result filters can run code immediately before and after the execution of individual action results. They run only when the action method has executed successfully and are useful for logic that must surround view or formatter execution.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0b8f5f6b-6160-4a37-a625-210f4d2d9f38', N'empty', N'Most server controls leverage
View State in some way, whereas HTML helpers must function without it.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6f45c5b9-d35d-4673-baaf-22f04ca35153', N'@ViewData.TemplateInfo.FormattedModelValue', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd4ec2604-8a97-4716-87a6-23dd70048474', N'empty', N'Use of ActionExecutedContext parameter', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b5ccd369-0e34-4485-bfb7-2509fdeafce2', N'Named Section', N'Part 61
 @section : To define the named section in view.
     RenderSection : To refer the named section in layout
  IsSectionDefined : to check whether section is defined or not.', NULL, N'http://csharp-video-tutorials.blogspot.com/2013/07/part-61-named-sections-in-layout-files.html', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f627ecc4-6112-4bd1-8d46-264abbcd26fe', N'_ViewStart', N'Conatains the Layout property value.it will be the file path of master file.
If ViewStart is in Shared Folder then it will be applied to all views. If it is in specific view folder then it will be applied to those views only', N'@{
      Layout = "~/Views/Shared/_v1.cshtml";
   }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ba9fa7c9-c06b-4826-9a01-267ac71623fd', N'TempData', N'TempData in ASP.NET MVC can be used to store temporary data which can be used in the subsequent request. TempData will be cleared out after the completion of a subsequent request.

TempData is useful when you want to transfer non-sensitive data from one action method to another action method of the same or a different controller as well as redirects. 
Call TempData.Keep() to retain TempData values in a third consecutive request.
TemData is a TempDataDictionary type.
TempData internaly use Session to store the data.', N'TempData["name"] = "Test data";', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c88af1a6-ba3d-4d30-a788-26ec695efeaa', N'Role of Model, View, Controller', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'453b7cee-53c2-4fb4-8494-290b1f9b592f', N'Range: Part 81', N'Will enforce that input should be in range.
There are many overloaded version of range.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6d83be50-10f2-4fd7-93fb-2a28502f3bba', N'Peek and keep method', N'But one can persist data in TempData object even after request completion with the help of Keep() or Peek() method.', NULL, N'http://sandeep-tada.blogspot.in/2014/07/use-tempdata-keep-or-peek-method-to.html', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b0e42d40-3d91-4a70-ab8d-2b3da8c9cdfc', N'Part 91 - Create a custom remote attribute and override IsValid() method', NULL, NULL, N'http://csharp-video-tutorials.blogspot.in/2013/09/part-91-create-custom-remote-attribute.html', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'59f694b3-0645-4ef9-aac1-2ce1b9e869a1', N'Custom Html Helper', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5ca2ccac-051a-4382-9fe2-2e553bd6e38a', N'Custom validation', N' inherit from the ValidationAttribute, and override the IsValid method. The IsValid method accepts two parameters, the first is an object named value and the second is a ValidationContext object named validationContext. Value refers to the actual value from the field that your custom validator is validating.', N'public class ClassicMovieAttribute : ValidationAttribute, IClientModelValidator
{
    private int _year;
    public ClassicMovieAttribute(int Year)
    {
        _year = Year;
    }
    protected override ValidationResult IsValid(object value, ValidationC', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'302a2e2b-7020-493f-8dc2-30fcb910a5b9', N'Template Helper Method', N'These methods are very flexible and generate the HTML element based on the properties of the model class. We have already seen an EditorFor Helper method in the previous example, which generates TextArea element because we have declared MultiLine Datatype on Address property. Display, DisplayFor, Editor, and EditorFor are the examples of Template Helper method.', NULL, N'https://dzone.com/articles/working-with-built-in-html-helper-classes-in-aspne', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'acd5e527-4e85-4d6b-ae97-3262f36f8329', N'RouteTable => Will have Routes Property of type RouteCollection
RouteCollection is inherited from Collection<RouteBase>

public RouteData GetRouteData(HttpContextBase httpContext); in RouteCollection

UrlRoutingModule 
MVCHandler => HttpHandler
RequestCon', N'https://www.c-sharpcorner.com/UploadFile/00a8b7/Asp-Net-mvc-life-cycle/', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2520a0b8-e3a1-479e-815b-3323379dffb8', N'ModelState.AddModelError("FieldID","Error Message")', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4ec7d204-a059-48a7-aa76-3899e7df1724', N'@ViewData.TemplateInfo', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a56d3a54-defe-4a27-99be-39949d3c6705', N'InvokeAction()', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f4885c40-9308-4554-9f4b-3d1545ac8689', N'Advantage of MVC', N'1. Separation of Application Logic and View Logic
2. Url is not mapped directly with File.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6e169ce8-f66a-4d4b-9df1-3f8be83bdaf8', N'Difference between html helper and Asp.Ner server control', N'View state will be supported in ASP.NET control and in helper methods do not have viewstate', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5f25c4c5-6c61-48c5-98f0-411dd11f1167', N'empty', N'FormCollection: You can also include FormCollection type parameter in the action method instead of complex type, to retrieve all the values from view form fields', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'88296f79-b1ca-468c-ad9f-44a87656f74b', N'Understanding the MVC Application Execution Process', NULL, N'https://docs.microsoft.com/en-us/previous-versions/aspnet/dd381612%28v%3dvs.100%29', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2c007025-029c-4a65-a4f2-46e9c7de7d6b', N'HTML Helper method', N'HTML helper are used to create/render HTML Content.They are Extension method.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a4a3fcd8-4b01-40da-9be6-48217d0e3e97', N'CustomValidation : Part 82', N'If we want to add our own custom validation attribute, then class should inherit ''ValidationAttribute'' class and must implement ''IsValid'' method.', N'public class FutureDateAttribute :ValidationAttribute
    {
        public override bool IsValid(object value)
        {
            return (DateTime)value >= DateTime.Now;
        }
    }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b98dbecc-2eee-4d62-b707-48a40ec97a8e', N'StringLength : Part  80', N'Attribute will enforce the input to be of specified length. It will not enforce of mandatory check.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7c243131-a51f-49ef-ba98-4a8825e966c7', N'To generate a dropdownlist : using hard coded values', N'From the database table
public ActionResult Index()
{
    SampleDBContext db = new SampleDBContext();
    // Retrieve departments, and build SelectList
    ViewBag.Departments = new SelectList(db.Departments, "Id", "Name");            
    return View();
}
@Html.DropDownList("Departments", "Select Department") 
', N'overloaded version of "DropDownList" html helper.
DropDownList(string name, IEnumerable<SelectListItem> selectList, string optionLabel)

@Html.DropDownList("Departments", new List<SelectListItem>
{ 
    new SelectListItem { Text = "IT", Value = "1", Selec', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8661d42f-e11a-40a3-b8ae-4b0090346589', N'@* ..... *@', N'Commeting in razor page', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5eb44261-c1bf-4349-a191-4b21ebabefe1', N'@@', N'Escape characher', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a3737ca1-77fe-450c-9132-4cc9123485a3', N'T4 Templates', N'T4 stands for Text Template Transformation Toolkit and are used by visual studio to generate code when you add a view or a controller.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3441c335-784b-49be-9666-4d746fbcfe95', N'Cache Profile : Part 74', N'cache settings can be specified in web.config file using cache profiles.
The cache settings are now read from one central location i.e from the web.config file. The advantage of using cache profiles is that
1. You have one place to change the cache settings. Mantainability is much easier.
2. Since the changes are done in web.config, we need not build and redeploy the application.', N'<system.web>
  <caching>
    <outputCacheSettings>
      <outputCacheProfiles>
        <clear/>
        <add name="1MinuteCache" duration="60" varyByParam="none"/>            
      </outputCacheProfiles>
    </outputCacheSettings>
  </caching>
</system.w', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd613ffbe-4a5a-4e01-9d21-50252083f220', N'What is View Engine', N'View Engine is responsible for rendering the view into html form to the browser.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cabf236d-ba71-4a4a-8dfe-50f1efae9aba', N'Textbox vs. TextboxFor', N'Textbox is not strongly type method where TextboxType is strongly Type.End Result will be same.Textbox wont give compile time error but TextboxFor will give. If View is not strogly bind, TextboxFor will be useless.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd7d94627-43ec-4e04-b4f4-511c852e5044', N'Part 97 Autocomplete feature', NULL, NULL, N'http://csharp-video-tutorials.blogspot.in/2013/09/part-97-implement-autocomplete-textbox.html', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8dac6bcc-d135-4413-a52f-534e17fc79da', N'Custom View Engine', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2eba0cc0-55b8-45a6-b5f1-553b87ce5fbc', N'MetadataType', N'Specifies the metadata class to associate with a data model class.', N'[MetadataType(typeof(CustomerMetaData))]
public partial class Customer
{  
}

public class CustomerMetaData
{
    // Apply RequiredAttribute
    [Required(ErrorMessage = "Title is required.")]
    public object Title;
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'008143ce-b535-49e8-b2f6-57e86a28fa5f', N'Scaffold Attribute', N'<TBD>', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e66f2472-fd9f-44f5-92fa-5801c1a6437d', N'Asp.Net Mvc Page life cycle and compare it with Web API Request life cycle', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3e280043-e051-4228-9db8-5b167083f339', N'empty', N'Binding to Complex type: Model binding also works on complex types. Model binding in MVC framework automatically converts form field data of HttpPOST request to the properties of a complex type parameter of an action method.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'85eee884-face-4336-8a8d-5c1dacf1aeb5', N'Bind Attribute', N'ASP.NET MVC framework also enables you to specify which properties of a model class you want to bind. The [Bind] attribute will let you specify the exact properties a model binder should include or exclude in binding.', N'[HttpPost]
public ActionResult Edit([Bind(Include = "StudentId, StudentName")] Student std)
{
    var name = std.StudentName;
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'29b2d8f2-eed0-452b-aa86-5e5169234afa', N'@RenderSection()', N'Layout pages also have the concept of sections. A layout page can only contain one RenderBody method, but can have multiple sections. To create a section you use the RenderSection method. The difference between RenderSection and RenderPage is RenderPage reads the content from a file, whereas RenderSection runs code blocks you define in your content pages.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f8e60a31-eb89-4768-b866-5fb604a84ccb', N'html.Renderpartial', N'The RenderPartial helper method is same as the Partial method except that it returns void and writes resulted html of a specified partial view into a http response stream directly.
Partial view is a reusable view, which can be used as a child view in multiple other views.
Partial view can be rendered using Html.Partial(), Html.RenderPartial() or Html.RenderAction() method.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c26a37dc-e40d-43ef-b7b2-6024b693365b', N'TempData', N'TempData used to transfer data between controllers or between actions. There is one point to note that TempData is only work during the current and subsequent request and it is generally used to store one time message.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c74cb785-8743-439b-88b6-60d7dde025fc', N'Dropdown filter runtime', N'Can use ajax to bind the dropdown options', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'88fecb6a-4a75-4b97-b21d-6213eee322c7', N'What XSS is.. Example of it and ways to do it', N'XSS is cross site scripting. User inject scripts through user input to change the behaviour of the application.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ff7b985d-0b1b-4045-87de-62f57305a9b7', N'Action Name Attribute', N'ActionName attribute allows us to specify a different action name than the method name.
View name also should be the same as ActionName. ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9a791a52-d485-4766-a580-6575242ff2ca', N'EditorTemplates', N'Both contains templates means raw html control define somewhere by framework and rendered in UI when DisplayFor/EditorFor  will be called.behaviour of system defined template can be chaned by applying metadata to property.U can override control behaviour', N'When we use DisplayFor/EditorFor (Premitive Data type), It uses Predefined html control.For e.g. string type property will be rendered as textbox.(If EditorFor is used).If Property contains metadata then behaviour will be changed.for E.g. readoOnly will b', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7a4fa4f2-ea87-4963-a25d-6a3d3f5c6028', N'@: or <text> element', N'To inform that swtich to literal from c#.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e6cc0fdb-4d5c-48b2-a07e-6b477f935458', N'Partial Views  @Html.Partial("_Employee", item)', N'@Html.Partial() helper method renders the specified partial view. It accept partial view name as a string parameter and returns MvcHtmlString. It returns html string so you have a chance of modifing the html before rendering.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8afb24bc-10d9-4dcb-99d6-6bfc16b4ed71', N'Helper Methods', N'Action : Process child action method of controller. 
ActionLink : Generates anchor tag. 
Display: Lets say we have a list of object and we want to render single property of all objects of list as string in HTML then ''Display'' will be used. Single method call will render all object''s property.
DisplayName: Display the property Name as plain text in HTML.
DisplayText: DisplayName Vs. Label: Directtly renders text into HTML Where Lable creates ''lable'' tag into html Editor Vs. Textbox : bOTH GENERATE TEXTBOX IF TEMPLATE IS NOT PROVIDED. In case of Provided template, It will render the control as specifed in template file. Name: Value:', N'@Html.TextBox("firstname") 
@Html.TextBox("firstname", "John")
<input id="firstname" name="firstname" type="text" value="John" />

@Html.Label("Text Content",new { id = "id-element", name = "name-element", size = 10, @class = "css-class" })

The second pa', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cfea64e9-8b24-4564-976e-6c1405a62b9b', N'FormCollection', N'Form collection is one way to pass a value from a view to the controller', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0f2fb70a-0921-4e64-94d2-6ca26a7241f3', N'UpdateModel vs TryUpdateModel', N'UpdateModel will throw exception if it fails to update the model where TryUpdateModel won''t.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'339008e7-076c-4c0a-85e3-7073afe93328', N'framework support to prevent it ( [ValidateInput(false)] ,HTML Encoding)', N'ValidateInput is by default enabled to prevent it.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'85682e59-ea45-4817-b07e-71648423c74a', N'empty', N'Keep   method can be overloaded, i.e. one can keep all items or pass the key to   retain specific item.', N'There   is no overloaded method in case of Peek method.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'25053aff-ea4d-45c5-b046-71e60c087b7f', N'Custom Filters : Part 77', N'Custom filter class can be created by implementing FilterAttribute class and corresponding interface.', N'class MyErrorHandler : FilterAttribute, IExceptionFilter
{
    public override void IExceptionFilter.OnException(ExceptionContext filterContext)
    {
        Log(filterContext.Exception);
        base.OnException(filterContext);
    }

    private void L', N'https://www.tutorialsteacher.com/mvc/filters-in-asp.net-mvc', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7dabdb58-abef-4591-ac9a-75935be8766e', N'DataType attribute', N'DataType.EmailAddress : 
DataType.Currency:
DataType.Url
DataType.Time
DataType.Date', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5a045a05-5cec-490e-a92d-75b227964ec4', N'Textbox vs. TextboxFor', N'Textbox is not strongly type method where TextboxType is strongly Type.End Result will be same.Textbox wont give compile time error but TextboxFor will give. If View is not strogly bind, TextboxFor will be useless.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'435cce00-b225-4174-96fe-75d3f64f2c73', N'Action Result : Part 78', N'Action method can return a wide range of object for e.g. 
ViewResult
PartialViewResult
JsonResult
RedirectResult etc.', NULL, N'Subtype of ActionResult :https://msdn.microsoft.com/en-us/library/system.web.mvc.actionresult%28v=vs.118%29.aspx', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'12b81dd6-f063-4608-8f8b-7fbfb8448efc', N'Require Https: Part 75', N'Forces unsecured http request to resent over https.', N'[RequireHttps]', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'44bf8f3f-ab63-4edb-97e0-830ba33f8d70', N'@Html.Action() and Html.RenderAction() for [ChildActionOnly]', N'The RenderAction helper method invokes a specified controller and action and renders the result as a partial view. The specified Action method should return PartialViewResult using the Partial() method.', N'https://www.c-sharpcorner.com/UploadFile/97fc7a/child-action-methods-in-Asp-Net-mvc-4/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'aed9e74a-44e3-4388-a1e5-862a3ca75b8e', N'html.Renderpartial and Difference between html.partial and html.renderpartial', N'1. The return type of "RenderPartial" is void, where as "Partial" returns "MvcHtmlString"

2. Syntax for invoking Partial() and RenderPartial() methods in Razor views
@Html.Partial("PartialViewName")
{ Html.RenderPartial("PartialViewName");  }', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd1a160b3-35d8-478b-8c9e-86bf0e37a6f9', N'Required Attribute', N'Specifies that a data field value is required.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'21d00d0b-d775-42d5-a5c0-8825196e4d2f', N'ExecuteResult() of ActionResult', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2515acd4-ae35-4687-ba05-89d1bdc62b89', N'ViewData', N'ViewData is similar to ViewBag. It is useful in transferring data from Controller to View.

ViewData is a dictionary which can contain key-value pairs where each key must be string.
ViewData and ViewBag both use the same dictionary internally. So you cannot have ViewData Key matches with the property name of ViewBag, otherwise it will throw a runtime exception.', N'IList<Student> studentList = new List<Student>();
studentList.Add(new Student(){ StudentName = "Bill" });
ViewData["students"] = studentList;', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c1442f5c-00d4-4b3a-b4ac-8a157a330855', N'Handle Error: Part 72', N'Handle Error is used to display friendly error message for unhandled errors to UI.', N' <customErrors mode="On">
      <error statusCode="404" redirect="~/Error/NotFound"/>
    </customErrors>

 filters.Add(new HandleErrorAttribute());', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ecebdf25-f6e0-4a01-abc1-8dc084a58c81', N'Part 86 Validation Summary', N'To show all validation summary to one location.', N'@Html.ValidationSummary(false, "Please check following errors", new { @class = "alert alert-danger" })', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f2abac07-d104-4237-9856-8e352dfdde4b', N'HttpUtility.HtmlEncode("") To Encode the string', N'If it disabled then user input can be encoded using HtmlEncode Method.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9d6e823e-9d76-41c2-bd04-90ac9b146cce', N'Implement all html controls with HTML helper method', N'<RadioButton or checkbox is an issue I guess>', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'eaf6f0f8-cbc8-41b5-a3bb-923893c2c99a', N'public string Content(string contentPath) method in UrlHelper Class', N'Converts a virtual (relative) path to an application absolute path.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2448e42a-78c1-4138-9138-9488c5e07356', N'ModelState', NULL, NULL, N'https://exceptionnotfound.net/asp-net-mvc-demystified-modelstate/', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'78b2f5e2-32ef-4d17-a12d-9710b6159fff', N'An example of EditorFor and DisplayFor', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1f0bb43c-a029-42c5-8cad-97d544b79c9c', N'Best way to bind Dropdown Item source', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6b18ddfa-adf7-42ac-af1d-9bba74315051', N'Helper Methods', N'Action : Process child action method of controller. 
ActionLink : Generates anchor tag. 
Display: Lets say we have a list of object and we want to render single property of all objects of list as string in HTML then ''Display'' will be used. Single method call will render all object''s property.
DisplayName: Display the property Name as plain text in HTML.
DisplayText: DisplayName Vs. Label: Directtly renders text into HTML Where Lable creates ''lable'' tag into html Editor Vs. Textbox : bOTH GENERATE TEXTBOX IF TEMPLATE IS NOT PROVIDED. In case of Provided template, It will render the control as specifed in template file. Name: Value:', N'@Html.TextBox("firstname") 
@Html.TextBox("firstname", "John")
<input id="firstname" name="firstname" type="text" value="John" />

@Html.Label("Text Content",new { id = "id-element", name = "name-element", size = 10, @class = "css-class" })

The second pa', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4a42a303-55ab-4e50-b36d-9bbfc23981b2', N'Order of view file to be searched to render.', N'~/Views/Employee/Index.aspx
~/Views/Employee/Index.ascx
~/Views/Shared/Index.aspx
~/Views/Shared/Index.ascx
~/Views/Employee/Index.cshtml
~/Views/Employee/Index.vbhtml
~/Views/Shared/Index.cshtml
~/Views/Shared/Index.vbhtml', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e529eaf0-a713-46b2-981d-9e9bc09ee0d7', N'Compatibility of ASP.NET Web Forms and MVC', NULL, N'https://docs.microsoft.com/en-us/previous-versions/aspnet/dd381619(v=vs.98)', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c960139c-43b3-4b1b-87cc-9fae00813929', N'UpdateModel<Interface>', N'We can prevent unintented update into model using interface.', N' UpdateModel<IEmployee>(employee);
employee will be updated with the field defined in Iemployee interface.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f2939218-c4e7-4eb3-b793-a0ca01896c30', N'UIHint', N'UIHintAttribute Specifies the template or user control that Dynamic Data uses to display a data field.
If you annotate a property with UIHint attribute and use EditorFor or DisplayFor inside your views, ASP.NET MVC framework will look for the specified template which you specified through UIHintAttribute. The directories it looks for is:
For EditorFor:
~/Views/Shared/EditorTemplates
~/Views/Controller_Name/EditorTemplates
For DisplayFor:
~/Views/Shared/DisplayTemplates
~/Views/Controller_Name/DisplayTemplates', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'afb13bad-977d-4289-b251-a31402452e2b', N'empty', N'Four types of Filter : 
Authorization filters :  Implements IAuthorizationFilter
Action filters : Implement IActionFilter
Result filters - Implement IResultFilter.
Exception filters - Implement IExceptionFilter', N'Built In Filter:
Authorization filters : [Authorize], [RequireHttps]
Action filters :
Result filters : OutputCache
Exception filters : [HandleError]', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b6bd1ae7-5d5c-4082-b320-a4875beb1ca2', N'Customize model binding behavior with attributes', N'MVC contains several attributes that you can use to direct its default model binding behavior to a different source. For example, you can specify whether binding is required for a property, or if it should never happen at all by using the [BindRequired] or [BindNever] attributes. Alternatively, you can override the default data source, and specify the model binder''s data source. Below is a list of model binding attributes:', N'[BindRequired]: This attribute adds a model state error if binding cannot occur.
[BindNever]: Tells the model binder to never bind to this parameter.
[FromHeader], [FromQuery], [FromRoute], [FromForm]: Use these to specify the exact binding source you wan', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6adfaba9-9f1f-44f5-aae5-a5154e25a7db', N'Strongly Typed HTML Helpers', N'Just like Standard Helper, we have several strongly typed methods.
Strongly Typed Helper requires lambda expressions.', N'Html.TextBoxFor(), Html.TextAreaFor(), Html.DropDownListFor(), Html.CheckboxFor(), Html.RadioButtonFor(), Html.ListBoxFor(), Html.PasswordFor(), Html.HiddenFor(), Html.LabelFor(), etc', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5ad1d32f-3d95-4903-b2e9-a66e9ace9dcd', N'empty', N'can also specify layout file path in View() function in controller.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
GO
print 'Processed 100 total records'
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'235ac344-a4de-4d70-a302-aa4c5dba7eab', N'OutputCache : Part 73', N'Output chache is used to cache content returned by Controller, next time it doesnt require to generate it again.', N'Keep [OutputCache] attribute to action method.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3f2ad316-6683-4eb7-b974-ad55f3b6d2e5', N'MVC Hander Implements IHTTPAsyncHandler which has ProcessRequest() method
So ProcessRequest() method will be called

ProcessRequest() will call ProcessRequestInit() = > 
ProcessRequestInit will create a ControllerFactory and a Controller
and Next, a Contr', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8df0ea78-b97e-4152-b304-adc41af80c24', N'empty', N'The main difference is that "RenderPartial()" returns void and the output will be written directly to the output stream, where as the "Partial()" method returns MvcHtmlString, which can be assigned to a variable and manipulate it if required. So, when there is a need to assign the output to a variable for manipulating it, then use Partial(), else use RenderPartial().
From a performance perspective, rendering directly to the output stream is better. RenderPartial() does exactly the same thing and is better for performance over Partial(). ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'086b8e70-d5b0-4f67-a833-af875ea4d210', N'Area : Part 79', N'Need to check in interet. Expolaration required.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cab06f1f-3efe-48fd-b8cb-b0319c7c3d3b', N'Model Binding', N'Mapping between incoming request data and application models is handled by model binders.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'12019e54-3ee2-451d-8e66-b275b78d7491', N'Part 87 : Unobtrusive JavaScript', N'Unobtrusive JavaScript, is a JavaScript that is separated from the web site’s html markup. There are several benefits of using Unobtrusive JavaScript. Separation of concerns i.e the HTML markup is now clean without any traces of javascript. Page load time', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'85e98313-19eb-40c6-baa2-b58764cf6004', N'What is Filters', N'Filters in ASP.NET Core MVC allow you to run code before or after certain stages in the request processing pipeline.

Built-in filters handle tasks such as authorization (preventing access to resources a user isn''t authorized for), ensuring that all requests use HTTPS, and response caching (short-circuiting the request pipeline to return a cached response).

You can create custom filters to handle cross-cutting concerns for your application. Anytime you want to avoid duplicating code across actions, filters are the solution. For example, you can consolidate error handling code in a exception filter.', N'https://docs.microsoft.com/en-us/aspnet/core/mvc/controllers/filters', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4f872b40-1eb1-4cb7-9850-b5bb6812f5a9', N'Better solution to pass dropdown list source to view', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a3582205-db17-44e3-b3e5-bb9d575d4ea3', N'DisplayColumn Attribute', N'Display single property specified in attribute for complex datatype.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'db09e13c-47fb-4d1b-8090-c47bdec03fcc', N'@Html.EditorForModel() and @Html.DisplayForModel() , @Html.Editor @Html.EditorFor', N'Editor() or EditorFor() extension method generates html elements based on the data type of the model object''s property.

EditorFor() method is a strongly typed method. It requires the lambda expression to specify a property of the model object.', N'Property DataType  ==>   Html Element
string  ==>  <input type="text" >
int  ==> <input type="number" >
decimal, float  ==>  <input type="text" >
boolean  ==>  <input type="checkbox" >
Enum   ==>  <input type="text" >
DateTime  ==>  <input type="datetime"', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c355891b-c601-41de-8d47-c5e1690b000e', N'TempData', N'TempData is also a dictionary derived from TempDataDictionary class and stored in short lives session and it is a string key and object value. The difference is the life cycle of the object. TempData keeps the information for the time of an HTTP Request. This mean only from one page to another. This also works with a 302/303 redirection because it’s in the same HTTP Request. It helps to maintain data when you move from one controller to other controller or from one action to other action. In other words, when you redirect, “Tempdata” helps to maintain data between those redirects. It internally uses session variables. Temp data use during the current and subsequent request only means it is used when you are sure that next request will be redirecting to next view. It requires typecasting for complex data type and check for null values to avoid error. It is generally used to store only one time messages like error messages, validation messages.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'737ffa0c-e5f3-4ed5-a265-c7a05f5056cc', N'UpdateModel and TryUpdateModel', N'Functions UpdateModel and TryUpdateModel are used to update the model with the form values and perform the validations.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b0eb870a-0319-4167-8fd9-cafc2751e37b', N'empty', N'Class needs to Implement ActionFilterAttribute and provide implementation of void OnActionExecuted(ActionExecutedContext filterContext) method', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b223323e-a57e-4f7e-ba0f-cd7d5de29caf', N'What is Model Binding', N'MVC framework converts the http request values (from query string or form collection) to action method parameters. These parameters can be of primitive type or complex type', NULL, N'https://www.tutorialsteacher.com/mvc/model-binding-in-asp.net-mvc', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9c49b788-fe15-48c2-a033-d11981fec3e0', N'empty', N'Can overwrite layout path by specifing it in each view file.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fceadd69-ec58-41f5-afed-d1ff564656d9', N'ViewBag Vs ViewData Vs TempData', N'1. ViewData is a dictionary of objects that is derived from ViewDataDictionary class and is accessible using strings as keys.
2. ViewBag is a dynamic property that takes advantage of the new dynamic features in C# 4.0.
3. ViewData requires typecasting for complex data type and check for null values to avoid error.
4. ViewBag doesn’t require typecasting for complex data type.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9698cfb4-3489-442a-9c34-d98b0c9f86fd', N'Keep() Vs. Peek()', N'To read   and retain the value with Keep one need to do two request, i.e. first read   the value and in next statement call Keep method to retain value.', N'With   the help of Peek method one can do both operation in a single statement i.e.   access as well retain value.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'aff48e83-3938-43b1-93a9-d9a89a005018', N'Regular Expression : Part 83', N'We can apply the Regular expression to restrict the user input', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4ec8eec1-fc20-412b-a7ea-dda7c30a807d', N'Model Validation ', NULL, N'https://docs.microsoft.com/en-us/aspnet/core/mvc/models/validation', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'732e42c9-4e5a-49bf-a5e6-ddddcbd4caf5', N'DisplayTemplates', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dda8f880-d461-4616-9537-dea4688bd1ae', N'TempData.Keep():', N' TempData.Keep() method keep value in TemData object at the end of current request. There are two overloaded keep methods available with TempData:
 void Keep(): This method make ensures that all the items in TempData are not destroyed on current request c', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c37251fa-ce0c-4af7-acec-e0fd86c4b58c', N'TempData.Peek(string key):', N'It returns an object that contains the element that is associated with the specified key, without marking the key for deletion.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a3573e2a-717c-4714-8520-e21ac115633c', N'Why Mvc? Compare MVC over Webforms', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'219317f5-d4f1-4452-a160-e313141ab1ed', N'MVC Architecture', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'117e7230-106c-4401-9eed-e686b95151f3', N'Part 89 - Remote validation', N'Sometimes, to check if a field value is valid, we may need to make a database call. A classic example of this is the user registration page. To register a user, we need a unique username. So, to check, if the username is not taken already, we have to make', N'//Controller Action Method: 
public JsonResult IsUserNameAvailable(string UserName)
{
    return Json(!db.Users.Any(x => x.UserName == UserName),
                                         JsonRequestBehavior.AllowGet);
}
Model Property and its attribute 
 ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0c6fc026-2a65-4b88-93de-ee327a7c9f94', N'@ViewData.ModelMetadata', NULL, NULL, N'http://csharp-video-tutorials.blogspot.com/2013/06/part-46-accessing-model-metadata-from.html', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1b7cf970-525e-49d2-b16b-ee4fbd5a6296', N'How model binding works', N'When MVC receives an HTTP request, it routes it to a specific action method of a controller. It determines which action method to run based on what is in the route data, then it binds values from the HTTP request to that action method''s parameters. 

MVC will try to bind request data to the action parameters by name. MVC will look for values for each parameter using the parameter name and the names of its public settable properties.

MVC will bind data from various parts of the request and it does so in a set order', N'1. Form values: These are form values that go in the HTTP request using the POST method. (including jQuery POST requests).
2. Route values: The set of route values provided by Routing
3. Query strings: The query string part of the URI.

In order for bindi', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'76ca2a4b-38c2-474e-9a54-f20db3779924', N'@RenderBody() and Layout', N'The RenderBody method resides in the master page, or in Razor this is commonly referred to as the Layout page. There can only be one RenderBody method per Layout page. If you’re from Web Forms world, the easiest way to think of RenderBody is it’s like the ContentPlaceHolder server control. The RenderBody method indicates where view templates that are based on this master layout file should “fill in” the body content.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'81034500-bd02-4371-bba6-f9780e9b218c', N'Built-in HTML Helpers are further divided into three categories:', N'1. Standard HTML Helpers
2. Strongly Typed HTML Helpers
3. Templated HTML Helpers', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1aaef33e-bfe8-449c-91e0-fa0edb3eeecb', N'Default Model Binding algorithm', N'Binding to Primitive type: HttpGET request embeds data into a query string. MVC framework automatically converts a query string to the action method parameters. For example, the query string "id" in the following GET request would automatically be mapped to the id parameter of the Edit() action method.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'68d0d39f-eb76-4dbc-abb8-fade96c69e1b', N'ValidateInput : Part 76', N'It is used to enable or disable request validation. By default, request validation is enable and it doesn''t allow to submit any html or script to prevent cross site scripting.', N'[ValidateInput]', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ab5c80b9-6e8d-436a-b0d5-fbd38198be10', N'Difference between HTML helpers and server controls ', N'The primary difference between HTML helpers and server controls comes in the technical
implementation: whereas server controls are full-blown classes that derive from
a particular base class, HTML helpers are exposed in the form of extension methods
that extend the HtmlHelper object present in ASP.NET MVC views.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'69e3f582-df47-4b66-8105-feb6b2e4c7dd', N'Part 90 - Remote validation when javascript is disabled', N'Validate when data is posted back to controller.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
