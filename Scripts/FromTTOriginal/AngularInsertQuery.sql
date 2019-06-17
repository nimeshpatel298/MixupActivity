USE [frienzff_Mixup]
GO
--SELECT * from [dbo].Technologies
/****** Object:  Table [dbo].[TechnologyContents]    Script Date: 06/16/2019 12:25:00 ******/
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'00cdab45-4d48-48e1-8650-016e36fc03f3', N'Error handling', N'You could handle in the component by adding a second callback to the .subscribe()', N'.subscribe(
      (data: Config) => this.config = { ...data }, // success path
      error => this.error = error // error path
    );', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4dfacbe5-fbe8-4621-9243-033a25df4137', N'empty', N'bootstrap: The set of components that are bootstrapped when this module is bootstrapped. The components listed here are automatically added to `entryComponents`.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'62646d5e-a7e4-42f5-91ee-065cc48f0588', N'empty', N'The context for terms in an expression is a blend of the template variables, the directive''s context object (if it has one), and the component''s members. If you reference a name that belongs to more than one of these namespaces, the template variable name', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'54442bc4-17c9-48c9-996c-0681cff873cd', N'empty', N'Throughout this guide, you''ll see a directive spelled in both UpperCamelCase and lowerCamelCase. Already you''ve seen NgIf and ngIf. There''s a reason. NgIf refers to the directive class; ngIf refers to the directive''s attribute name.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2cecc55b-a97e-42ec-9235-06e6fb33cbb8', N'empty', N'The class-provider syntax is a shorthand expression that expands into a provider configuration, defined by the Provider interface.', N'providers: [Logger] => [{ provide: Logger, useClass: Logger }]', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'343fe1c1-9607-4ff3-b5ec-083d62d40c1c', N'Hierarchical Dependency Injectors
', N'The choices you make about where to configure providers lead to differences in the final bundle size, service scope, and service lifetime', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'85aea7e3-2579-4777-9251-08873f3345d9', N'empty', N'exports: The set of components, directives, and pipes declared in this NgModule that can be used in the template of any component that is part of an NgModule that imports this NgModule. Exported declarations are the module''s public API.
A declarable belon', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'145f4efa-622d-47b7-9a34-08eafdc6dfa2', N'@NgModule', N'@NgModule decorator identifies AppModule as an NgModule class. @NgModule takes a metadata object that tells Angular how to compile and launch the application.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'be96ba6c-b3f3-421b-b10d-0bdf16975e72', N'Optional Parameters', N'Query parameters allow you to pass optional parameters to a route.
this.router.navigate([''/product-list''], { queryParams: { page: pageNum } });
queryParams property of NavigationExtras type is used to pass the optional parameters.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3995267b-8012-46d5-a3cf-0d239c5cfd3f', N'empty', N'Ideally, if an application isn''t injecting a service, it shouldn''t be included in the final output. However, Angular has to be able to identify at build time whether the service will be required or not. Because it''s always possible to inject a service dir', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'60224377-45a1-4241-b6d1-0f58f60ce906', N'empty', N'catchError', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f918d3e2-4d7a-49ba-8a51-10382fd2af92', N'Template statements', N'A template statement responds to an event raised by a binding target such as an element, component, or directive.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7268c23e-7885-451c-bb55-1047479f73d4', N'Promise', N'Promises are a pattern that helps with one particular kind of asynchronous programming: a function (or method) that returns a single result asynchronously. One popular way of receiving such a result is via a callback (“callbacks as continuations”)', N'asyncFunction(arg1, arg2, result => { console.log(result); });', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ab1add08-fe09-4796-a026-10d29dc720f6', N'empty', N'retry()', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1b181139-6a1a-429c-aa9a-12ea1d5ad4d7', N'empty', N'Child modules and component injectors are independent of each other, and create their own separate instances of the provided services. When Angular destroys an NgModule or component instance, it also destroys that injector and that injector''s service inst', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9d389a4f-29d7-4367-a18e-1449d9d7da85', N'Don''t use new with the HeroService', N'You could create a new instance of the HeroService with new like this:', N'heroService = new HeroService(); // don''t do this
', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cc878e58-785b-4239-bdb6-144cc5489b2f', N'empty', N'View queries are set before the ngAfterViewInit callback is called.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c6ad7e25-2213-464c-b9a4-14edc9e16b77', N'empty', N'You set the enableTracing: true option in the object passed as the second argument to the RouterModule.forRoot() method.', N'RouterModule.forRoot(appRoutes,  { enableTracing: true }    )', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'48df8066-0e87-4d78-a395-1688297bc403', N'ngModel', N'ngModelChange:', N'<input
  [ngModel]="currentHero.name"
  (ngModelChange)="setUppercaseName($event)"> is alternative of 
