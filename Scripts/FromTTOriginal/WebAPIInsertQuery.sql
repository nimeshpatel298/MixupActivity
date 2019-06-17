USE [frienzff_Mixup]
GO
/****** Object:  Table [dbo].[TechnologyContents]    Script Date: 06/16/2019 18:02:54 ******/
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dd9ee2fd-c7d8-4f62-9ae5-011d56241407', N'Route Dictionary', N'If the framework finds a match for a URI, it creates a dictionary that contains the value for each placeholder. The keys are the placeholder names, not including the curly braces. The values are taken from the URI path or from the defaults. The dictionary is stored in the IHttpRouteData object.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'63f842d6-246e-491b-893b-04645d46335e', N'Extra :', N'Link to understand how to add Per Route Handler or the global Handler.', N'https://www.c-sharpcorner.com/article/webapi-pipeline-revealed-a-true-practical-approach/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6a8ca57a-acd1-477e-9637-0465b0ac02e0', N'Web API using  System.Web.Http assembly', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1ed2510e-fc26-445d-9f92-0624538a1d8c', N'Asp.Net Web API VS Asp.Net MVC', N'1. Asp.Net MVC is used to create web applications that returns both views and data but Asp.Net Web API is used to create full blown HTTP services with easy and simple way that returns only data not view.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'112e2dc6-83ef-44f4-8e40-0b13b36034a3', N'empty', N'In Web API the request are mapped to the actions based on HTTP verbs but in MVC it is mapped to actions name.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e83900d5-fe12-4b12-9504-0f3b3b723982', N'content negotiation', N'the process of selecting the best representation for a given response when there are multiple representations available.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6807d388-aec7-4ffe-868d-100fca054f05', N'<Exception Handling in ASP.NET Web API>', N'Consider following to handle exception in web api', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b667aa34-34d2-4a52-a5d1-11fe217bfb46', N'6. Uniform interface', N'The uniform interface constraint is fundamental to the design of any REST service. It simplifies and decouples the architecture, which enables each part to evolve independently. The four constraints for this uniform interface are:', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4ebaa45f-cca3-42a4-859d-1266b94ae8b3', N'empty', N'3. Web API also takes care of returning data in particular format like JSON,XML or any other based upon the Accept header in the request and you don''t worry about that. MVC only return data in JSON format using JsonResult.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'be773c84-034b-4487-9b33-12b2352b1db7', N'Under-Posting', N'Under-posting happens when the client leaves out some properties', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'befac206-8772-4ef8-a5bb-13b3a4a38076', N'empty', N'Moreover, Web API is light weight architecture and except the web application it can also be used with smart phone apps.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'364242b2-f49d-41d5-ae78-14f886264053', N'Response Type and more exploration', N'These types are part of 
BadRequestErrorMessageResult
BadRequestResult
ConflictResult
CreatedAtRouteNegotiatedContentResult<T>
CreatedNegotiatedContentResult<T>
ExceptionResult
FormattedContentResult<T>
InternalServerErrorResult
InvalidModelStateResult
JsonResult<T>
NegotiatedContentResult<T>
NotFoundResult
OkNegotiatedContentResult<T>
OkResult
RedirectResult
RedirectToRouteResult
ResponseMessageResult
StatusCodeResult
UnauthorizedResult', N'ApiController provide some helper method to return result of type IHttpActionResult.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f6a923f5-2fe9-4fe1-8501-196e7dd534d4', N'empty', N'To allow multiple HTTP verbs for an action, or to allow HTTP verbs other than GET, PUT, POST, DELETE, HEAD, OPTIONS, and PATCH, use the [AcceptVerbs] attribute, which takes a list of HTTP verbs', N'public class ProductsController : ApiController
{
    [AcceptVerbs("GET", "HEAD")]
    public Product FindProduct(id) { }
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'70dd522f-bf72-4bcb-a23e-1c0486ae1cc0', N'6.4 Hypermedia as the engine of application state(HATEOAS)', NULL, N'Need to dig into', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'250ce2f2-2224-40e0-bea1-1e0f3911f4b0', N'empty', N'3. If the return type is an IHttpActionResult, call the method ExecuteAsync to create an HttpResponseMessage.', N'In any Web API method in which you use return Ok(); or return BadRequest(); or something similar, that return statement follows this process, rather than any of the other processes, since the return type of those actions is IHttpActionResult.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fe9b4791-e6ea-4a5d-b129-1e785309c3b5', N'empty', N'2. Web API helps to build REST-ful services over the .NET Framework and it also support content-negotiation(it''s about deciding the best response format data that could be acceptable by the client. it could be JSON,XML,ATOM or other formatted data), self hosting which are not in MVC.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a5399b26-ed22-415a-8a5f-1e8ed6e7229f', N'empty', NULL, N'//Properties
        private readonly ConcurrentDictionary<object, object> _properties = new ConcurrentDictionary<object, object>();
        private object[] _attributeCache;
        private object[] _declaredOnlyAttributeCache;

        public HttpConfig', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b684dda8-a21a-44d4-8f5e-1ea60b74f46d', N'Step 32:
Result Conversion', N'1. If the return type is already an HttpResponseMessage, we don''t need to do any conversion, so pass the return on through.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0fa945f2-589e-44f9-a518-1ffe60cdbaf1', N'ApiController', N'This base class was built specifically for enabling RESTful services, and
you simply return the object (or, objects in a collection) of the data being requested', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'939af88a-7aa7-442c-b9c4-20f69b309971', N'IHttpActionResult', N'The IHttpActionResult interface was introduced in Web API 2. Essentially, it defines an HttpResponseMessage factory', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4f9dfa1f-56bc-48b0-8c16-2270f768f151', N'empty', N'If you prefer an "opt-in" approach, decorate the class with the DataContract attribute. If this attribute is present, members are ignored unless they have the DataMember. You can also use DataMember to serialize private members.', N'[DataContract]
public class Product
{
    [DataMember]
    public string Name { get; set; }
    [DataMember]
    public decimal Price { get; set; }
    public int ProductCode { get; set; }  // omitted by default
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0b79b806-9e4a-4177-ba20-251f209f12e6', N'Enabling Attribute Routing', N'To enable attribute routing, call MapHttpAttributeRoutes during configuration. This extension method is defined in the System.Web.Http.HttpConfigurationExtensions class.', N' public static class WebApiConfig  {
        public static void Register(HttpConfiguration config) {            // Web API routes
            config.MapHttpAttributeRoutes();         }   }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'08463a08-8d88-43e1-b04e-27f80aea117b', N'HttpResponseMessage: Example', NULL, N'public HttpResponseMessage Get()
    {
        HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.OK, "value");
        response.Content = new StringContent("hello", Encoding.Unicode);
        response.Headers.CacheControl = new CacheCon', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b4053655-524f-4a5c-aac0-2faf74eddf07', N'Request-Response Pipeline', NULL, N'https://exceptionnotfound.net/the-asp-net-web-api-2-http-message-lifecycle-in-43-easy-steps-2/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f61a25c6-ba3e-4b4f-998c-326749f105a7', N'advantages of using the IHttpActionResult interface', N'Simplifies unit testing your controllers.
Moves common logic for creating HTTP responses into separate classes.
Makes the intent of the controller action clearer, by hiding the low-level details of constructing the response.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3dc3b999-c413-48eb-8c60-32ced2c752d8', N'empty', N'2. If the return type is void, .NET will return an HttpResponseMessage with the status 204 No Content.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8d3bf7ae-298c-4939-b09f-34907937637a', N'empty', N'HttpResponseException: The HttpResponseException type is a special case. This exception returns any HTTP status code that you specify in the exception constructor', N'Product item = repository.Get(id);
    if (item == null)
    {
        throw new HttpResponseException(HttpStatusCode.NotFound);
    }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0e338083-4c69-4017-b6f6-3b7ca7fcb59e', N'empty', N'HttpError: The HttpError object provides a consistent way to return error information in the response body.
CreateErrorResponse is an extension method defined in the System.Net.Http.HttpRequestMessageExtensions class. Internally, CreateErrorResponse creates an HttpError instance and then creates an HttpResponseMessage that contains the HttpError.
advantage of using HttpError is that it goes through the same content-negotiation and serialization process as any other strongly-typed model.', N'if (item == null)
    {
        var message = string.Format("Product with id = {0} not found", id);
        return Request.CreateErrorResponse(HttpStatusCode.NotFound, message);
    }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'46f1a120-51fe-4cf7-a4a3-3cddee0c77d1', N'Accept, Content-Type, encoding, Header in http request', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'21eb6dc2-6603-42d2-bfed-3e04a16c1b77', N'Routing process', N'1. Matching the URI to a route template.
2. Selecting a controller.
3. Selecting an action.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6e948d37-ed4b-4af3-81a1-3e926b5dde00', N'empty', N'To preserve object references in XML, you have two options. The simpler option is to add [DataContract(IsReference=true)] to your model class. The IsReference parameter enables object references.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'97686268-6463-4370-b5c0-3f1fb5db5371', N'XML Media-Type Formatter', N'XML formatting is provided by the XmlMediaTypeFormatter class. By default, XmlMediaTypeFormatter uses the DataContractSerializer class to perform serialization.

If you prefer, you can configure the XmlMediaTypeFormatter to use the XmlSerializer instead of the DataContractSerializer. To do so, set the UseXmlSerializer property to true:', N'var xml = GlobalConfiguration.Configuration.Formatters.XmlFormatter;
xml.UseXmlSerializer = true;', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9466ce3a-64c2-4f9c-90ed-41002edc24ca', N'IExceptionLogger and IExceptionHandler', N'Explore', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c761d8ca-682d-499b-b492-417eaaeba4ff', N'Routing by Action Name
', N'you can also create a route where the action name is included in the URI:', N'routes.MapHttpRoute(
    name: "ActionApi",
    routeTemplate: "api/{controller}/{action}/{id}",
    defaults: new { id = RouteParameter.Optional }
);', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'df0143db-3a90-4821-9d51-45a3689b15cb', N'REST', N'REST (REpresentational State Transfer) is an architectural style for developing web services.', N'Source: https://en.wikipedia.org/wiki/Representational_state_transfer', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c9e76cae-43d8-473d-bd9e-46ab3f42f11b', N'What is message handler', N'A message handler is a class that receives an HTTP request and returns an HTTP response. Message handlers derive from the abstract HttpMessageHandler class.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'83119e7c-6470-49d7-ac75-46c005157706', N'empty', N'If a controller action returns an IHttpActionResult, Web API calls the ExecuteAsync method to create an HttpResponseMessage. Then it converts the HttpResponseMessage into an HTTP response message.', N'public interface IHttpActionResult
{
    Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken);
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6214e61a-6ffa-4c03-9bc8-4a0d66a5df68', N'REST Architectural constraints', N'Six guiding constraints define a RESTful system. These constraints restrict the ways that the server can process and respond to client requests so that, by operating within these constraints, the service gains desirable non-functional properties, such as performance, scalability, simplicity, modifiability, visibility, portability, and reliability. If a service violates any of the required constraints, it cannot be considered RESTful.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a4440474-d698-47bd-a5d7-4ece87d3f261', N'Route Names', NULL, N' [Route("api/books/{id}", Name="GetBookById")]
    public BookDto GetBook(int id) 
    { …}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7ccc667a-e328-4655-832e-5127eb200b19', N'Step 10:
HttpControllerDispatcher', N'Role: Select the controller (returns Controller Description).
Create the controller (Calls on ControllerDescriptor)
Create context of Controller', N' protected override async Task<HttpResponseMessage> SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
        { 
                   HttpControllerDescriptor controllerDescriptor = ControllerSelector.SelectController(request);
    ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a9ead6b5-facd-41cf-bbeb-59d00ff17fea', N'What is BSON?', N'BSON is a binary serialization format. "BSON" stands for "Binary JSON", but BSON and JSON are serialized very differently. BSON is "JSON-like", because objects are represented as name-value pairs, similar to JSON. Unlike JSON, numeric data types are stored as bytes, not strings.
BSON was designed to be lightweight, easy to scan, and fast to encode/decode.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1ff9b7db-2b17-4523-a2fa-5a4832564cfe', N'empty', N'The XmlSerializer class supports a narrower set of types than DataContractSerializer, but gives more control over the resulting XML. Consider using XmlSerializer if you need to match an existing XML schema.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f2551481-b0a9-42c6-8e10-5c91dd212c54', N'empty', N'Registering Exception Filters: By action
', N'[NotImplExceptionFilter]
    public Contact GetContact(int id)
    {', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'18ac75f6-28d6-4fec-bc72-5d4d7c5afeca', N'1. Client–server architecture', N'The principle behind the client–server constraints is the separation of concerns. Separating the user interface concerns from the data storage concerns improves the portability of the user interface across multiple platforms. however, is that the separation allows the components to evolve independently,', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a02834b7-25b9-432b-83ab-5d7dec08a8c3', N'Web API Routing Vs MVC Routing', N'If you are familiar with ASP.NET MVC, Web API routing is very similar to MVC routing. The main difference is that Web API uses the HTTP verb, not the URI path, to select the action. You can also use MVC-style routing in Web API.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3f970dfa-23b0-4bb0-93b7-5fbdfe349643', N'Return type of controller action', N'A Web API controller action can return any of the following:

void
HttpResponseMessage
IHttpActionResult
Some other type', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9344d35b-9b91-4c51-b467-5fc2e8d339fa', N'1.1 REST Architecture and Its contraints --Done
1.2 Web Api Request- response pipeline --Done(Code Walktrough pending)
1.3 Routing  --Done
1.4 Model, Controller and Action and its role --Done
1.5 Response Type and more exploration   --Done
    Model Bindi', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'844d784a-47d0-4eb6-8c73-5fc650d05ea8', N'URI template', N'A route template looks similar to a URI path, but it can have placeholder values, indicated with curly braces.', N'api/{controller}/public/{category}/{id}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9aa03920-90b0-4caa-917e-65566bd044af', N'Parameter Binding in Web API', N'<Go through the request response pipeline and then explore>', NULL, N'https://docs.microsoft.com/en-us/aspnet/web-api/overview/formats-and-model-binding/parameter-binding-in-aspnet-web-api#model-binders', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'049e3cbd-8c4b-4eee-a63c-66696f301b29', N'empty', N'5. // Ensure we have a principal on the request context (if there is a request context).

HttpRequestContext requestContext = request.GetRequestContext();
if (requestContext == null)
{
    requestContext = new RequestBackedHttpRequestContext(request);
    // if the host did not set a request context we will also set it back to the request.
    request.SetRequestContext(requestContext);
}
6. => Requesrt Pipeline
7. => Exception Handling
8. => Log Handling


 ', N'public class HttpServer : DelegatingHandler
{
//Dispatches an incoming HttpRequestMessage.(Overrides DelegatingHandler.SendAsync(HttpRequestMessage, CancellationToken).)
//SendAsync(HttpRequestMessage, CancellationToken)
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4d0dcd68-3d78-4735-be63-6885cd3f0126', N'empty', N'4. For all other types, .NET will create an HttpResponseMessage and place the serialized value of the return in the body of that message.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4cffece2-2a75-48a0-a470-68caa5b6c935', N'empty', N'Use a tilde (~) on the method attribute to override the route prefix:', N'[RoutePrefix("api/books")]
public class BooksController : ApiController
{
    // GET /api/authors/1/books
    [Route("~/api/authors/{authorId:int}/books")]
    public IEnumerable<Book> GetByAuthor(int authorId) { ... }

    // ...
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cc2e251c-4fbb-4f37-a55d-6a3e6d18f5d8', N'Which methods on the controller are considered "actions"?', N'1. f the name of the controller method starts with "Get", "Post", "Put", "Delete", "Head", "Options", or "Patch", then by convention the action supports that HTTP method.
2. You can specify the HTTP method with an attribute: AcceptVerbs, HttpDelete, HttpGet, HttpHead, HttpOptions, HttpPatch, HttpPost, or HttpPut.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'eeee64be-26f8-45bf-8c7c-6cfcad2ddecb', N'What Gets Serialized?', N'By default, all public properties and fields are included in the serialized JSON. To omit a property or field, decorate it with the JsonIgnore attribute.

Read-only properties are serialized by default.', N'public class Product
{
    public string Name { get; set; }
    public decimal Price { get; set; }
    [JsonIgnore]
    public int ProductCode { get; set; } // omitted
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'36a2f975-aca3-4ecc-b834-6d40e93745ce', N'Step 3 & 4: 
HttpRequestMessage', N'HttpRequestMessage: Represents a HTTP request message.', N'Inheritance Hierarchy
System.Object 
System.Net.Http.HttpRequestMessage
public class HttpRequestMessage : IDisposable {
          public HttpContent Content { get; set; }
          public HttpRequestHeaders Headers { get; }
          public HttpMethod Met', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'99c7845f-10cf-4f06-afc0-6e05a38dd043', N'<Attribute Routing in ASP.NET Web API 2>', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c0993df7-4973-408a-a2da-6efb7f30c2e2', N'<Error Handling>', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a87f1001-c8d5-4149-a2c4-7332f47d1aad', N'empty', N'set a common prefix for an entire controller by using the [RoutePrefix] attribute:', N'[RoutePrefix("api/books")]
public class BooksController : ApiController
{…….}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9a511cb7-791c-4262-adb9-74b0c1bb3342', N'empty', N'For more control over the response, you can also construct the entire response message and include it with the HttpResponseException', N' if (item == null)
    {
        var resp = new HttpResponseMessage(HttpStatusCode.NotFound)
        {
            Content = new StringContent(string.Format("No product with ID = {0}", id)),
            ReasonPhrase = "Product ID Not Found"
        };
   ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'13f95845-633c-440f-916e-74e6553f4707', N'Step 16: 
IHttpController  -- ApiController


Role:
1. Select the Action from Controller class.
2. Finds action Filters, Authentication filters and authorization filters
3. Run all filters 
4. Run the action method.(run ExecuteAsync on ActionFilterResult)', NULL, N'public virtual Task<HttpResponseMessage> ExecuteAsync(HttpControllerContext controllerContext, CancellationToken cancellationToken)
        {
            Initialize(controllerContext);

            HttpControllerDescriptor controllerDescriptor = controlle', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'64e53fcd-f814-4aa0-b412-77ae08258cf5', N'empty', N'another option: Create a new type-specific DataContractSerializer instance and set preserveObjectReferences to true in the constructor. Then set this instance as a per-type serializer on the XML media-type formatter.', N'var xml = GlobalConfiguration.Configuration.Formatters.XmlFormatter;
var dcs = new DataContractSerializer(typeof(Department), null, int.MaxValue, 
    false, /* preserveObjectReferences: */ true, null);
xml.SetSerializer<Department>(dcs);', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8cc18124-731b-4e4c-bda3-791e424e79c5', N'empty', NULL, N'
            FilterGrouping filterGrouping = actionDescriptor.GetFilterGrouping();

            IActionFilter[] actionFilters = filterGrouping.ActionFilters;
            IAuthenticationFilter[] authenticationFilters = filterGrouping.AuthenticationFilters;', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2a8d9d8f-f9fb-4bd6-9a32-7f8a41092715', N'Additional Resources for parameter binding', N'<Must go through all links>', NULL, N'https://docs.microsoft.com/en-us/aspnet/web-api/overview/formats-and-model-binding/parameter-binding-in-aspnet-web-api#additional-resources', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7c5d9379-774f-4517-af91-82ef2a7680b7', N'Step 21: 
Model Binding', N'Each parameter needed by the action can be bound to its value by one of three separate paths. Which path the binding system uses depends on where the value needed exists within the request.', N'1. f data needed for an action parameter value exists in the entity body, Web API reads the body of the request; an instance of FormatterParameterBinding will invoke the appropriate formatter classes.
which bind the values to a media type (using MediaType', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'104cdc82-cfad-4750-89de-835259234759', N'empty', N'When you have mixed MVC and Web API controller and you want to implement the authorization then you have to create two filters one for MVC and another for Web API since boths are different.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'acaf3976-b04a-4d46-a82b-84f3c6a933a7', N'6.1 Resource identification in requests', N'Individual resources are identified in requests, for example using URIs in Web-based REST systems.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'69814e60-37d2-4464-87ff-84fb8c1ea7fb', N'Route Constraints', N'Route constraints let you restrict how the parameters in the route template are matched. The general syntax is "{parameter:constraint}"', N'[Route("users/{id:int}")] Or [Route("users/{id:int:min(1)}")]
public User GetUserById(int id) { ... }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'de023095-38f6-4d93-afa7-863251735e2b', N'empty', N'At most one parameter is allowed to read from the message body.
The reason for this rule is that the request body might be stored in a non-buffered stream that can only be read once.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1cb1730b-dd9b-4f4e-8fa9-8652fb7bcd17', N'Handling Circular Object References', N'By default, the JSON and XML formatters write all objects as values. If two properties refer to the same object, or if the same object appears twice in a collection, the formatter will serialize the object twice. This is a particular problem if your object graph contains cycles, because the serializer will throw an exception when it detects a loop in the graph.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a861fd44-705a-474f-9891-88f5190b696c', N'Action Selection', N'The HTTP method of the request.
The "{action}" placeholder in the route template, if present.
The parameters of the actions on the controller.', N'<ApiControllerActionSelector>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1527ac98-273d-44f2-8d79-8d502337a7d3', N'HttpControllerDescriptor', NULL, N'public virtual IHttpController CreateController(HttpRequestMessage request)
        {
            if (request == null)
            {
                throw Error.ArgumentNull("request");
            }

            // Invoke the controller activator
       ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6ae24f67-6637-4665-8bfd-8f0d7c2c3864', N'Step 1: 
IIS hosting or self-hosting', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f69db3f1-670d-486e-a00c-909ca3592f13', N'Step 7: 
HttpMessageInvoker calls SendAsync on Route Handler object.', NULL, N'public class HttpMessageInvoker : IDisposable
{
 public virtual Task<HttpResponseMessage> SendAsync(HttpRequestMessage request,
            CancellationToken cancellationToken)
        {
            if (request == null)
            {
                throw', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'950455af-142a-49f3-81e7-935027114159', N'5', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'44fde5b2-94a7-4f43-bd58-94021cf93f0f', N'Parameter Bindings', N'A parameter binding is how Web API creates a value for a parameter. Here is the default rule for parameter binding:

Simple types are taken from the URI.
Complex types are taken from the request body.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1eb37232-e983-4d39-9af5-945ef655ef37', N'Routing', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'db73fa7d-6103-40fa-9993-94a9bde84462', N'empty', N'clients are required to know all of the available actions ahead of time.
This means there is an implicit binding between client and server, in that the caller is dependent on a contract and a given set of actions from the service.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'71c50149-19ad-41dc-873a-94b6d9f0a30e', N'empty', N'You can mix Web API and MVC controller in a single project to handle advanced AJAX requests which may return data in JSON, XML or any others format and building a full blown HTTP service. Typically, this will be called Web API self hosting.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e04c6cbe-79b2-4820-896a-95edc139a32b', N'<Explore>', NULL, N'https://docs.microsoft.com/en-us/aspnet/web-api/overview/web-api-routing-and-actions/routing-and-action-selection#extension-points', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ffa8f570-bf80-4f6f-91ed-98b0dd85f115', N'empty', N'You can also provide constraints, which restrict how a URI segment can match a placeholder:', N'constraints: new { id = @"\d+" }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9b1339bb-e2d4-45db-b62a-9ab7d704e304', N'empty', N'Globally', N'GlobalConfiguration.Configuration.Filters.Add(
    new ProductStore.NotImplExceptionFilterAttribute());', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cae545cc-c4ce-4678-88ac-9aec5089c641', N'set an XML serializer for a particular type, call SetSerialize', NULL, N'var xml = GlobalConfiguration.Configuration.Formatters.XmlFormatter;
// Use XmlSerializer for instances of type "Product":
xml.SetSerializer<Product>(new XmlSerializer(typeof(Product)));', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9624e7d7-a7ba-46c9-9d3c-9c1113b820a3', N'Over-Posting', N'A client can also send more data than you expected', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'098a9f08-e44d-480e-8839-a3a46e299a8b', N'empty', N'The primary mechanism for content negotiation in HTTP are these request headers:

    Accept: Which media types are acceptable for the response, such as "application/json," "application/xml," or a custom media type such as "application/vnd.example+xml"
    Accept-Charset: Which character sets are acceptable, such as UTF-8 or ISO 8859-1.
    Accept-Encoding: Which content encodings are acceptable, such as gzip.
    Accept-Language: The preferred natural language, such as "en-us".
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'558f80f7-4df0-4a34-a3fc-a3be0d027fed', N'Step 19: 
ActionFilterResult', N'Role:
1. Run Model Binder
2. Run Action Invoker if find no action filter.
3. Run all action filter first then invoke action method.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7658534b-d83f-48ca-9b79-a5c504a95e06', N'empty', N'If you need more control over the serialization, you can decorate the class with the DataContract attribute. When this attribute is present, the class is serialized as follows:

    "Opt in" approach: Properties and fields are not serialized by default. To serialize a property or field, decorate it with the DataMember attribute.
    To serialize a private or protected member, decorate it with the DataMember attribute.
    Read-only properties are not serialized.
    To change how the class name appears in the XML, set the Name parameter in the DataContract attribute.
    To change how a member name appears in the XML, set the Name parameter in the DataMember attribute.
    To change the XML namespace, set the Namespace parameter in the DataContract class.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a727a71e-b542-4b84-be18-a5e1e7b102aa', N'empty', N'Exception Filters: You can customize how Web API handles exceptions by writing an exception filter. An exception filter is executed when a controller method throws any unhandled exception that is not an HttpResponseException exception.
Exception filters implement the System.Web.Http.Filters.IExceptionFilter interface. The simplest way to write an exception filter is to derive from the System.Web.Http.Filters.ExceptionFilterAttribute class and override the OnException method', N'public class NotImplExceptionFilterAttribute : ExceptionFilterAttribute      {
        public override void OnException(HttpActionExecutedContext context)         {
            if (context.Exception is NotImplementedException)             {
              ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'15e5074c-b424-47b9-866d-a7601a4c4eca', N'empty', NULL, N'[Route("customers/{customerId}/orders")]
    [HttpGet]
    public IEnumerable<Order> FindOrdersByCustomer(int customerId) { ... }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5549cb29-d5e4-43bd-91f6-a81a7a3e0e0a', N'Web API uses the following rules to bind parameters', N'If the parameter is a "simple" type, Web API tries to get the value from the URI. Simple types include the .NET primitive types (int, bool, double, and so forth), plus TimeSpan, DateTime, Guid, decimal, and string, plus any type with a type converter that can convert from a string. (More about type converters later.)
For complex types, Web API tries to read the value from the message body, using a media-type formatter.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e4a890fa-2d54-4278-b186-a85d696ad40f', N'3. Cacheability', N'As on the World Wide Web, clients and intermediaries can cache responses. Responses must therefore, implicitly or explicitly, define themselves as cacheable or not to prevent clients from getting stale or inappropriate data in response to further requests. Well-managed caching partially or completely eliminates some client–server interactions, further improving scalability and performance.', N'How to achieve this?', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b47eed2b-4ab1-48e6-a45c-a989fbf5ea5c', N'6.3 Self-descriptive messages', N'Each message includes enough information to describe how to process the message. For example, which parser to invoke can be specified by a media type.', N'Need to dig into
Message ?', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e7761c3f-c290-4604-98a6-aa44fe4ec6e1', N'Using [FromBody]', N'To force Web API to read a simple type from the request body, add the [FromBody] attribute to the parameter', N'public HttpResponseMessage Post([FromBody] string name) { ... }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f845916b-066d-4f95-919c-aff15bf38d18', N'Server Code', NULL, N'HTTP Server Code : https://github.com/ASP-NET-MVC/aspnetwebstack', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dcd5907d-869f-43e6-be2c-b1fab1d9be21', N'Step 38:
AuthenticationFilters 
Step 39:
HttpControllerDispatcher => No job to do
Step 40:
HttpRoutingDispatcher => No job to do
Step 41:
DelegatingHandlers:At this point, the DelegatingHandler objects can really only change the response being sent 
(e.g.', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'78187494-ce62-42ee-9403-b383122f44dc', N'empty', NULL, N'private IHttpControllerSelector ControllerSelector
        {
            get
            {
                if (_controllerSelector == null)
                {
                    _controllerSelector = _configuration.Services.GetHttpControllerSelector();
  ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2a715812-1bf2-45bb-9e82-bd2922131870', N'Model Binding', N'When Web API calls a method on a controller, it must set values for the parameters, a process called binding.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7202bd0a-451d-48c4-b510-bd5c601d785b', N'Using [FromUri]', N'To force Web API to read a complex type from the URI, add the [FromUri] attribute to the parameter.', N'public HttpResponseMessage Get([FromUri] GeoPoint location) { ... }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f74fd8d9-6d85-4eca-90de-bdc55860bcf6', N'Step 2:
HttpServer:', N'Http Server is type of DeligatingHandler.
Role/Functionality:
1.                 request.SetSynchronizationContext(context); 
// The first request initializes the server
2.  SynchronizationContext context = SynchronizationContext.Current;// Capture current synchronization context and add it as a parameter to the request
 request.Properties[HttpPropertyKeys.SynchronizationContextKey] = synchronizationContext;
3. request.SetConfiguration(_configuration); // Add HttpConfiguration object as a parameter to the request 
4. // Ensure we have a principal, even if the host didn''t give us one
private static readonly IPrincipal _anonymousPrincipal = new GenericPrincipal(new GenericIdentity(String.Empty), new string[0]);
IPrincipal originalPrincipal = Thread.CurrentPrincipal;
      
if (originalPrincipal == null)
{
       Thread.CurrentPrincipal = _anonymousPrincipal;
}
       ', N'Inheritance Hierarchy
System.Object
  System.Net.Http.HttpMessageHandler
    System.Net.Http.DelegatingHandler
      System.Web.Http.HttpServer
        System.Web.Http.SelfHost.HttpSelfHostServer', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5f9521d4-524f-4d29-99d6-bec41eb0236f', N'Step 5:
DelegatingHandler :', N'A base type for HTTP handlers that delegate the processing of HTTP response messages to another handler, called the inner handler.', N'Inheritance Hierarchy
System.Object 
  System.Net.Http.HttpMessageHandler
     System.Net.Http.DelegatingHandler
         System.Net.Http.MessageProcessingHandler
public abstract class DelegatingHandler : HttpMessageHandler {}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'047381cf-356a-4387-81e8-c19affcbbf26', N'HttpConfiguration', N'Explore', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'342dec79-ec12-4038-acf3-c4280e67040d', N'empty', NULL, N' if (authenticationFilters.Length > 0)
            {
                result = new AuthenticationFilterResult(ActionContext, this, authenticationFilters, result);
            }
            
if (exceptionFilters.Length > 0)
            {
                IEx', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
GO
print 'Processed 100 total records'
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b24b324a-4ce8-491d-90e7-c846af26bc86', N'JSON Media-Type Formatter', N'JSON formatting is provided by the JsonMediaTypeFormatter class. By default, JsonMediaTypeFormatter uses the Json.NET library to perform serialization. Json.NET is a third-party open source project', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'972b4fe5-8eea-4be2-8748-c8a146b88597', N'Circular reference issue in WebAPI', N'https://docs.microsoft.com/en-us/aspnet/web-api/overview/formats-and-model-binding/json-and-xml-serialization#handling-circular-object-references', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'43946ec8-e1bd-48d3-9971-cb533e00910f', N'empty', N'During this route-matching phase, the special "{controller}" and "{action}" placeholders are treated just like the other placeholders. They are simply stored in the dictionary with the other values.', N'For the URI path "api/products", the route dictionary will contain:

controller: "products"
category: "all"', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bf49c26d-55ba-4c64-8012-cc9c21677d9f', N'Type Converters', N'You can make Web API treat a class as a simple type (so that Web API will try to bind it from the URI) by creating a TypeConverter and providing a string conversion.', NULL, N'https://docs.microsoft.com/en-us/aspnet/web-api/overview/formats-and-model-binding/parameter-binding-in-aspnet-web-api#type-converters', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0250df14-263e-4e62-96f7-ccc190fedc09', N'Non-Actions', N'To prevent a method from getting invoked as an action, use the [NonAction] attribute.', N'[NonAction]  
public string GetPrivateData() { ... }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9bb3e231-6179-4f3b-9489-d09aeeb8bb0b', N'APIController adds feature to each Controller', N'<ApiController Feature>', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f8aa2763-9288-4d3c-968f-d16cbbc63148', N'Camel Casing', N'To write JSON property names with camel casing, without changing your data model, set the CamelCasePropertyNamesContractResolver on the serializer:
', N'var json = GlobalConfiguration.Configuration.Formatters.JsonFormatter;
json.SerializerSettings.ContractResolver = new CamelCasePropertyNamesContractResolver();', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b06e6f1e-3caf-49ed-a4d8-d2f97d9769d7', N'Indenting', N'To write indented JSON, set the Formatting setting to Formatting.Indented:', N'var json = GlobalConfiguration.Configuration.Formatters.JsonFormatter;
json.SerializerSettings.Formatting = Newtonsoft.Json.Formatting.Indented;', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'01ec4b7c-0c12-4717-991b-d3076341839d', N'empty', N'You can override the action name by using the [ActionName] attribute.', N'[HttpGet]
    [ActionName("Thumbnail")]
    public HttpResponseMessage GetThumbnailImage(int id);
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'79468842-93ae-4b4a-bff2-d3e1150c28b2', N'Why Attribute Routing?', N'The first release of Web API used convention-based routing. In that type of routing, you define one or more route templates, which are basically parameterized strings. When the framework receives a request, it matches the URI against the route template. 
One advantage of convention-based routing is that templates are defined in a single place, and the routing rules are applied consistently across all controllers. Unfortunately, convention-based routing makes it hard to support certain URI patterns that are common in RESTful APIs. For example, resources often contain child resources: Customers have orders, movies have actors, books have authors, and so forth. It''s natural to create URIs that reflect these relations:', N'/customers/1/orders', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4a6ff997-8a80-4ce0-ade6-d55bf03dda14', N'Custom Route Constraints', NULL, N'https://docs.microsoft.com/en-us/aspnet/web-api/overview/web-api-routing-and-actions/attribute-routing-in-web-api-2#custom-route-constraints', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c7d2431c-1c6a-43d1-b72b-d6431a149e75', N'empty', N'Asp.Net Web API is new framework and part of the core ASP.NET framework. The model binding, filters, routing and others MVC features exist in Web API are different from MVC and exists in the new System.Web.Http assembly. In MVC, these featues exist with in System.Web.Mvc. Hence Web API can also be used with Asp.Net and as a stand alone service layer.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7207248f-1bc4-42e4-8bf3-d754ce91966d', N'empty', N'A default can have the special value RouteParameter.Optional. If a placeholder gets assigned this value, the value is not added to the route dictionary.', N'For "api/products/toys/123", however, the route dictionary will contain:

controller: "products"
category: "toys"
id: "123"', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'84dffb48-a6fd-4d40-99e5-d78da51e441d', N'Step 6:
HttpRoutingDispatcher ', N'Role:
1. Find the route(Route Handler) in Request
2. if it does not find in Request, search Route Handler in config.Routes
3. if it does not find then create the Object of HttpMessageInvoker with default Handler else create the object of HttpMessageInvoker with Route Specific.
4. calls SendAsync on HttpMessageInvoker object', N'public class HttpRoutingDispatcher : HttpMessageHandler
{
protected override Task<HttpResponseMessage> SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
        {
            // Lookup route data, or if not found as a request prop', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cad97a49-77d8-445b-9cb9-d880a8d930e7', N'empty', N'In Web API, controller class inherits from ApiController class where in ASP.NET MNC, Controller is inherited from Controller classs', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'405815a4-7219-47b2-8cf7-d905c3513ce4', N'empty', N'To preserve object references in JSON, add the following code to Application_Start method in the Global.asax file:', N'var json = GlobalConfiguration.Configuration.Formatters.JsonFormatter;
json.SerializerSettings.PreserveReferencesHandling = 
    Newtonsoft.Json.PreserveReferencesHandling.All;', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'11673b8d-d519-4521-b0d6-d956aca5e951', N'empty', N'When you create a route, you can provide default values for some or all of the placeholders:', N'defaults: new { category = "all" }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'40806cbb-4337-41cb-a4a1-da9184ea3413', N'empty', N'By controller
', N'[NotImplExceptionFilter]
public class ProductsController : ApiController {
    // … }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'139616c3-e44b-4afe-bf58-dac759421260', N'empty', NULL, N'3. If a custom HttpParameterBinding exists, the system uses that custom binding to build the value.
which results in any kind (simple or complex) of object being mappable ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7b1c3ab5-6cca-4190-876e-daf69c50a7f4', N'empty', N'If you prefer, you can configure the JsonMediaTypeFormatter class to use the DataContractJsonSerializer instead of Json.NET. To do so, set the UseDataContractJsonSerializer property to true:', N'var json = GlobalConfiguration.Configuration.Formatters.JsonFormatter;
json.UseDataContractJsonSerializer = true;', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fe1378da-258e-4974-a4f2-db1f1c069b63', N'Custom Media formatter', NULL, N'https://docs.microsoft.com/en-us/aspnet/web-api/overview/formats-and-model-binding/media-formatters#example-creating-a-csv-media-formatter', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8190dd5d-3525-4478-a605-dbda70090a2d', N'<HandsOn>', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8df9cfa8-dba8-4642-83f4-e026a15b2ad9', N'4. Layered system', N'A client cannot ordinarily tell whether it is connected directly to the end server, or to an intermediary along the way. Intermediary servers can improve system scalability by enabling load balancing and by providing shared caches. They can also enforce security policies.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'798513a6-fdc5-4c4b-99df-e0970a44613f', N'XML Serialization', N'Behaviors of the XML formatter using the default DataContractSerializer: 

    All public read/write properties and fields are serialized. To omit a property or field, decorate it with the IgnoreDataMember attribute.
    Private and protected members are not serialized.
    Read-only properties are not serialized. (However, the contents of a read-only collection property are serialized.)
    Class and member names are written in the XML exactly as they appear in the class declaration.
    A default XML namespace is used.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'82a76e05-9926-490d-8e79-e59a780417cd', N'<Routing and Action Selection in ASP.NET Web API>', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'962650fb-9943-449d-b451-e5ad33e5c333', N'empty', NULL, N'
            if (routeData == null || (routeData.Route != null && routeData.Route.Handler is StopRoutingHandler))
            {
                request.Properties.Add(HttpPropertyKeys.NoRouteMatched, true);
                return Task.FromResult(request.C', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cdafca27-5f00-4b4e-aa4e-e7285a2bc9bc', N'Web API Help Page', N'Web Api framework provides in built support of Help Page. IApiExplorer Interface provides the details of API.', NULL, N'https://docs.microsoft.com/en-us/aspnet/web-api/overview/getting-started-with-aspnet-web-api/creating-api-help-pages', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'75e283f8-43be-461c-a00c-e73c80fab5a5', N'Removing the JSON or XML Formatter', NULL, N'void ConfigureApi(HttpConfiguration config)
{
    // Remove the JSON formatter
    config.Formatters.Remove(config.Formatters.JsonFormatter);
    // or
    // Remove the XML formatter
    config.Formatters.Remove(config.Formatters.XmlFormatter);
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'031a9166-890f-49b5-b8e4-e858057a88bb', N'empty', N'There are two special placeholders: "{controller}" and "{action}".

"{controller}" provides the name of the controller.
"{action}" provides the name of the action. In Web API, the usual convention is to omit "{action}".', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'41053540-7602-40ea-8f3f-e98488b944bc', N'Resource', NULL, N'The resources themselves are conceptually separate from the representations that are returned to the client. For example, the server could send data from its database as HTML, XML or as JSON—none of which are the server''s internal representation.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b075d3ac-8e94-4ecb-87e6-ec78aac23f92', N'empty', NULL, N'2. If data needed for a parameter value exists in the URL or query string, said URL is passed into an instance of IModelBinder, which uses an IValueProvider to map values to a model.
which results in a simple type.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'951a61b2-19dc-4507-bc2f-ece93cee06bf', N'2. Statelessness', N'The client–server communication is constrained by no client context being stored on the server between requests. Each request from any client contains all the information necessary to service the request, and session state is held in the client(Not a mandatory clause). The session state can be transferred by the server to another service such as a database to maintain a persistent state for a period and allow authentication. The client begins sending requests when it is ready to make the transition to a new state. While one or more requests are outstanding, the client is considered to be in transition. The representation of each application state contains links that can be used the next time the client chooses to initiate a new state-transition', N'Need more Info :
 The representation of each application state contains links that can be used the next time the client chooses to initiate a new state-transition', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'36559536-a3d9-43e9-a11e-eee37fa4f7e8', N'What is delegating handler', N'Typically, a series of message handlers are chained together. The first handler receives an HTTP request, does some processing, and gives the request to the next handler. At some point, the response is created and goes back up the chain. This pattern is called a delegating handler.', N'File:HttpClientFactory', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dcbded64-0eda-4f30-a752-eff01740bd09', N'1.1 REST Architecture and Its contraints', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c6736519-a7ee-4a72-9fa3-effbee9fe3d1', N'empty', N'Now the controller action will return JSON that looks like this:', N'{"$id":"1","Name":"Sales","Manager":{"$id":"2","Name":"Alice","Department":{"$ref":"1"}}}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cd00e1c1-63f4-4be5-8a16-f016662a03dc', N'empty', N'Return type How Web API creates the response
void : Return empty 204 (No Content)
HttpResponseMessage:  Convert directly to an HTTP response message.
IHttpActionResult : Call ExecuteAsync to create an HttpResponseMessage, then convert to an HTTP response message.
Other type : Write the serialized return value into the response body; return 200 (OK).', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'699a80f9-2911-4c39-9662-f101b3dcd3ba', N'6.2 Resource manipulation through representations', N'When a client holds a representation of a resource, including any metadata attached, it has enough information to modify or delete the resource.', N'Need to dig into', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'82270611-c38d-4ac1-af1a-f4fe09c5d0b3', N'Selecting a Controller', N'Look in the route dictionary for the key "controller".
Take the value for this key and append the string "Controller" to get the controller type name.
Look for a Web API controller with this type name.', N'<Code Walk Trough> <DefaultHttpControllerSelector>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'29b72dd7-8fb1-4036-8902-f959a41c8801', N'empty', N'Instead of using the naming convention for HTTP verbs, you can explicitly specify the HTTP verb for an action by decorating the action method with one of the following attributes:
[HttpGet]   [HttpPut]   [HttpPost]    [HttpDelete]     [HttpHead]     [HttpOptions]   [HttpPatch]', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd9406eec-fb83-467a-aa3a-fbdd14931324', N'<Model Validation>', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c59d2d5a-a7db-435d-9a52-fc1ab1a04140', N'empty', N'The framework tries to match the segments in the URI path to the template. Literals in the template must match exactly. A placeholder matches any value, unless you specify constraints. The framework does not match other parts of the URI, such as the host name or the query parameters. The framework selects the first route in the route table that matches the URI.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f9b294ab-b599-4f02-83d6-ff38d6962505', N'empty', N'REST uses HTTP to communicate', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'41013510-3ef6-4ee3-bb0c-ffb038ab75c3', N'empty', N'To determine which action to invoke, the framework uses a routing table. 
To find the controller, Web API adds "Controller" to the value of the {controller} variable.
To find the action, Web API looks at the HTTP verb, and then looks for an action whose name begins with that HTTP verb name. For example, with a GET request, Web API looks for an action prefixed with "Get", such as "GetContact" or "GetAllContacts". This convention applies only to GET, POST, PUT, DELETE, HEAD, OPTIONS, and PATCH verbs. You can enable other HTTP verbs by using attributes on your controller. Other placeholder variables in the route template, such as {id}, are mapped to action parameters.', N'GlobalConfiguration.Configuration.Routes.MapHttpRoute("","",null);

routes.MapHttpRoute(
    name: "API Default",
    routeTemplate: "api/{controller}/{id}",
    defaults: new { id = RouteParameter.Optional }
);', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
