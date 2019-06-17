USE [frienzff_Mixup]
GO
/****** Object:  Table [dbo].[TechnologyContents]    Script Date: 06/16/2019 18:53:16 ******/
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5946dc61-a25d-48cf-ae71-07910225694c', N'Service Provider
Service Broker
Service Client', N'• Service Provider: A service provider is responsible for providing the software components that are published as Web services. The software components can be simple classes or complex applications written in some programming language. A service provider describes information of the Web Service using an interface.
The interface specifies information, such as:
1.Service methods that are invoked by a Client
2.URL that the client needs to use to access the service.
3.Network protocol required to access the Web Service.', N'• Service Broker: The interface defined by the service provider is published in a centralized service registry called a service broker. The service broker allows the Web Clients to search the registry for information about published Web Services. The client and the Web service locate each other using service broker.
• Service Client: A service client is the potential client of the service provider''s Web Service, whose information is made available by the service broker. A service client, after locating the Web Service in the service registry, invokes the services implemented by the Web Service. Locating a Web Service in the service registry and invoking its methods is known as the Web Service binding operation. A service client can be a simple Web application or another Web service accessing the published Web Services.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9bf0b67e-28d4-4e0d-bbce-237ac4881cf0', N'empty', N'To view wsdl for a webservice, type URL for the Web Service followed by ?wsdl
as shown below:
http://localhost/WebService/Service1.asmx?wsdlPage', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4834fbf9-f0b8-413b-9899-5082ba4817ad', N'empty', N'The functions used by a Web Service can be accessed by applications using
Internet standards, such as Simple Object Access Protocol (SOAP).', N'SOAP is a protocol that uses eXtensible Markup Language (XML) to
describe data and HyperText Transfer Protocol (HTTP) to transmit
application data.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'86a36f2e-b58f-4429-925d-62bd2fbd9d1d', N'Web Service Description Language (WSDL)', N'Provides format to represent the webs ervice exposed by services provider.
WSDl is xml based grammer that describes how external clients can intract with the web methods as given URL,using each of the supported wire protocols

WSDL provides follow characteristics
1.The name of the XML web methis
2.number of,type id,and order of input parameter
3.return type
4.the HTTP Get, HTTP POST and SOAP calling conventions', N'check one example', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'621867f3-34da-4d06-a72e-6d95599ade15', N'Web service client', N'An application that uses a Web service is called a Web service client.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'15715515-7575-4050-b77e-8eba2d40bc33', N'Web service -  Defination', N'A Web Service exposes a number of methods to provide functions that can be used by one or more applications, regardless of the programming languages,operating systems, and hardware platforms used to develop them. 
The methods that provide such function are called Web Methods.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'231ce64f-1c3a-4b52-849a-ba7775808e4f', N'empty', N'1. HTTP GET Operation: You can pass parameters to a Web Service by calling the ASMX page with query string parameters for the method to call and the values of simple parameters to pass.
Example: WebDemo.asmx/MethodName?Parm1=value
2. HTTP POST Operation: It works the same as GET Operation except that the parameters are passed as standard URL encoded form variables. If you use a client such as wwIPStuff you can use AddPostKey() to add each parameter in the proper parameter
order.
Example: WebDemo.asmx/MethodName
3. SOAP: This is the proper way to call a Web Service in .Net and it is also the way that .Net uses internally to call Web Services. The GET and POST operations are useful if you need to call a Web Service quickly and no SOAP client is readily available. For example: In a browser based client application it may be easier to use GET and POST instead of constructing and parsing the more complex SOAP headers that are passed back and forth in a SOAP request. However, with a proper SOAP client in place SOAP provides the full flexibility of the protocol, where GET and POST operations have to stick to simple inputs and outputs. Among other things that you can do with SOAP is pass complex objects and data over the wire and for these operations to work you need to
use SOAP.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'03bc916a-43b9-4c46-b594-be8e1917dd58', N'Universal Description, Discovery and Integration (UDDI):', N'It provides a standard mechanism to register and discover a Web Service. When a web service provider wants to make a web service available to client applications, the provider describes the Web Service by using a WSDL document. Then, the provider registers the Web Service in the UDDI Directory, which contains pointers to the Web Service and the WSDL document for the Web Service.', N'http://uddi.microsoft.org/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'35827af0-4b46-4ffd-83e8-cb45863a1bba', N'WebMethod attribue ''s Property', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6f157a2e-2da5-4e5b-858e-d3e7affba8b1', N'WebService attribue ''s Property', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e8274548-204c-453d-9f9e-dd51b69c8eb2', N'WebService and WebMethod attribue', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b2b6395d-a3f3-4beb-a003-e66208afedc7', N'empty', N'Class implementting the wer services method implements the ''System.Web.Services.WebServices''', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