<input [(ngModel)]="currentHero.name">', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'95590cc4-4b97-47ca-81cd-18e57d0ee412', N'<base href> :', N'1. as the first child in the <head> tag 
2. to tell the router how to compose navigation URLs.
3. If the app folder is the application root, as it is for the sample application, set the href value as "/"', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'520df20b-dfce-4303-8f96-19eb3d427622', N'empty', N'Some legal HTML doesn''t make much sense in a template. The <html>, <body>, and <base> elements have no useful role.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6dcf5bce-6229-4c30-80cf-1a560c43bbd2', N'empty', N'An expression may also refer to properties of the template''s context such as a template input variable (let hero) or a template reference variable (#heroInput).', N'<div *ngFor="let hero of heroes">{{hero.name}}</div>
<input #heroInput> {{heroInput.value}}', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b32ada8a-4301-4936-ba90-1afd3a98dcf4', N'Reading the full response', N'Tell HttpClient that you want the full response with the observe option.
HttpClient.get() returns an Observable of typed HttpResponse rather than just the JSON data.', N'getConfigResponse(): Observable<HttpResponse<Config>> {
  return this.http.get<Config>(
    this.configUrl, { observe: ''response'' });
}', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0b03bb1f-dfaa-4f36-a843-1b6451b4191d', N'RxJs Operator in Angular', N'debounceTime(500)', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'db588cb4-8e35-4c27-bee6-1bb0bc594b84', N'empty', N'In the world of Angular, the only role of attributes is to initialize element and directive state. When you write a data binding, you''re dealing exclusively with properties and events of the target object. HTML attributes effectively disappear', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'909be383-663a-407c-a45c-1e5a8e9edab3', N'Expression context', N'The expression context is typically the component instance.', N'In the following snippets, the title within double-curly braces and the isUnchanged in quotes refer to properties of the AppComponent.
{{title}}
<span [hidden]="isUnchanged">changed</span>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'44db4b44-4af6-46b3-9ea6-1f64b1ead2fd', N'empty', NULL, N'Router:
 Displays the application component for the active URL. Manages navigation from one component to the next.
RouterModule:
 A separate NgModule that provides the necessary service providers and directives for navigating through application views.
Ro', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c9c795b7-6c3e-4289-bc1d-228d2643ee38', N'Interceptor order
', N'Angular applies interceptors in the order that you provide them. If you provide interceptors A, then B, then C, requests will flow in A->B->C and responses will flow out C->B->A.

You cannot change the order or remove interceptors later. If you need to en', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fa72b0e3-d794-4e69-8edc-22aadfc1cb46', N'empty', NULL, N'routeConfig 
The route configuration used for the route that contains the origin path.

parent 
The route''s parent ActivatedRoute when this route is a child route.

firstChild 
Contains the first ActivatedRoute in the list of this route''s child routes.

c', N'

https://www.techiediaries.com/angular-router-multiple-outlets/', N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fdcacb9a-3dca-4bc8-b49d-22ce9a63c4e7', N'empty', N'For this reason Angular provides a way to separate providers out of the module so that same module can be imported into the root module with providers and child modules without providers.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0d7d3e4b-fb05-455a-aca4-23209e780596', N'Built-in attribute directives', N'NgClass - add and remove a set of CSS classes
NgStyle - add and remove a set of HTML styles
NgModel - two-way data binding to an HTML form element
', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd4355316-38f9-4390-ba9a-2363bd16ec4b', N'empty', N'The expanded provider configuration is an object literal with two properties.
The provide property holds the token that serves as the key for both locating a dependency value and configuring the injector.

The second property is a provider definition obje', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'89b3d0d0-4b55-425f-b2a0-23b49ee922d5', N'empty', N'The router uses a first-match wins strategy when matching routes, so more specific routes should be placed above less specific routes.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bbb10e73-ba71-4f56-ae5a-23bdeb12ab3a', N'empty', N'You must call subscribe() or nothing happens. Just calling HeroesService.deleteHero() does not initiate the DELETE(Any) request', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2ada65d0-56c2-4d0f-a017-23e68b00f836', N'empty', N'<Example to create a custom directive>', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f3ebb1e3-091c-441a-92a7-23f40b9e9ee8', N'empty', N'distinctUntilChanged', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dc2e6435-6b91-499e-9d55-243b6252e40d', N'from'' operator', N'from(iterable)—Converts its argument to an Observable instance. This method is commonly used to convert an array to an observable', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f455e386-34dd-4fd2-809a-24541bc987a3', N'empty', N'Webpack is a bundling tool', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'613df5b5-fea3-4d29-83d1-2575fa3f6868', N'<Template syntax>', N'HTML is the language of the Angular template. Almost all HTML syntax is valid template syntax. The <script> element is a notable exception; it is forbidden, eliminating the risk of script injection attacks. In practice, <script> is ignored and a warning a', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e1c9957f-c9c1-4d01-9770-25ca9ffc38c6', N'Tree Shaking', NULL, NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c55158b4-2211-4c36-a4b7-2746dacfbf88', N'empty', N'tap, catcherror, throwError ,map', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b1b759e2-ea77-422a-97bf-27789ef29021', N'Pure pipes', N'Angular executes a pure pipe only when it detects a pure change to the input value. A pure change is either a change to a primitive input value (String, Number, Boolean, Symbol) or a changed object reference (Date, Array, Function, Object).

Angular ignor', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6f2e7ef0-6edc-47bf-9c3d-27801808a7f7', N'empty', N'Components are special type of directive, and the providers property of @Component() is inherited from @Directive(). Directives can also have dependencies, and you can configure providers in their @Directive() metadata. When you configure a provider for a', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd3bccc5f-83a0-4832-96fa-28558c2a4162', N'@NgModule-level injectors
', N'Not working practically', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'65af89d7-691b-4d26-871a-29f4930173ff', N'Factory providers', N'<Example Required>', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'033f22f6-e19f-4224-8e38-2b45675b1cca', N'empty', N'When using @Optional(), your code must be prepared for a null value. If you don''t register a logger provider anywhere, the injector sets the value of logger to null.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e3acddae-4ccb-4920-a9fe-2d3594dd39ea', N'empty', N'Don''t fetch data in a component constructor. You shouldn''t worry that a new component will try to contact a remote server when created under test or before you decide to display it. Constructors should do no more than set the initial local variables to si', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7e1980a3-a583-4b4b-9bb6-2e5a7ada2261', N'ngForm : Its usage', NULL, NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2fcf4a44-96ad-4e73-8925-2f08e9b4c3be', N'empty', N'A provider can be the service class itself, so that the injector can use new to create an instance. You might also define more than one class to provide the same service in different ways, and configure different injectors with different providers.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c40116a7-fc6e-4854-aef5-342a762e8f63', N'Template expressions', N'A template expression produces a value. Angular executes the expression and assigns it to a property of a binding target; the target might be an HTML element, a component, or a directive.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd88a5b11-febf-4a57-bb41-3433afa7a3ac', N'empty', N'Two-way', N'[(target)]="expression"
bindon-target="expression"', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'24885a55-5620-4d4c-8960-348520c057b2', N'empty', N'The class we have created provides a service. The @Injectable() decorator marks it as a service that can be injected, but Angular can''t actually inject it anywhere until you configure an Angular dependency injector with a provider of that service.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ebcca7e0-bd7d-4393-8ac8-368d64bc46ef', N'empty', N'Angular DI has a hierarchical injection system, which means that nested injectors can create their own service instances. Angular regularly creates nested injectors. Whenever Angular creates a new instance of a component that has providers specified in @C', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e97370ac-32f9-4392-9b00-36a21cd02828', N'queryParamsHandling', N'You can also preserve query parameters and fragments across navigations without 
having to provide them again when navigating.', N'let navigationExtras: NavigationExtras = {
  queryParamsHandling: ''preserve'',
  preserveFragment: true
};', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a59a3428-3e2c-4ec8-868d-37042fc6595d', N'empty', N'If you have registered a provider for the same DI token at different levels, the first one Angular encounters is the one it uses to provide the dependency.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4ad7177b-9273-4047-84b2-3719f3e1f0bc', N'Multiple service instances (sandboxing)', N'Sometimes you want multiple instances of a service at the same level of the component hierarchy.

A good example is a service that holds state for its companion component instance. You need a separate instance of the service for each component. Each servi', N'https://angular.io/guide/dependency-injection-in-action#multiple-service-instances-sandboxing', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'beecd15a-30e9-4f65-a221-38575ada25ea', N'<REQUIRED OR OPTIONAL?>', N'prefer a required route parameter when the value is mandatory (for example, if necessary to distinguish one route path from another); prefer an optional parameter when the value is optional, complex, and/or multivariate', N'localhost:4200/heroes;id=15;foo=foo (Optional)
The optional route parameters are not separated by "?" and "&" as they would be in the URL query string. They are separated by semicolons ";" This is matrix URL notation—something you may not have seen before', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'586567e3-95cd-4bc4-9c0a-38d3a2a16310', N'empty', N'One-way
from data source
to view target', N'{{expression}}
[target]="expression"
bind-target="expression"', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd9161518-c66a-4a04-9dcc-3ae412a21ad2', N'<Explore more: ActivatedRoute and RouterState>', NULL, N'RouterLink :
The directive for binding a clickable HTML element to a route. Clicking an element with a routerLink directive that is bound to a string or a link parameters array triggers a navigation.
RouterLinkActive:
The directive for adding/removing cla', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e328361c-9ab8-4ba6-9f65-3b1d1baeda99', N'SimpleChanges Type', N'<Explore>', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'24489dbf-0d1b-4ad8-b54b-3c395520d407', N'empty', N'Attribute binding syntax resembles property binding. Instead of an element property between brackets, start with the prefix attr, followed by a dot (.) and the name of the attribute. You then set the attribute value, using an expression that resolves to a', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b0bd983b-42d4-4e6a-873c-3c4a7ac86b33', N'Link parameters array
Or
Passing Required Parameter', N'Link parameter array contains first element as string (Path) and other elements as required parameter.', N'this.router.navigate([''../Hero'', { id: crisisId, foo: ''foo'' }]);
Or
 <a routerLink="/crisis-center" routerLink="[''../Hero'', { id: crisisId, foo: ''foo'' }]">Crisis Center</a>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'36afe805-22f7-4a3f-a1ba-3cdd995d0906', N'empty', N'providers: Dependencies whose providers are listed here become available for injection into any component, directive, pipe or service that is a child of this injector.
The NgModule used for bootstrapping uses the root injector, and can provide dependencie', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ed266702-0e6d-4ad0-a8e3-3def095da2b2', N'empty', N'The @Injectable() decorator has the providedIn metadata option, where you can specify the provider of the decorated service class with the root injector, or with the injector for a specific NgModule.', N'@Injectable({
providedIn: ''root''
})', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5868c7bb-7fcb-4f9c-a775-3e442a082ad5', N'empty', N'ngDoCheck()  
Detect and act upon changes that Angular can''t or won''t detect on its own.

