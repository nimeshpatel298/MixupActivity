USE [frienzff_Mixup]
GO
/****** Object:  Table [dbo].[TechnologyContents]    Script Date: 06/16/2019 18:36:53 ******/
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0ab270a0-431a-434e-93be-034d544ba747', N'MessageHeaderArray', N'Lets say we have 
[MessageContract]
    public class Department
    {
        [MessageHeader]
        public string DepartmentName;
        [MessageHeader]
        public Employees Employee();

    }
Message format will be :
<Department>
  <DepartmentName>Production</DepartmentName>
  <Employees>
    <Employee>Sam</Employee>
    <Employee>Ram</Employee>
    <Employee>Raja</Employee>
  </Employees>
</Department>

', N'If we use MessageHeaderArray in place of MessageHeader for the Employees,Message format will be like below format :
<Department>
  <DepartmentID>PRO1243</DepartmentID>
  <DepartmentName>Production</DepartmentName>
  <Employee>Sam</Employee>
  <Employee>Ra', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ec36a1f7-28f6-454f-ac6f-05677631a491', N'empty', N'1. OneWay/Simplex
2. Request-Reply
3. Duplex', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'23b8da31-5df1-467a-8b02-059b917f5f9c', N'in-process hosting, or in-proc for short', N'A special case of hosting is in-process hosting, or in-proc for short, where the service resides in the same process as the client', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6ec7dfba-68dd-4e40-a1c2-067cf4090b43', N'Advantage', N'1.WCF is interoperable with other services when compared to .Net Remoting,where the client and service have to be .Net. 
2.WCF services provide better reliability and security in compared to ASMX web services. 
3.In WCF, there is no need to make much change in code for implementing the security model and changing the binding. Small changes in the configuration will make your requirements. 
4.WCF has integrated logging mechanism, changing the configuration file settings will provide this functionality. In other technology developer has to write the code. ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b43864e5-862c-47f5-aaca-09dbd7ba41df', N'empty', N'WSHttpBinding              HTTP/HTTPS             Text, MTOM                Yes', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a2058dc5-777e-4fc0-977b-09f07e6adad3', N'empty', N'Difference between WCF service and WCF service is how client communicate to server.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a15bae7b-a39b-49e7-8be8-0a063eb9261f', N'Service behaviour Attribute : ', N'1.TransactionAutoCompleteonSessionClose
2.TransactionTimeOut :
3.transactionUIsolationLevel :', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a6de062d-b38e-470f-a6ce-0ab0f402e043', N'Protection level Mode ', N'1.none : Disable the message protection 
2.Sign  : sign the data but doesn’t encrpt the data
3.Encrypt and sign :  sign the data and encrpt the data', N'[ServiceContract(ProtctionLevel = ProtectionLevel.Sign)', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cb255be3-65d3-419b-8970-0d961dd9614a', N'Service Behaviour', N'Defination : ??
ServiceBehavior  attribute is used to define service behaviour or in web.config file we can define
can we define at service level only ?? Not at operation level ??
Where can we define ?? In Interface or service implementation.
Who will override whose effect ?', N'Attributes ?', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'61904d95-271a-4860-9c26-0f138da3b53c', N'OneWay/Simplex', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5b898ca2-8d66-4635-9fd4-10258ff2ebdb', N'creating proxy at runtime:', N'by using channel factory from the address,bindings,and contract details and then call createChannel on the factory', N'public class Test
{
    public void Test()
    {
        BasicHttpBinding myBinding = new BasicHttpBinding();
        EndpointAddress myEndpoint = new EndpointAddress("http://localhost/MyService/");
        ChannelFactory<imyservice> myChannelFactory = ne', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c79e088b-ef81-4eac-890e-176bef83feec', N'[WebGet] [Webinvoke]
uritemplate -- uritemplatetable', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b8cca85a-7dde-451e-8ce7-20830db05de0', N'4.Windows Services', N'Prons :
Cons', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'149936ef-0147-4b4b-94e0-20f77b24cf9f', N'Configuration Setting Format:
<System.SeviceModel>
</System.SeviceModel>', N'<behaviors>
  <endpointBehaviors>
         <behavior name="">
            <webHttp helpEnabled="true" />
         </behavior>
 </endpointBehaviors>
 <serviceBehaviors>
         <behavior name="">
            <serviceMetadata httpGetEnabled="true" />
            <dataContractSerializer maxItemsInObjectGraph="2147483647" />
         </behavior>
 </serviceBehaviors>
</behaviors>', N'<bindings>
     <netTcpBinding>
         <binding name="" >
         </binding>
     </netTcpBinding>
</bindings>
<services>
        <service behaviorConfiguration="" name="">
         <endpoint address="" behaviorConfiguration="" binding="" bindingConfig', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b6eaf657-f14d-4f40-a818-2159e62a13f4', N'WCF Extensibility – Behavior configuration extensions', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6d2d6e34-ea6c-4c9c-85b7-25a5cee1efa6', N'

Transaction :', N'(Scenario) Consider for example client calling multiple service or service itself calling another service, this type of system are called as Distributed Service-oriented application. Now the questions arise that which service will begin the transaction? Which service will take responsibility of committing the transaction? How would one service know what the rest of the service feels about the transaction? Service could also be deployed in different machine and site. Any network failure or machine crash also increases the complexity for managing the transaction.', N'System.Transaction', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1c02cfe6-7b5d-4503-981c-2607bb7a16d2', N'Structure of Configuration of WCF services', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8e7e256a-058f-4eb5-9ecc-26e9240ff039', N'3.Message Contract', N'As I said earlier, WCF uses SOAP message for communication. Most of the time developer will concentrate more on developing the DataContract, Serializing the data, etc. WCF will automatically take care of message. On Some critical issue, developer will also require control over the SOAP message format. In that case WCF provides Message Contract to customize the message as per requirement.', N'IsWrapped = true
WrapperName = ""
WrapperNamespace = ""
ProtectionLevel=""
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'258f83d1-401b-4f96-8d40-26efe6082dbd', N'Operation behaviour Attribute : ', N'1.TransactionScopeRequired :
2.TransactionAutoComplete:', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bb1e435a-b90f-4955-b32b-2aaa81494642', N'WCF Design Goals :', N'Interoprability
Service oriented development
Unification of existing distributed architechture', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9203d90f-7372-4a8c-9b76-2e1dd60c1db3', N'3.Singleton Service :', N'When WCF service is configured for Singleton instance mode, all clients are independently connected to the same single instance. This singleton instance will be created when service is hosted and, it is disposed when host shuts down.', N'[ServiceBehavior(InstanceContextMode=InstanceContextMode.Single)]
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f0a34ed0-7b6d-4776-88bb-2f175576d5d6', N'Operation Contract', NULL, N'System.ServiceModel.OperationContratAttribute
Action = ""
,AsyncPattern= false
,IsInitiating = false
 ,IsOneWay = ""
,IsTerminating = false
,Name = "" 
,ProtectionLevel = System.Net.Security.AuthenticationLevel
,ReplyAction = ""', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dc8e3e41-fb53-4532-84d3-2f45df570610', N'throttling', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'88ede5da-59e2-4004-b09a-30f5a17da690', N'DCOM / COM:', N'DCOM (Distributed Component Object Model) is a set of Microsoft concepts and program interfaces in which client program object s can request services from server program objects on other computers in a network. DCOM is based on the Component Object Model (COM), which provides a set of interfaces allowing clients and servers to communicate within the same computer.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0cbb0c07-89f9-4b75-a162-341a8db7f128', N'Security mode', N'1.none: user will be not be authenticated and No message encryption
2.transport : Transport security model for authenticating the users and protecting the messages. (Default encryption algorthm is Basic 256)
3.Message :Message security model for authenticating the users and protecting the messages. 
4.Both : can appyle message level and transport level security', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'11732c24-29e8-4158-821f-362cb26686cc', N'Bindings', N'BasicHttpBinding,NetTcpBinding', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3a7fc12b-17a4-4845-8c03-38a4f755fde1', N'2.IIS', N'Prons :
Cons', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1ee470c4-cf44-41f1-abce-396b1e95c944', N'2.Binding', N'Binding will describes how client will communicate with service. There are different protocols available for the WCF to communicate to the Client. You can mention the protocol type based on your requirements.

', N'Transport -Defines the base protocol to be used like HTTP, Named Pipes, TCP, and MSMQ are some type of protocols. 
Encoding (Optional) - Three types of encoding are available-Text, Binary, or Message Transmission Optimization Mechanism (MTOM). MTOM is an ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'69180aea-4578-48d7-b394-3d588dffbe6c', N'ClientProxy / Client', N'When we add reference we name it folllowed by clientProxy and while creating the object of the proxy class,We name it as client automatically.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1e6b85b1-c631-4fb4-80df-3e97e9bf8e26', N'1.Self hosting :', N'Prons :
Cons', N'ServiceHost sh = new Servicehost(srvice )
sh.open()', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'01d1c2ce-59fd-4dc8-bc65-40eca76216fd', N'1.maxConcurrentCalls:', N'Limits the total number of calls that can currently be in progress across all service instances. The default is 16. ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'84972f91-8f03-4efd-88f3-4180b4b6ffba', N'MSMQ (Microsoft Message Queuing) :', N' Message Queuing (MSMQ) technology enables applications running at different times to communicate across heterogeneous networks and systems that may be temporarily offline. Applications send messages to queues and read messages from queues.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd1a01b3e-4447-4f20-ac8d-42545686d28b', N'Throttling (It is also one of service behaviour)', N'WCF throttling provides some properties that you can use to limit how many instances or sessions are created at the application level. Performance of the WCF service can be improved by creating proper instance.', N'In Web.config file :
<system.serviceModel>
    <services >
      <service behaviorConfiguration="ServiceBehavior"  name="MyService">
       </service>
    </service>
   <behaviors>
      <serviceBehaviors>
        <behavior name="ServiceBehavior">
       ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6fa98477-40f0-43f9-a9e5-42a51a516852', N'Instance Deactivation :', N'RealeaseInstanceMode.None 
RealeaseInstanceMode.BeforeCall 
RealeaseInstanceMode.AfterCall 
RealeaseInstanceMode.BeforeAndAfterCall ', N'
[OperationBehavior(ReleaseInstanceMode=ReleaseInstanceMode.BeforeCall]
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e02f8e31-4ae5-4c4e-a84f-4e5d55107fd3', N'Why WCF ?', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'43610467-7e45-4140-b064-50b96412cbf3', N'You have to follow certain rules while working with Message contract', N'

When using Message contract type as parameter, Only one parameter can be used in servicie Operation 
[OperationContract]
void SaveEmployeeDetails(EmployeeDetails emp);

Service operation either should return Messagecontract type or it should not return any value 
[OperationContract]
EmployeeDetails GetEmployeeDetails();

Service operation will accept and return only message contract type. Other data types are not allowed. 
[OperationContract]
EmployeeDetails ModifyEmployeeDetails(EmployeeDetails emp);
 
Note: If a type has both Message and Data contract, service operation will accept only message contract.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'05826e52-45c9-4054-bec7-5595682d5aaf', N'EndPoint', N'WCF Service is a program that exposes a collection of Endpoints. Each Endpoint is a portal for communicating with the world. 
End point consists of three components', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'78640bf4-1934-4058-8a5a-5f4ca55a3740', N'empty', N'In Normal WCF service,Client calls the server''s method,Request wll be sent to server in soap message format with HTTP protocol', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'55b9540a-0e7c-42a7-8d6c-60046bcccb5c', N'empty', N'Server Exceutes the method and send the reply back to client in SOAP message format.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a40e5813-bd83-4c70-8e37-62b319a4819d', N'DataMember', NULL, N'EmitDefault = ""
IsRequired = ""
Name= ""
Order = ""
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6ac64b83-8c34-451c-84f1-659092fb3c2f', N'what are the alternatives to WCF earlier ?', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'da80131b-a68f-4a77-87c0-66d2c89f0886', N'Message format in Web service and RESTfull service :', N'http://tutorials.jenkov.com/web-services/message-formats.html', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fe6e236a-1d0b-4a42-a550-6ab5521fb34a', N'Transfer Security', N'Transfer security is the means by which WCF secures messages over the network
WCF gives you two options to implement transfer security: transport security and message security. Transport security secures the entire communication channel (e.g., by using SSL), while message security secures each message individually which security will be provided by Binding and which secuirity will be provided by behaviour', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e0ffa164-f784-4ff8-8075-6cf047000f8f', N'What is proxy ?', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'625bcbb7-4b92-4219-8926-6e1f5b7615cc', N'Advantage and disadvsntsge :', N'
http://csharp-video-tutorials.blogspot.in/2014/02/part-30-advantages-and-disadvantages-of.html', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'de23ab80-132d-45fa-a048-7122b4679a2f', N'empty', N'                                      IPC                                Binary                   No ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'55095672-5ced-40b1-a11b-779dc23f659d', N'3.Contract', N'Collection of operation that specifies what the endpoint will communicate with outside world. Usually name of the Interface will be mentioned in the Contract, so the client application will be aware of the operations which are exposed to the client.', N'<system.serviceModel>
<services>
      <service name="MathService"
        behaviorConfiguration="MathServiceBehavior">
       <endpoint address="http://localhost:8090/MyService/
                  MathService.svc" contract="IMathService"
          binding', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'995de699-82c9-4061-8818-782db15b5438', N'Channels in WCF', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9ded884e-07e5-4e96-9b8d-794873671b2d', N'How can we generate Proxy', N'WCF provides : by adding Service reference,It creates proxy for us. 
SvcUtil: command-line
utility to import the service metadata and generate a proxy', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6ba83b38-1b82-4c74-8856-7b547686057e', N'Diifeerent type of bindings', N'http://www.dotnet-tricks.com/Tutorial/wcf/VE8a200713-Understanding-various-types-of-WCF-bindings.html', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bfe63bf5-ea19-42d5-92de-7bb87d53f8a7', N'1.Per-Call Service :', N'When WCF service is configured for Per-Call instance mode, Service instance will be created for each client request. This Service instance will be disposed after response is sent back to client.', N'[ServiceBehavior(InstanceContextMode=InstanceContextMode.PerCall)]

How to do in web.config file ??', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bf7320c0-bdd6-4913-bc3e-7e9ac6bc04f1', N'clientCredentialtype  option for transport Security', N'1.None : No authetication
2.basic : User will be authenticated against username and passeword against active directory
2.NTLM :Workgroup Environment
4.Windows: 
5.Certificate: x 509 certificate', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7cf7a116-5f02-4565-9a79-8034fed9c5e9', N'MessageHeader', NULL, N'Actor = ""
MustUnderstand = ""
Name = ""
Namespace = ""
Order = ""
,ProtectionLevel=""
relay=""', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c656c448-21c9-4010-9183-8599a685327c', N'massage Exchange Pattern :', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1dafe114-1d5c-44a5-99e0-8c3098aedcfa', N'3.Windows Activation Servers', N'Prons :
Cons', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c05e514f-9bde-4415-9f91-8c377790776f', N'.NET Remoting ', N'.NET Remoting is a mechanism for communicating between objects which are not in the same process..NET objects are exposed to remote processes, thus allowing inter process communication. The applications can be located on the same computer, different computers on the same network, or on computers across separate networks.Microsoft .NET Remoting provides a framework that allows objects to interact with each other across application domains.
What are remote objects? Any object outside the application domain of the caller application should be considered remote, where the object will be reconstructed. Local objects that cannot be serialized cannot be passed to a different application domain, and are therefore non remotable.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'602e1c55-ab77-41f4-85ae-8d8bd19117d3', N'clientCredentialtype  option for Message Security', N'1.none:no authentication
2.Windows
3.certificate
4.username:
5.IssueToken', N'How it works ?', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3bf96814-0108-4dd8-8bd1-8dbfddbc9264', N'empty', N'WE need to provide the method and uriTemplate.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ca326bc6-0e63-48dd-8e87-929b98c5a258', N'2.Per-Session Service:', N'When WCF service is configured for Per-Session instance mode, logical session between client and service will be maintained. When the client creates new proxy to particular service instance, a dedicated service instance will be provided to the client. It is independent of all other instance. 
How it will identify that it is first time client is calling (Identify the user ?)...how it will dospose the service instance.', N'[ServiceBehavior(InstanceContextMode=InstanceContextMode.PerSession)]', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3607e8b3-93c5-4524-a6fa-9518c942b61f', N'TransactionFlowAttribute:', N'Even after enabling transaction flow does not mean that the service wants to use the client''s transaction in every operation. We need to specify the TransactionFlowAttribute in operational contract to enable transaction flow.
1.NotAllowed : Client cannot propagate its transaction to service even client has transaction
2.Allowed : Service will allow to flow client transaction.It is not necessary that service to use client transaction.
3.Mandatory : Both Service and client must use transaction aware binding', N'[OperationContract (TransactionScopeRequired = true,TransactionAutoComplete)]
[TransactionFlow(TransactionFlowOption.Allowed)]
int Add(int a, int b);', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9a8f09ca-0c0f-4e00-a1c3-9d7b0363c8f4', N'Types of WCF services ?', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'11773589-a999-431f-b288-a3f0c7ab7ac1', N'empty', N'NetMsmqBinding        MSMQ                    Binary                     No', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'029f4462-bfd8-477d-9152-a4b06d2ba741', N'4.Fault Contract', N'Suppose the service I consumed is not working in the client application. I want to know the real cause of the problem. How I can know the error? For this we are having Fault Contract. Fault Contract provides documented view for error occurred in the service to client. This helps us to easy identity, what error has occurred.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd386ab7d-ccb0-4b50-9f22-a50d08a99d65', N'Transport and encoding for common bindings', N'Name                               Transport                         Encoding           Interoperable', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'21609297-6a45-446b-afa9-a58185bda61f', N',MessageParameter,MessageProperty', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'780464a0-5485-43e7-a1c8-a7f0876abd17', N'empty', N'
    <client>
  <endpoint address="" behaviorConfiguration="" binding="" bindingConfiguration="" name="" contract="" />
    </client>

    <comContracts>
    </comContracts>
This section can only be defined in the machine.config file.
    <commonBehaviors>    
    </commonBehaviors>', N'<diagnostics>
    </diagnostics>

    <extensions>
    </extensions>  

    <protocolMapping>  
    </protocolMapping>  

    <routing>  
    </routing>

    <serviceHostingEnvironment>
    </serviceHostingEnvironment>
<standardEndpoints>
    </standardEn', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'86ed5315-871d-40ba-b939-abac933d2a68', N'SvcConfigEditor', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1aef22a6-e7f7-43e5-ba8d-accbd15b3576', N'Instance Management (It is one of service behaviour)', N' Instance management is set of techniques WCF uses to bind client request to service instance, governing which service instance handles which client request.it will finallize whether to create a new instance of service object or need to use the existing.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ca54d387-f1e1-4798-88b9-af33241e7f1b', N'transactionFlow :', N'We can specify whether or not client transaction is propagated to service by changing Binding and operational contract configuration', N'<bindings>
      <netTcpBinding>
        <binding transactionFlow="true"></binding>
      </netTcpBinding>
</bindings>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ed308ef3-9332-4d68-96bb-b5dc66529cc3', N'How to host an WCF services ?', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f2b756dc-6dbb-4a74-b010-b6565f0581b4', N'
Creating proxy :', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ffccca85-e50d-4468-a6c8-bb91e5ed7de3', N'Request-Reply', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2c434e31-2d03-4d06-a6cf-bbbfb6e3094d', N'2.Data Contract', N'Data contract describes the custom data type which is exposed to the client. This defines the data types, that are passed to and from service. Data types like int, string are identified by the client because it is already mention in XML schema definition language document, but custom created class or data types cannot be identified by the client e.g. Employee data type. By using DataContract we can make client to be aware of Employee data type that are returning or passing parameter to the method.

Data contract using [DataContract] and [DataMember] attribute

', N'System.Runtime.Serialization.DataContract
http://www.wcftutorial.net/Data-Contract.aspx
Isrederence = ""
Name = ""
Namespace = ""
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'73a55ad2-5e0f-43c4-8c02-be90b713403e', N'Difference between WCF and Web service', NULL, N'http://www.wcftutorial.net/Difference-between-WCF-and-Webservice.aspx', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e64a66c9-4b32-4df0-a5a1-c249298cd826', N'Use of serviceBehaviour attribute', N'Used to specify theInstanceContexMode for WCF Service  class', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7595fbdd-8790-49e1-9a74-c5860328f297', N'Why WCF', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd695d213-b54c-4791-af85-c8167c3f9195', N'Security :', N'Authentication : Who are you ?
authorization : What authenticated person can do ?
Message Intigrity : ensures that message hasnot been tempered.  (changing the data..not reading the data)
Message Confidential : data remain shoud be private  --- Encryption  (reading the data..not intrested in changing the data)', N'WS- * Specification ??', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'88323bc5-7b96-4cad-84e4-c8481b325f66', N'empty', N'TO expose the WCF as WCF RESTfull service,framework provides two attribute webGet,webInvoke.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ca05d09e-553a-47ee-a2e8-c9191e737645', N'Rest guidelines : ', N'1.Consider everything as Resources
2.URI
3.Keep Interface simple
4.REQUEST Response should be in representive format
5.Be stateless.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6140db80-d93f-4765-b265-caa3d437e632', N'3.maxConcurrentSessions:', N'A positive integer that limits the number of sessions a ServiceHost object can accept. The default is 10.  ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'66e675d6-0ab5-415f-89b1-cb0da8944884', N'Difference between Web Service in ASP.NET & WCF Service', N'Web Services can be accessed only over HTTP & it works in stateless environment, where WCF is flexible because its services can be hosted in different types of applications. Common scenarios for hosting WCF services are IIS,WAS, Self-hosting, Managed Windows Service.
The major difference is that Web Services Use XmlSerializer. But WCF Uses DataContractSerializer which is better in Performance as compared to XmlSerializer.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4495c5a3-43d5-449f-83a3-cbeba3d47293', N'2.maxConcurrentInstances', N'The number of InstanceContext objects that execute at one time across a ServiceHost. The default is Int32.MaxValue. ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'64994fce-575b-4959-aaa2-ccc3ba48fc33', N'WCF 4.0', N'
DefaulConfiguration :
1.DefaultEndPoint:
2.DefaultBinding
3.DefaultBehaviour:

File LessActivation :
discovery', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd8f70028-8c3b-4716-b83b-d215849ed7c2', N'1.Address', N'Basically URL, specifies where this WCF service is hosted .Client will use this url to connect to the service', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'13d0820c-2563-44bc-9b2c-d24578ecd99e', N'REST architecture : 
', N'Principales :1.Resources
     2.UniqueResourceIdentifier
     3.Simple Interface
    4.Representation
    5.stateless', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b32cb284-b0d9-4a89-aa0c-d2a86ce519b9', N'transport Security', N'End to End security
fine if webservice is on intranet
no proxy involved in accessing the service', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8da7bfd0-70d3-4bf9-a778-dd16528c0cc9', N'empty', N'BasicHttpBinding           HTTP/HTTPS Text,       MTOM              Yes', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'07b2f31b-0810-4823-9dc0-ddb34f787ec9', N'MSMQ : ', N'
Queued transport provides isolation between the sender and receiver so that if
either the sender or receiver were to stop functioning or the communication
between them breaks down, the other party can continue to function and the
delivery of the message is still queued and available for delivery.
Windows Communication Foundation provides support for queues by leveraging
Microsoft Message Queuing (MSMQ) as a transport.
The roll of the queue is to catch any messages sent between sender and receiver, and to send them to their
destination.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd8b6ad63-2069-42fc-8c12-df888c399041', N'empty', N'In WCF, all services are exposed as contracts. Contract is a platform-neutral and standard way of describing what the service does. Mainly there are four types of contracts available in WCF
1.Service Contract /Operation Contract
2.Data Contract
3.Message Contract
4.Fault Contract', N'How internally this attibute is usefull to framework to generate WSDL', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'73491a7b-daf6-4a50-b0c6-dfc698587a8a', N'MessageBodyMember', NULL, N'Name = ""
Namespace = ""
Order = ""
,ProtectionLevel=""', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b1e2bdb5-e385-4e7f-bec0-e004ff50afa9', N'1.Service Contract', N'Service contracts describe the operation that service can provide. For Eg, a Service provide to know the temperature of the city based on the zip code, this service is called as Service contract. It will be created using Service and Operational Contract attribute.

', N'System.ServiceModel.ServiceContratAttribute // what all are the attributes 
on Service Contract

CallbackContract= ""
 ,ConfigurationName=""
,Name=""
,Namespace = ""
,ProtectionLevel=""
,SessionMode = ""', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a6e9ae49-6765-403f-b5d8-e02bc04103f9', N'empty', N'Securing your WCF service requires knowledge of the WCF security features related to auditing and logging, authentication, authorization, confidentiality, and integrity
Bindings and behaviors allow you to configure transfer security, authentication, authorization, impersonation, and delegation as well as auditing and logging.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2c1024dc-1b07-4292-9682-eb8658e2c192', N'

Message Encoding :', N'binaryMessageEncoding 
mtomMessageEncoding
textMessageEncoding', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'557d5dd4-cb35-4e9d-81ef-ebfdf5669044', N'
wcf hOSTING BY 4 WAYS :', N'1.Selfhosting
2.IIS
3.Windows Activation Services
4.Windows Services', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6d3359c5-c2f5-4eb5-b7a2-eca6fc8aa90b', N'Message Security', N'performance issue bcz every message need to encrypted', N'<security mode= "Message">
<message clientCredentialtype = "UserName"/>
the rest of the secutrity setting for the binding take the default values.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9533f152-5f81-45c6-89fa-ed4a1de3ecb0', N'WCF Hosting in IIS', N'http://csharp-video-tutorials.blogspot.in/2014/02/part-29-hosting-wcf-service-in-iis.html', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e4f8f751-9cf5-45bf-b1ae-f01e02e0f4fc', N'Duplex', NULL, N'Example ??', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'83da619b-c9f2-4439-ae19-f06c7d3f8a90', N'Transaction Manager  :', N'Transaction Manager is the third party for the service that will manage the transaction using two phase committed protocol.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'92f58e07-0695-414e-8cf8-f1888c2507f8', N'empty', N'IN RESTfull WCF service,client consider all methos at server as Resources and send the request as to access the server''s resources by providing appropriate http method and URL.Message fomrat can be in any format lie XML,JSON.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'347b5d2d-9952-4cc3-a64d-f83f0db5cc5e', N'empty', N' service oriented technology', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0bf4f144-ac78-4bee-9ac2-fcf8745db477', N'creating proxy at design time :', N'By using svcutil.exe tool :we need to give command to this tool (prompt command)
ex(command example):  svcutil.exe [/t:code]  <metadataDocumentPath>* | <url>* | <epr>

First it will download the metadata from the address specified in the command
This tool create proxy class according the metadata and config file (output.config).
proxy will not be having reference to service implimentation but the service contract.
Online retrieval follows either the WS-MetadataExchange protocol or the Microsoft Discovery (DISCO) protocol.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
GO
print 'Processed 100 total records'
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd17bd264-ee38-406f-a883-fe366c26eabf', N'empty', N'NetTcpBinding              TCP                              Binary                  No ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