Called during every change detection run, immediately after ngOnChanges() and ngOnInit().
 ', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7807dddc-6501-4a91-801a-40981a3259db', N'empty', NULL, N'NavigationCancel 
An event triggered when navigation is canceled. This is due to a Route Guard returning false during navigation.

NavigationError 
An event triggered when navigation fails due to an unexpected error.

Scroll 
An event that represents a sc', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8919fb80-1dce-414e-9500-413a93d84740', N'leading slashes', NULL, NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'84b0d669-067c-413e-8688-41afc238645b', N'Passing Token as parameter', NULL, N'{ path: ''hero/:id'', component: HeroDetailComponent },', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'84706512-69ce-43e0-b3f8-44924fa76df9', N'Router feature', NULL, N'import { 
RouterModule, Routes
Router, NavigationStart, NavigationCancel, NavigationError, NavigationEnd 
CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, Router
CanDeactivate
 Router, ActivatedRoute
} from ''@angular/router''', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c956b305-3553-4829-a386-463706a303b2', N'empty', N'When you specify providers in the @Injectable() decorator of the service itself (typically at the app root level), optimization tools such as those used by the CLI''s production builds can perform tree shaking, which removes services that aren''t used by yo', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4139d433-5f14-4d55-a67f-48e74c37e9d7', N'Attribute binding', N'You can set the value of an attribute directly with an attribute binding.
This is the only exception to the rule that a binding sets a target property. This is the only binding that creates and sets an attribute.', N'<tr><td [attr.colspan]="1 + 1">One-Two</td></tr>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b230d8c6-5d22-4492-b537-4c5193afb718', N'Metadata', N'Metadata tells Angular how to process a class.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8afdf733-86a6-42cf-a126-4ca7d1995700', N'empty', N'JavaScript expressions that  are prohibited, including:
assignments (=, +=, -=, ...)
new
chaining expressions with ; or ,
increment and decrement operators (++ and --)', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'453095ec-bb27-49d1-a624-4db3d44e5574', N'Jenkins', N'&lt;p&gt;                                
                            &lt;/p&gt;&lt;div class=&quot;page-header&quot;&gt;
					&lt;h1 itemprop=&quot;headline&quot;&gt;
				What is Jenkin for Continuous Integration?			&lt;/h1&gt;
									&lt;/div&gt;&lt;p&gt;
					
				
	
	
				
						
		&lt;/p&gt;&lt;div&gt;

&lt;div id=&quot;div-gpt-ad-9092914-3&quot; style=&quot;float:left;padding-right:6px;&quot;&gt;
  
&lt;/div&gt;
&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;What is Continuous Integration?&lt;/h2&gt;&lt;p&gt;


&lt;/p&gt;&lt;p&gt;In Continuous Integration after a code commit, the software is built 
and tested immediately. In a large project with many developers, commits
 are made many times during a day. With each commit code is built and 
tested. If the test is passed, build is tested for deployment. If 
deployment is a success, the code is pushed to production. This commit, 
build, test, and deploy is a continuous process and hence the name 
continuous integration/deployment.

&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;    A Continuous Integration Pipeline is a powerful instrument that consists of a set of tools designed to &lt;strong&gt;host&lt;/strong&gt;, &lt;strong&gt;monitor&lt;/strong&gt;, &lt;strong&gt;compile&lt;/strong&gt; and &lt;strong&gt;test&lt;/strong&gt; code, or code changes, like:	

&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Continuous Integration Server&lt;/strong&gt; (Jenkins, Bamboo, CruiseControl, TeamCity, and others) &lt;/li&gt;&lt;li&gt;&lt;strong&gt;Source Control Tool&lt;/strong&gt; (e.g., CVS, SVN, GIT, Mercurial, Perforce, ClearCase and others) &lt;/li&gt;&lt;li&gt;&lt;strong&gt;Build tool&lt;/strong&gt; (Make, ANT, Maven, Ivy, Gradle, and others) &lt;/li&gt;&lt;li&gt;&lt;strong&gt;Automation testing framework&lt;/strong&gt; (Selenium, Appium, TestComplete, UFT, and others) &lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', N'                                
                            ', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'35923ae8-5b0e-4a73-b3eb-4ef60cf34ca2', N'empty', N'Components are directives, and the providers option is inherited from @Directive(). You can also configure providers for directives and pipes at the same level as the component', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'59b4c66b-1080-4e7f-bd49-504564379e76', N'empty', N'The import statement specifies an additional ElementRef symbol from the Angular core library:

You use the ElementRef in the directive''s constructor to inject a reference to the host DOM element, the element to which you applied appHighlight.

ElementRef ', N'import { Directive, ElementRef } from ''@angular/core'';  
constructor(el: ElementRef) {
       el.nativeElement.style.backgroundColor = ''yellow'';
    }
Do we need to add behaviour to the construction only ?
When constructor will be executed?', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'33eb87c5-6b1a-47d2-97d3-505ae3932747', N'empty', N'The appRoutes array of routes describes how to navigate. Pass it to the RouterModule.forRoot method in the module imports to configure the router.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4fea206f-f1b8-48f7-88bf-518be7493c22', N'empty', N'Angular sets the reference variable''s value to the element on which it was declared. In the previous example, phone refers to the phone number <input> box. The phone button click handler passes the input value to the component''s callPhone method. But a di', N'https://itnext.io/working-with-angular-5-template-reference-variable-e5aa59fb9af', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a05fe02e-d1d7-4d33-94cf-51ddb4567d98', N'empty', N'snapshot is type of ActivatedRouteSnapshot', N'https://vsavkin.com/angular-router-understanding-router-state-7b5b95a12eab', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'81a93df4-46ad-4705-a748-532ce6688e3a', N'Write an interceptor', N'To implement an interceptor, declare a class that implements the intercept() method of the HttpInterceptor interface.', N'import { Injectable } from ''@angular/core'';
import {
  HttpEvent, HttpInterceptor, HttpHandler, HttpRequest
} from ''@angular/common/http'';

import { Observable } from ''rxjs'';

/** Pass untouched request through to the next request handler. */
@Injectable(', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'39f2921b-4214-4762-8a44-55884468139e', N'super-short primer on Angular’s template syntax', N'    [property]="expression": set property of an element to the value of expression
    (event)="statement": execute statement when event occurred
    [(property)]="expression": create two-way binding with expression
    [class.special]="expression": add s', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'21e94c5f-e149-4da2-a15d-56562ca575ac', N'Dependency injection tokens', N'When you configure an injector with a provider, you associate that provider with a DI token. The injector maintains an internal token-provider map that it references when asked for a dependency. The token is the key to the map.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cd260f3b-de7c-4c34-a6f8-5702377195ef', N'Promises have the following advantages', N'No inversion of control: similarly to synchronous code, Promise-based functions return results, they don’t (directly) continue – and control – execution via callbacks. That is, the caller stays in control.

Chaining is simpler: If the callback of then() r', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6d1c27c5-8a33-49af-b3bf-58cc90f859d6', N'empty', N'A component-provided service may have a limited lifetime. Each new instance of the component gets its own instance of the service. When the component instance is destroyed, so is that service instance.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6cf332ad-cd7d-41a6-b7fd-592a29d36b6c', N'Pipe', N'This pipe definition reveals the following key points:
•A pipe is a class decorated with pipe metadata.
•The pipe class implements the PipeTransform interface''s transform method that accepts an input value followed by optional parameters and returns the t', N'import { Pipe, PipeTransform } from ''@angular/core'';
''@Pipe({name: ''exponentialStrength''})
export class ExponentialStrengthPipe implements PipeTransform {
  transform(value: number, exponent: string): number {
    let exp = parseFloat(exponent);
    retur', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'753e9bb4-c2b2-4900-9019-5b234957d58c', N'empty', N'The data property in this route is a place to store arbitrary data associated with this specific route. The data property is accessible within each activated route. Use it to store items such as page titles, breadcrumb text, and other read-only, static da', N'{    path: ''heroes'',     component: HeroListComponent,     data: { title: ''Heroes List'' }   }', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8ada6e47-cfaf-46cc-831c-5b5aa08e84ad', N'When Injectable decorator is optional and mandatory', N'Refer the link', N'https://codecraft.tv/courses/angular/dependency-injection-and-providers/configuring/', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'348f82cf-dbb8-47ef-89ef-5c6311892549', N'RouterState and RouterStateSnapshot, tree of activated route and tree of activated routesnapshot', NULL, NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'895babb8-98d6-4bc9-836d-5eb67cea3458', N'Router state', N'After the end of each successful navigation lifecycle, the router builds a tree of ActivatedRoute objects that make up the current state of the router. You can access the current RouterState from anywhere in the application using the Router service and th', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7c5278bd-f6c7-42e8-ad0e-5f8aceb2a34f', N'Class binding', N'You can add and remove CSS class names from an element''s class attribute with a class binding.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'50ce3dfa-274d-4fa7-9044-6065993c539c', N'empty', N'The Angular forwardRef() function creates an indirect reference that Angular can resolve later.
providers: [{ provide: Parent, useExisting: forwardRef(() => AlexComponent) }]', N'https://angular.io/guide/dependency-injection-in-action#break-circularities-with-a-forward-class-reference-forwardref', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'33950624-72d8-4aca-bd0c-60cc998d182d', N'@ContentChild', N'<Explore more to understand life cycle hook>', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e7d677ec-1aa5-4cf0-a10b-6178c0ed5b56', N'Aliased class providers', N'Suppose an old component depends upon the OldLogger class. OldLogger has the same interface as NewLogger, but for some reason you can''t update the old component to use it.

When the old component logs a message with OldLogger, you want the singleton insta', N'[ NewLogger,
  // Not aliased! Creates two instances of `NewLogger`
  { provide: OldLogger, useClass: NewLogger}]', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'33d3ca7c-b6fc-4cd1-b356-643586ff9934', N'forChild()', N'Only call RouterModule.forRoot in the root AppRoutingModule (or the AppModule if that''s where you register top level application routes). In any other module, you must call the RouterModule.forChild method to register additional routes. -Why So', N'RouterModule.forChild(heroesRoutes)', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bd48e6ac-1923-4403-8000-646a1f663f28', N'decorator', N'In TypeScript, you attach metadata by using a decorator.', N'Component, directive, Injectable, Input, are the example of predefined decorator.', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd6a2dcb4-dd91-452b-ba1a-6497f9876553', N'InjectionToken'' objects', N'Use of InjectionToken ?', N'import { InjectionToken } from ''@angular/core'';

export const TITLE = new InjectionToken<string>(''title'');
{ provide: TITLE,         useValue:   ''Hero of the Month'' }', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'711d6973-e18e-497c-a20a-6607e8104196', N'empty', N'The ** path in the last route is a wildcard. The router will select this route if the requested URL doesn''t match any paths for routes defined earlier in the configuration. This is useful for displaying a "404 - Not Found" page or redirecting to another r', N'{ path: ''**'', component: PageNotFoundComponent }', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a23563fc-2df6-4d8d-bca5-6620a56dd6e4', N'empty', N'ngOnInit()  
Initialize the directive/component after Angular first displays the data-bound properties and sets the directive/component''s input properties.

Called once, after the first ngOnChanges().
 ', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a1f0a961-e0b5-4acb-aa97-6a23ae5375bb', N'Why dependency injection?', N'Car class creates everything it needs inside its constructor. What''s the problem? The problem is that the Car class is brittle, inflexible, and hard to test.
This Car needs an engine and tires. Instead of asking for them, the Car constructor instantiates ', N'export class Car {
public engine: Engine;
public tires: Tires;
public description = ''No DI'';
constructor() {
this.engine = new Engine();
this.tires = new Tires();
}
// Method using the engine and tires
drive() {
return `${this.description} car with ` +
`$', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3a0ce054-1ba1-4c69-9abc-6ef9e946f373', N'empty', N'There are two categories of pipes: pure and impure. Pipes are pure by default.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f7a4765b-5e81-46ac-ad7e-722ba9359f7d', N'Intercepting requests and responses', N'With interception, you declare interceptors that inspect and transform HTTP requests from your application to the server. The same interceptors may also inspect and transform the server''s responses on their way back to the application. Multiple intercepto', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
GO
print 'Processed 100 total records'
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ff821ebd-1249-4bac-a1c8-72930c884b41', N'empty', N'There is only one root injector for an app. Providing UserService at the root or AppModule level means it is registered with the root injector. There is just one UserService instance in the entire app and every class that injects UserService gets this ser', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1079fe37-d53b-4eb8-8b9b-72f488e045e4', N'The clone() method''s hash argument allows you to mutate specific properties of the request while copying the others', N'// clone request and replace ''http://'' with ''https://'' at the same time
const secureReq = req.clone({
  url: req.url.replace(''http://'', ''https://'')
});
// send the cloned, "secure" request to the next handler.
return next.handle(secureReq);', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'40d1b0a6-b445-4a8e-ab49-7360bd9ab893', N'empty', N'Composing asynchronous calls (loops, mapping, etc.): is a little easier, because you have data (Promise objects) you can work with.

Error handling: As we shall see later, error handling is simpler with Promises, because, once again, there isn’t an invers', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a69b48e0-6e7e-4bdd-8ef2-744342337301', N'Router class in RouterModule', N'Router service basically helps to navigate to other route.', N'Provides below usefull behaviours:
resetConfig(config: Routes) //Resets the configuration used for navigation and generating links.
createUrlTree()
navigateByUrl(url: string | UrlTree, extras?: NavigationExtras) //Navigate based on the provided url. This ', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e77ed56e-bc27-4125-a400-744594f86f59', N'Route Parameter', N'Routes parameters are only dealt with parameters specific to the route where query parameters are available to all routes.', N'this.router.navigate([''../'', { id: crisisId, foo: ''foo'' }], { relativeTo: this.route });', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fff24692-93b3-4892-8971-7560f75f96be', N'empty', N'You appear to be inserting the result between element tags and assigning it to attributes. It''s convenient to think so, and you rarely suffer for this mistake. Though this is not exactly true.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a57c0ab3-6adc-4a98-bf36-76833a0923f1', N'empty', N'forRoot and forChild are conventional names for methods that deliver different import values to root and feature modules.', N'Never call RouterModule.forRoot in a feature-routing module.
Always call RouterModule.forChild in a feature-routing module.', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'01d4e41b-becc-4430-879c-76b9c6a3c1bb', N'NgStyle', NULL, N'this.currentStyles = {
    ''font-style'':  this.canSave      ? ''italic'' : ''normal'',
    ''font-weight'': !this.isUnchanged ? ''bold''   : ''normal'',
    ''font-size'':   this.isSpecial    ? ''24px''   : ''12px''
  };
<div [ngStyle]="currentStyles">  This div is initi', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'59716f54-5aa7-470b-b05e-7721cd0c8304', N'Optional dependencies
', N'When a component or service declares a dependency, the class constructor takes that dependency as a parameter. You can tell Angular that the dependency is optional by annotating the constructor parameter with @Optional().', N'import { Optional } from ''@angular/core'';
constructor(@Optional() private logger: Logger) {
  if (this.logger) {
    this.logger.log(some_message);
  }
}', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'84168cc3-715c-4f3d-8a3e-7910141558ab', N'The $any type cast function', N'Sometimes a binding expression will be reported as a type error and it is not possible or difficult to fully specify the type. To silence the error, you can use the $any cast function to cast the expression to the any type.', N'<div>
  The hero''s marker is {{$any(hero).marker}}
</div>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'27509ff9-86ad-4249-b82f-7ba1a94fddab', N'empty', N'pipe', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7f056969-134f-4954-a91d-7dc56021773a', N'Interpolation{{…}}', N'You use interpolation to weave calculated strings into the text between HTML element tags and within attribute assignments.', N'<p>My current hero is {{currentHero.name}}</p>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ae300ca5-02fe-496f-bfb8-8253903b3d87', N'Value providers', N'Sometimes it''s easier to provide a ready-made object rather than ask the injector to create it from a class. To inject an object you have already created, configure the injector with the useValue option', N'// An object in the shape of the logger service
export function SilentLoggerFn() {}

const silentLogger = {
  logs: [''Silent logger says "Shhhhh!". Provided via "useValue"''],
  log: SilentLoggerFn
};

[{ provide: Logger, useValue: silentLogger }]
', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7cc95ec1-d16d-4da6-94b6-839d16c79389', N'empty', N'Template statements in the event binding section, appearing in quotes to the right of the = symbol as in (event)="statement".', N'<button (click)="deleteHero()">Delete hero</button>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'44e92f78-0a68-47f5-abf8-8450eb132b93', N'of'' operator', N'of(...items)—Returns an Observable instance that synchronously delivers the values provided as arguments.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2529629f-fedc-487b-869f-8562a359aff9', N'empty', N'Detail explanation of Injector and Injector Tree with good practical example', N'https://codecraft.tv/courses/angular/dependency-injection-and-providers/ngmodule-providers-vs-component-providers-vs-component-viewproviders/', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ac106516-5e29-4aa7-99f1-85d075291338', N'empty', N'In simple examples, the dependency value is an instance, and the class type serves as its own lookup key. Here you get a HeroService directly from the injector by supplying the HeroService type as the token:', N'heroService: HeroService;', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7d6b50cc-cd84-4c89-83ae-8722c5605d7e', N'empty', N'Two types of errors can occur. The server backend might reject the request, returning an HTTP response with a status code such as 404 or 500. These are error responses.
Or something could go wrong on the client-side such as a network error that prevents t', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'029c3461-c62c-4574-a52f-875d6ec9bacd', N'Why @Injectable()?

', N'@Injectable() marks a class as available to an injector for instantiation. Generally speaking, an injector reports an error when trying to instantiate a class that is not marked as @Injectable()', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8e992867-567b-4f54-a008-886b23303028', N'empty', N'Promises provide a better way of working with callbacks: Now an asynchronous function returns a Promise, an object that serves as a placeholder and container for the final result. Callbacks registered via the Promise method then() are notified of the resu', N'asyncFunction(arg1, arg2) .then(result => { console.log(result); });', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'91bbe13c-943e-4d5d-83e6-8887db93b629', N'Style binding
', NULL, N'button [style.color]="isSpecial ? ''red'': ''green''">Red</button>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'92c9fde2-1eb3-4046-9a3e-88b4cac92983', N'empty', N'It''s a coding pattern in which a class receives its dependencies from external sources rather than creating them itself.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a553416a-a047-4006-a256-891753b2f4ef', N'empty', N'snapshot is important property
data: Example of resolved data - 
this.route.snapshot.data[''contact'']; To get resolved data from snalshot property.', N'url => ??
An Observable of the route path(s), represented as an array of strings for each part of the route path.

data ==> Resolved data or values(static data) mentioned in that route specified in Route configuration of data
An Observable that contains t', N'https://vsavkin.com/angular-router-understanding-router-state-7b5b95a12eab


https://blog.angularindepth.com/angular-router-series-secondary-outlets-primer-139206595e2', N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3bc86235-40b6-44ce-a240-8bf201dafed4', N'Revisit HttpEvent', N'https://angular.io/guide/http#httpevents', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4bcf9883-c250-4391-b0f7-8c085f772f1a', N'When to use NgModule versus an application component

to register provider', N'On the one hand, a provider in an NgModule is registered in the root injector. That means that every provider registered within an NgModule will be accessible in the entire application.

On the other hand, a provider registered in an application component', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'77978689-1653-4bf9-aed5-8c0f025d1bf1', N'Provide the interceptor', NULL, N'export const httpInterceptorProviders = [
  { provide: HTTP_INTERCEPTORS, useClass: NoopInterceptor, multi: true },
];

providers: [
  httpInterceptorProviders
],', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b9743280-e70b-4a62-9c9d-8d4ee7f3ff8f', N'empty', N'A routed Angular application has one singleton instance of the Router service. When the browser''s URL changes, that router looks for a corresponding Route from which it can determine the component to display.', N'https://angular.io/guide/singleton-services#forroot', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2ec7ae06-5c23-4f0b-b1e8-8d7e89cefc20', N'When Angular creates nested injectors', N'Whenever Angular creates a new instance of a component that has providers specified in @Component(), it also creates a new child injector for that instance. Similarly, when a new NgModule is lazy-loaded at run time, Angular can create an injector for it w', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e8b4d1cb-0492-47be-8729-917d521c6f4e', N'Input/output', NULL, N'@Input()  hero: Hero;
@Output() deleteRequest = new EventEmitter<Hero>();
alternative is 
@Component({
  inputs: [''hero''],
  outputs: [''deleteRequest''],
})', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'eda98eef-ffbd-456c-ae0b-944ed975c576', N'HTML attribute vs. DOM property', N'The distinction between an HTML attribute and a DOM property is crucial to understanding how Angular binding works.

Attributes are defined by HTML. Properties are defined by the DOM (Document Object Model).

A few HTML attributes have 1:1 mapping to prop', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'204d826c-8e6f-4a14-b373-96063fadb791', N'empty', N'Technically, pathMatch = ''full'' results in a route hit when the remaining, unmatched segments of the URL match ''''. In this example, the redirect is in a top level route so the remaining URL and the entire URL are the same thing.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9b49cf6b-a2a8-41ca-a01b-9a00b0042a9a', N'Router outlet', N'The RouterOutlet is a directive from the router library that is used like a component. It acts as a placeholder that marks the spot in the template where the router should display the components for that outlet.', N'<router-outlet></router-outlet>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'528c8fc2-5b9b-460f-b531-9c1695e6f1df', N'decode code', N'paramMap + switchMap + pipe', N'this.heroes$ = this.route.paramMap.pipe(
      switchMap(params => {
        // (+) before `params.get()` turns the string into a number
        this.selectedId = +params.get(''id'');
        return this.service.getHeroes();
      })
    );', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3c022677-7bbd-4714-89ae-9d1fb454571a', N'empty', N'imports: The set of NgModules whose exported are available to templates in this module.
A template can use exported declarables from any  imported module, including those from modules that are imported indirectly and re-exported.
For example, `ModuleA` im', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6d995a0e-0d97-45ca-9e10-9f1f39217517', N'Class interface', NULL, N'https://angular.io/guide/dependency-injection-in-action#class-interface', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd3c67400-d416-4b19-bcc0-a0ebc0732240', N'empty', N'ngAfterViewChecked()  
Respond after Angular checks the component''s views and child views / the view that a directive is in.

Called after the ngAfterViewInit and every subsequent ngAfterContentChecked().
 ', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'846d9b10-d67b-4e1c-a21a-a0ee8be5f370', N'Directive', N'There are three kinds of directives in Angular:
1. Components—directives with a template.
2. Structural directives—change the DOM layout by adding and removing DOM elements.
3. Attribute directives—change the appearance or behavior of an element, componen', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'539fbf6f-93d5-437e-9218-a1b1dfc230dc', N'empty', N'ngAfterContentInit()  
Respond after Angular projects external content into the component''s view / the view that a directive is in.

Called once after the first ngDoCheck().
 ', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'45623c30-26ea-4fcc-9a85-a28e9205eddb', N'empty', N'ngOnDestroy()  
Cleanup just before Angular destroys the directive/component. Unsubscribe Observables and detach event handlers to avoid memory leaks.

Called just before Angular destroys the directive/component.
 ', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3e43779a-a86c-4e78-8e6a-a3d378e9656e', N'empty', N'One-way
from view target
to data source', N'(target)="statement"
on-target="statement"', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2f03ded4-e1f1-4c4d-9f6b-a56108b7ee09', N'Predefined tokens and multiple providers', N'<Need to Explore >', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd8db75b7-da00-4894-9710-a5a5fe6f2a34', N'empty', N'The injector is responsible for creating service instances and injecting them into classes like component', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'96a6d22a-756c-498a-97fe-a5ea7a3c9cf9', N'Router events', NULL, N'NavigationStart 
An event triggered when navigation starts.

RouteConfigLoadStart 
An event triggered before the Router lazy loads a route configuration.

RouteConfigLoadEnd 
An event triggered after a route has been lazy loaded.

RoutesRecognized 
An eve', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'14910a86-19a0-45fc-90ef-a64c97804131', N'injector in detail', N'https://angular.io/docs/ts/latest/guide/dependency-injection.html', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'49af8bf0-00be-46cc-973a-ab980f119f32', N'Qualify dependency lookup with parameter decorators', N'The @Optional property decorator tells Angular to return null when it can''t find the dependency.

The @Host property decorator stops the upward search at the host component. The host component is typically the component requesting the dependency. However,', N'https://medium.com/frontend-coach/self-or-optional-host-the-visual-guide-to-angular-di-decorators-73fbbb5c8658', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'54b3e56c-ba1a-444d-bf98-ad562eadaf5f', N'Platform injector', N'When you use providedIn:''root'', you are configuring the root injector for the app, which is the injector for AppModule. The actual root of the entire injector hierarchy is a platform injector that is the parent of app-root injectors. This allows multiple ', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f9a5f671-616b-4c65-9084-ae18ccbca0df', N'ngModel : Its Feature like two way data bind, Validation', N'dirty,prestine, touched, untouched,valid, InValid', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4039095c-bea5-47d0-9ea3-ae2e7689e34d', N'Tree-shakable providers', N'Tree shaking refers to a compiler option that removes code from the final bundle if that code not referenced in an application. When providers are tree-shakable, the Angular compiler removes the associated services from the final output when it determines', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'05d06f3c-b392-4b40-b9e6-ae7fbb80a872', N'How relative path works in Angular router module.', NULL, NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2a9285c8-f1dd-48c9-9ef2-b0377bf3a683', N'Lazy load the module', NULL, N'{
  path: ''admin'',
  loadChildren: ''./admin/admin.module#AdminModule'',
},', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1fc2badf-5e83-44c9-af5a-b045093526c3', N'RxJs', NULL, NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fc208d5a-6837-4837-bf74-b10e28809554', N'empty', N'The @NgModule() and @Component() decorators have the providers metadata option, where you can configure providers for NgModule-level or component-level injectors.', N'Questions:Possible values for provideIn ?
', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'839cf0cc-f7de-4c16-848d-b26f69213973', N'empty', N'Using the @Self decorator, the injector only looks at the component''s injector for its providers. 
The @SkipSelf decorator allows you to skip the local injector and look up in the hierarchy to find a provider that satisfies this dependency. ', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1dc2c234-0b7f-46ee-af16-b44c6c00ecd6', N'forwardRef', N' sometimes circular references are unavoidable. You''re in a bind when class ''A'' refers to class ''B'' and ''B'' refers to ''A''. One of them has to be defined first.
The order of class declaration matters in TypeScript. You can''t refer directly to a class until', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'db08daa2-a39a-43cc-a8f3-b6355ed0be50', N'empty', N'entryComponents: The set of components to compile when this NgModule is defined, so that they can be dynamically loaded into the view.
For each component listed here, Angular creates a `ComponentFactory` and stores it in the `ComponentFactoryResolver`.
An', N'??', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2b4cd415-986b-4b33-af5f-b6f39917055a', N'empty', N'ngAfterContentChecked()  
Respond after Angular checks the content projected into the directive/component.

Called after the ngAfterContentInit() and every subsequent ngDoCheck().
 ', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'642c6d9d-b0ff-4901-b6b1-b7e749432e7d', N'empty', N'schemas: 
 The set of schemas that declare elements to be allowed in the NgModule.
 Elements and properties that are neither Angular components nor directives must be declared in a schema.
  Allowed value are `NO_ERRORS_SCHEMA` and `CUSTOM_ELEMENTS_SCHEMA', N'??', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'82914ec0-2478-42a2-8e50-b80412549216', N'empty', N'You can configure injectors with providers at different levels of your app, by setting a metadata value in one of three places:

1. In the @Injectable() decorator for the service itself.
2. In the @NgModule() decorator for an NgModule.
3. In the @Componen', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b67a2f05-8b51-490d-91d8-b8fb21ebbef1', N'Alternative class providers', N'Different classes can provide the same service. For example, the following code tells the injector to return a BetterLogger instance when the component asks for a logger using the Logger token.', N'[{ provide: Logger, useClass: BetterLogger }]', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a7286c70-2c71-4f49-8aad-b9efa2b01da3', N'empty', N'The *ngIf directive moved to the <ng-template> element where it became a property binding,[ngIf].
The rest of the <div>, including its class attribute, moved inside the <ng-template> element.', N'<div *ngIf="hero" class="name">{{hero.name}}</div> to 
<ng-template [ngIf]="hero">
  <div class="name">{{hero.name}}</div>
</ng-template>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f87cd560-85c3-40af-8a5d-bb0d2c902fd4', N'@Component-level injectors', NULL, NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e99ff289-270e-4f2a-95f9-bb49f38fb57a', N'empty', N'To make sure there is only one instance of NewLogger, alias OldLogger with the useExisting option.', N'[ NewLogger,
  // Alias OldLogger w/ reference to NewLogger
  { provide: OldLogger, useExisting: NewLogger}]', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a6976ab8-2bb0-40ae-8b36-bb5052150641', N'What behaviour/feature does ngForm add?', NULL, NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'13730fcf-29b2-4584-8b91-bc4a36c1eb87', N'NgClass', NULL, N'this.currentClasses =  {
    ''saveable'': this.canSave,
    ''modified'': !this.isUnchanged,
    ''special'':  this.isSpecial
  };
<div [ngClass]="currentClasses">This div is initially saveable, unchanged, and special</div>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3f4c7069-6217-4ceb-965e-bd4615b3b3ed', N'Lifecycle sequence', N'ngOnChanges() :Respond when Angular (re)sets data-bound input properties. The method receives a SimpleChanges object of current and previous property values.

Called before ngOnInit() and whenever one or more data-bound input properties change.
Angular on', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c977f291-ee48-4cfc-9562-bd8277811666', N'empty', N'Injectors are inherited, which means that if a given injector can''t resolve a dependency, it asks the parent injector to resolve it.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0fd34d06-46d1-4a71-bc89-beb4e5868089', N'RouterLinkActive', NULL, N'The template expression to the right of the equals (=) contains a space-delimited string of CSS classes that the Router will add when this link is active (and remove when the link is inactive). You set the RouterLinkActive directive to a string of classes', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bc878459-88c9-4fe5-80fd-bf5ce5904c45', N'empty', N'The interpolation braces in {{1 + 1}} surround the template expression 1 + 1.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fc880236-2607-42a7-9f5b-c1dda748fd1a', N'Listening to progress events', N'Sometimes applications transfer large amounts of data and those transfers can take a long time. File uploads are a typical example. Give the users a better experience by providing feedback on the progress of such transfers.

To make a request with progres', N'const req = new HttpRequest(''POST'', ''/upload/file'', file, {
  reportProgress: true
});', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd8ab5460-b5ce-4db3-bee9-c24fe934cc99', N'it has following properties', N'declarations:  this application''s lone component.
The set of components, directives, and pipes that belong to this module.
The set of selectors that are available to a template include those declared here, and those that are exported from imported NgModul', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bd09547b-9ddf-4329-bb7b-c376e2b2d643', N'Impure pipes', N'Angular executes an impure pipe during every component change detection cycle. An impure pipe is called often, as often as every keystroke or mouse-move.

With that concern in mind, implement an impure pipe with great care. An expensive, long-running pipe', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0c9ae93a-a9f7-4ea2-ad51-c4905cbf2d60', N'ngForm', N'NgForm directive with the ability to track the value and validity of every control in the form.', N'<form (ngSubmit)="onSubmit(heroForm)" #heroForm="ngForm">
  <div class="form-group">
    <label for="name">Name
      <input class="form-control" name="name" required [(ngModel)]="hero.name">
    </label>
  </div>
  <button type="submit" [disabled]="!hero', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cea6d7f0-ff4f-4408-b13d-c5831edf4183', N'empty', N'Template expression supports both basic assignment (=) and chaining expressions (with ; or ,).', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c46239fc-a72e-4d1c-85e0-c62b5ffdc644', N'@ViewChild', N'<Explore more to understand life cycle hook>', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd5b33585-dcdd-43e1-9fdc-c97f78fdb0f5', N'Structural Directives
', N'Structural directives are responsible for HTML layout. They shape or reshape the DOM''s structure, typically by adding, removing, or manipulating elements.

As with other directives, you apply a structural directive to a host element. The directive then do', N'<div *ngIf="hero" class="name">{{hero.name}}</div>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'278edb4a-d238-4825-b5ac-c9e0fb5e5053', N'@Host()', N'You can cap the bubbling by adding the @Host() parameter decorator on the dependant-service parameter in a component''s constructor. The hunt for providers stops at the injector for the host element of the component.', N'??', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3a1ba436-28ff-43df-bbc7-ca24009c31d5', N'Why Angular 2', N'Angular is a framework for building client applications in HTML and either JavaScript or a language like TypeScript.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1a5f4f1f-c323-49d0-82cc-d010c7cf1f49', N'The safe navigation operator ( ?. ) and null property paths', N'The Angular safe navigation operator (?.) is a fluent and convenient way to guard against null and undefined values in property paths. Here it is, protecting against a view render failure if the currentHero is null.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5f1e526e-9c7b-428f-a4bc-d1a069d2be64', N'Relative navigation', N'To navigate a relative path with the Router.navigate method, you must supply the ActivatedRoute to give the router knowledge of where you are in the current route tree.

After the link parameters array, add an object with a relativeTo property set to the ', N'The router supports directory-like syntax in a link parameters list to help guide route name lookup:

./ or no leading slash is relative to the current level.

../ to go up one level in the route path.', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f47b7a50-bf11-4f85-bdf0-d203d6bdf351', N'empty', N'Class binding syntax resembles property binding. Instead of an element property between brackets, start with the prefix class, optionally followed by a dot (.) and the name of a CSS class: [class.class-name].', N'<div [class.special]="isSpecial">The class binding is special</div>
Finally, you can bind to a specific class name. Angular adds the class when the template expression evaluates to truthy. It removes the class when the expression is falsy.', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'42a85752-e341-44a9-8eb0-d2e94ec0aa2e', N'empty', N'The empty path in the fourth route represents the default path for the application, the place to go when the path in the URL is empty, as it typically is at the start. This default route redirects to the route for the /heroes URL and, therefore, will disp', N'{ path: '''',   redirectTo: ''/heroes'',     pathMatch: ''full''   },', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'470e51e7-1f6c-4bb4-9c77-d7305cf40647', N'Lazy-loading modules with the router', N'A lazy-loaded module location is a string, not a type. In this app, the string identifies both the module file and the module class, the latter separated from the former by a #.', N'{ path: ''crisis'', loadChildren: ''app/crisis/crisis.module#CrisisModule'' }', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7ebfb814-8812-4c18-8dc7-d81d1f1d4497', N'ActivatedRoute Vs ActivatedRouteSnapshot (Component Reuse)', NULL, NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b66b826f-744c-47e3-8766-d86ad973c769', N'ActivatedRoute', N'ActivatedRoute is a service provides services like route path and data.
Each ActivatedRoute in the RouterState provides methods to traverse up and down the route tree to get information from parent, child and sibling routes.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9b68e893-d360-465e-892d-d8dca7bad765', N'@Injectable-level configuration', N'The providedIn metadata option for a service class configures a specific injector (typically root) to use the decorated class as a provider of the service', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a74b0c8e-4127-476b-8190-d9037be07b35', N'Dynamic Component', N'<Can expolre at leter stage>', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'baaf3a88-d335-4ab8-a82c-db020a45de09', N'empty', N'ngAfterViewInit()  
Respond after Angular initializes the component''s views and child views / the view that a directive is in.

Called once after the first ngAfterContentChecked().
 ', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'757c6689-4d04-4d16-862b-db62a21e8ba2', N'Template reference variables', N'A template reference variable is often a reference to a DOM element within a template. It can also be a reference to an Angular component or directive or a web component.

Use the hash symbol (#) to declare a reference variable. 
You can use the ref- pref', N'<input #phone placeholder="phone number">
The #phone declares a phone variable on an <input> element.
You can refer to a template reference variable anywhere in the template. The phone variable declared on this <input> is consumed in a <button> on the oth', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e2749ccc-308d-479a-87e2-dd72ece1a3fa', N'Element injectors', N'An injector does not actually belong to a component, but rather to the component instance''s anchor element in the DOM. A different component instance on a different DOM element uses a different injector.', N'??', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'eb672d11-56f2-470b-80c2-ddb38387ae25', N'Observable paramMap and component reuse', N'snapshot vs paramMap and component instance reuse
ParamMap is an Observable of type ParamMap.
ParamMap provides api to access router parameter (Parameter Token).
where Snapshot provides activatedRoute data of any given time. 
So whenever token parameter v', N'https://angular.io/guide/router#observable-parammap-and-component-reuse', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2f3dbf87-386c-433a-878c-df1509997b09', N'Angular Elements', N'<Can expolre at leter stage>', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b6a60054-6836-4c76-99d9-e021f42ae56e', N'Supported selectors include:', N'any class with the @Component or @Directive decorator
    a template reference variable as a string (e.g. query <my-component #cmp></my-component> with@ViewChild(''cmp'')`)
    any provider defined in the child component tree of the current component (e.g. ', N'??', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0b3f32fb-cad4-4fdf-814d-e097eed49b56', N'empty', N'switchMap, Map Operator', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4144cb75-dbb2-4dc9-b7a9-e0c989bfbf0b', N'AbstractControl in input parameter', N'<Explore>', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'73135712-1946-4fe2-88d9-e134701af4c2', N'NavigationExtras', N'Property of the NavigationExtras type:
relativeTo?: ActivatedRoute | null;
queryParams?: Params | null;
fragment?: string;
preserveQueryParams?: boolean;
queryParamsHandling?: QueryParamsHandling | null;
preserveFragment?: boolean;
skipLocationChange?: bo', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2ac1ed92-4616-4fb1-8ca6-e38aa1c8c258', N'empty', N'Rx will help to use HttpClient mode efficiently…', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'97f1b2c4-931a-4aa6-9e21-e42dfc2a914f', N'OnDestroy()', N'Put cleanup logic in ngOnDestroy(), the logic that must run before Angular destroys the directive.

This is the time to notify another part of the application that the component is going away.

This is the place to free resources that won''t be garbage col', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4f930f60-e7e3-42fe-8bc7-e610fbbfed1a', N'Route Class in RouterModule', N'Available option for route configuration.', N'path?: string;
    pathMatch?: string;
    matcher?: UrlMatcher;
    component?: Type<any>;
    redirectTo?: string;
    outlet?: string;   ==> ??
    canActivate?: any[];
    canActivateChild?: any[];
    canDeactivate?: any[];
    canLoad?: any[];
    d', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6dc90ca2-f7de-4359-9995-e6770ae00da2', N'Router links
', N'routerLink to redirect to other component in html', N'<a routerLink="/crisis-center" routerLinkActive="active">Crisis Center</a>', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'882d53f7-af2e-463c-b642-e6d33134ac88', N'Content projection', N'Content projection is a way to import HTML content from outside the component and insert that content into the component''s template in a designated spot.
AngularJS developers know this technique as transclusion.', N'https://dzone.com/articles/simplifying-content-projection-in-angular', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5d88b0eb-4721-4b45-aeb0-e71dfa6e02b9', N'The non-null assertion operator ( ! )', N'??', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
GO
print 'Processed 200 total records'
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'82d34ec3-5c6f-49f1-bf7d-e953fdf557b9', N'empty', N'One structural directive per host element', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'083ed947-e2a5-4b55-bd7c-e99cdcc92ce8', N'Attribute directive', N'It''s the brackets ([]) that make it an attribute selector. Angular locates each element in the template that has an attribute named appHighlight and applies the logic of this directive to that element.', N'@Directive({
  selector: ''[appHighlight]''
})', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'aa015514-0844-4bbc-834b-eb353bda5d95', N'Observables', NULL, NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6c3f1d1e-37f9-47c4-8e9a-ed090af89190', N'<need to further explore by implementing those events>', NULL, N'ActivationStart 
An event triggered when the Router begins activating a route.

GuardsCheckEnd 
An event triggered when the Router finishes the Guards phase of routing successfully.

ResolveStart 
An event triggered when the Router begins the Resolve phas', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'08290e69-f30d-4040-90b3-ed67b904fb46', N'<Implement Onservable subscriber patterns>', NULL, NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bb6df396-2590-459f-9855-eec946f65c3e', N'empty', NULL, N'Link parameters array:
An array that the router interprets as a routing instruction. You can bind that array to a RouterLink or pass the array as an argument to the Router.navigate method.
Routing component:
An Angular component with a RouterOutlet that d', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'333bd7d1-787b-4da3-a690-f02213f00d35', N'Injector bubbling', N'When a component requests a dependency, Angular tries to satisfy that dependency with a provider registered in that component''s own injector. If the component''s injector lacks the provider, it passes the request up to its parent component''s injector. If t', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f1c25d14-bdcb-4f76-a6ab-f2123efd6001', N'OnInit()', N'Use ngOnInit() for two main reasons:
1.To perform complex initializations shortly after construction.
2.To set up the component after Angular sets the input properties
', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ee49db3a-5b37-44a8-ab3c-f24b50e1ad87', N'empty', N'Component-level providers configure each component instance''s own injector. Angular can only inject the corresponding services in that component instance or one of its descendant component instances. Angular can''t inject the same service instance anywhere', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'29ab2a0c-8ca2-46be-abd3-f6448e20ca7d', N'Injector hierarchy and service instances', N'Services are singletons within the scope of an injector. That is, there is at most one instance of a service in a given injector.', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4595f9f7-c765-4f86-ade7-f8e363324273', N'@Injectable()', N'The @Injectable() decorator tells TypeScript to emit metadata about the service. The metadata specifies that Angular may need to inject other dependencies into this service.

Although the HeroService doesn''t have any dependencies at the moment, applying t', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a4871547-eee5-47b2-896e-f9a89610e348', N'Update headers', N'You can''t directly modify the existing headers within the previous options object because instances of the HttpHeaders class are immutable.

Use the set() method instead. It returns a clone of the current instance with the new changes applied.

Here''s how', N'httpOptions.headers =
  httpOptions.headers.set(''Authorization'', ''my-new-auth-token'');', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2fc52852-5100-41bc-9676-fa30a736df50', N'empty', N'The other possible pathMatch value is ''prefix'' which tells the router to match the redirect route when the remaining URL begins with the redirect route''s prefix path', NULL, NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b182b56b-47c0-4fb9-a82c-fb9b1b4c6a8d', N'<base href>', N'Most routing applications should add a <base> element to the index.html as the first child in the <head> tag to tell the router how to compose navigation URLs.

If the app folder is the application root, as it is for the sample application, set the href v', N'<base href="/">', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd1862c5c-413c-4a36-a310-fcefbfefe28a', N'Singleton implementation in Angular', N'Please refer the link for implementing service as singleton', N'https://angular.io/guide/singleton-services#forroot', NULL, N'AC709DEA-4262-4F65-B8AD-01212CA6947D')
