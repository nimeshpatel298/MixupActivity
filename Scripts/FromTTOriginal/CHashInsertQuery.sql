USE [frienzff_Mixup]
GO
/****** Object:  Table [dbo].[TechnologyContents]    Script Date: 06/16/2019 18:18:31 ******/
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cd62b6ec-a22a-435c-99c1-012be4199954', N'Generating key to created strongly named assembly', N'sn.Exe is used to create public private key.
 In Visual Studio=> Project => Properties => signing tab help to create the key and create strongly named assembly', N'https://docs.microsoft.com/en-us/dotnet/framework/app-domains/how-to-create-a-public-private-key-pair', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b0b9cd0c-81f8-48e6-a7ee-0150764b7025', N'empty', N'There are three ways to implement thread-local storage', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bba32eb5-38ca-4c71-837e-04265161fe79', N'empty', N'The foreach statement repeats a group of embedded statements for each element in an array or an object collection that implements the System.Collections.IEnumerable or System.Collections.Generic.IEnumerable<T> interface.
IEnumerable interface force to implement ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'67702b25-bb2d-41a3-9395-059f417c4e03', N'Task Parallelism', N'Task parallelism is the lowest-level approach to parallelization with PFX. The classes for working at this level are defined in the System.Threading.Tasks namespace and comprise the following:', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ddbbd0c3-8bcf-49ce-8c14-05b08a31a2a2', N'Common Language Specification', N'To enable full interoperability scenarios, all objects that are created in code must rely on some commonality in the languages that are consuming them (are their callers). Since there are numerous different languages, .NET platform has specified those commonalities in something called the Common Language Specification (CLS).', N'<Add more>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ae7aabef-9d15-46bb-912e-05d067dc3220', N'PLINQ Limitations', N'The following query operators prevent a query from being parallelized, unless the source elements are in their original indexing position:
 
 Take, TakeWhile, Skip, and SkipWhile
 The indexed versions of Select, SelectMany, and ElementAt', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4fa62237-6e53-4231-b988-075f55bbb1aa', N'Attribute', N'•Attributes concept in .Net is a way to mark or store meta data
about the code in assembly.
• Often it is an instruction meant for the runtime.
• The Runtime can change its behavior or course of action based
on the attribute present.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0bee93d6-ba94-4cb0-9c6b-07deb47bc946', N'Flatten and Handle of AggregateException', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6e3df26e-9c31-44a8-95bb-08183333b105', N'How can we register/deploy dll in GAC', N'To install an assembly into the GAC, the assembly must be strongly named, otherwise you get an error stating - Failure adding assembly to the cache: Attempt to install an assembly without a strong name. There are 2 ways to install an assembly into GAC.
 1. Simply Drag and Drop
 2. Use GacUtil.exe (GAC Utility Tool)', N'To install an assembly using gacutil, use the following command. This command installs SampleAssembly.dll into the GAC. If you have build this project using .NET framwork 4.0 then look in C:\WINDOWS\Microsoft.NET\assembly, else look in C:\Windows\Assembly.
 Gacutil -i C:\SampleProject\SampleAssembly.dll
 
 To uninstall an assembly from the GAC, using GAC utility, use the following command. 
 Gacutil -u MyClassLibrary
 
 If there are multiple versions of MyClassLibrary assembly, in the GAC, then all these versions will be removed by the above command. If you want to remove only one of the assemblies then specify the full name as shown below.
 gacutil -u ClassLibrary,Version=1.0.0.0,PublicKeyToken=eeaabf36d7783129', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f1e9e98f-53ca-4f91-9b6d-08b033b33658', N'Rich Client Applications and Thread Affinity', N'Both the Windows Presentation Foundation (WPF) and Windows Forms libraries follow models based on thread affinity. Although each has a separate implementation, they are both very similar in how they function.
 
 The objects that make up a rich client are based primarily on DependencyObject in the case of WPF, or Control in the case of Windows Forms. These objects have thread affinity, which means that only the thread that instantiates them can subsequently access their members. Violating this causes either unpredictable behavior, or an exception to be thrown.
 
 On the positive side, this means you don?t need to lock around accessing a UI object. On the negative side, if you want to call a member on object X created on another thread Y, you must marshal the request to thread Y. You can do this explicitly as follows:
 
 In WPF, call Invoke or BeginInvoke on the element?s Dispatcher object.
 In Windows Forms, call Invoke or BeginInvoke on the control.
 Invoke and BeginInvoke both accept a delegate, which references the method on the target control that you want to run. Invoke works synchronously: the caller blocks until the marshal is complete. BeginInvoke works asynchronously: the caller returns immediately and the marshaled request is queued up (using the same message queue that handles keyboard, mouse, and timer events)', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b6dbf77b-6c68-482e-84e8-09d2d28ced03', N'empty', N'On a multi-processor computer, multithreading is implemented with a mixture of time-slicing and genuine concurrency, where different threads run code simultaneously on different CPUs. It?s almost certain there will still be some time-slicing, because of the operating system?s need to service its own threads ? as well as those of other applications.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd87619a3-f2df-475c-b593-0a033097741a', N'The Parallel Class', N'PFX provides a basic form of structured parallelism via three static methods in the Parallel class:', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1bd8b419-7f51-428c-9fe5-0a15f136108b', N'How to sign the assembly with strong name', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fafd015e-c608-437d-963e-0ade27e29dad', N'empty', N'Here?s how you start a worker task via an asynchronous delegate:
 
 Instantiate a delegate targeting the method you want to run in parallel (typically one of the predefined Func delegates).
 Call BeginInvoke on the delegate, saving its IAsyncResult return value.
 
 BeginInvoke returns immediately to the caller. You can then perform other activities while the pooled thread is working.
 When you need the results, call EndInvoke on the delegate, passing in the saved IAsyncResult object.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9085b5f6-9374-41e1-8762-0d48c55bff8d', N'Stronged named assembly benefits', N'You want to enable your assemblies to be referenced by strong-named assemblies, or you want to give friend access to your assemblies from other strong-named assemblies. => Practical ??
 
 An app needs access to different versions of the same assembly. This means you need different versions of an assembly to load side by side in the same app domain without conflict. For example, if different extensions of an API exist in assemblies that have the same simple name, strong-naming provides a unique identity for each version of the assembly.
 
 You do not want to negatively affect performance of apps using your assembly, so you want the assembly to be domain neutral. This requires strong-naming because a domain-neutral assembly must be installed in the global assembly cache.
 
 When you want to centralize servicing for your app by applying publisher policy, which means the assembly must be installed in the global assembly cache.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'54d30fa6-3ce8-4c9d-aa5f-0db2298e884d', N'empty', N'Signaling constructs
 These allow a thread to pause until receiving a notification from another, avoiding the need for inefficient polling. There are two commonly used signaling devices: event wait handles and Monitor?s Wait/Pulse methods. Framework 4.0 introduces the CountdownEvent and Barrier classes.
 Nonblocking synchronization constructs
 These protect access to a common field by calling upon processor primitives. The CLR and C# provide the following nonblocking constructs: Thread.MemoryBarrier, Thread.VolatileRead, Thread.VolatileWrite, the volatile keyword, and the Interlocked class.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'149ef5aa-fe8f-4d74-9b66-0e374f2d8911', N'When not to use the Thread Pool', N'You require a foreground thread, all the thread pool threads are background threads
 You require a thread to have a particular priority.
 You have tasks that cause the thread to block for long periods of time. The thread pool has a maximum number of threads, so a large number of blocked thread pool threads might prevent tasks from starting.
 You need to place threads into a single-threaded apartment. All ThreadPool threads are in the multithreaded apartment.
 You need to have a stable identity associated with the thread, or to dedicate a thread to a task.
 There is no easy way to detect that a threadpool completed, no Thread.Join()
 There is no easy way to marshal exceptions from a threadpool thread
 You cannot abort a threadpool thread', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'76c8cd56-e3e9-42b7-8309-0f55da6ecda9', N'empty', N'WPF supports 3 types of routed events (direct, bubbling, and tunneling). Silverlight supports direct and bubbling only.

There''s quite a few data-binding differences that will be somewhat mitigated with the next version of Silverlight. Currently, Silverlight doesn''t support the binding mode, OneWayToSource, or Explict UpdateSourceTriggers. In addition, Silverlight defaults to OneWay databinding if none is set, while WPF uses the default mode specified by the dependency property.

Silveright doesn''t support MultiBinding. ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4fefa6e1-71f1-40ca-ae75-1003288ac177', N'Sleep', N'Thread.Sleep pauses the current thread for a specified period', N'Thread.Sleep (TimeSpan.FromHours (1)); // sleep for 1 hour
 Thread.Sleep (500);', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'db89d272-b14e-410b-a879-10131f44114e', N'DLL', N'Dynamic Link Library', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8c281288-e79d-4565-96ec-12f7ba8174c5', N'Attributes', N'Attributes provide a way of associating information with code in a declarative way. They can also provide a reusable element that can be applied to a variety of targets.', N'public class MySpecialAttribute : Attribute
{
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'355a7f9a-1d72-4c8d-b735-1597c7d4ae5c', N'Equals :', N'Equal and "==" work the same for value type and correctly.where for reference type', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5494806e-ef9a-4869-84cf-15b59eaedb5b', N'C# 4.0 New Features', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'692f8e5b-3b34-43f0-af0d-15c6e28b01ff', N'When to use Anonymous Types', N'•Need a temporary object to hold related data
•Don’t need methods
•When there is a need for different set of properties for each declaration
•When there is a need to change the order of the properties for each declaration.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2689915c-dbfe-442a-8d67-174a6742db79', N'empty', N'All the events(of Button) are declared in the class(Button) prefixed with "event" keyword and has type as "EventHandler"', N'public event EventHandler DoubleClick;', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a0d3e0ff-2cad-43a0-a5ba-1772951acaec', N'Plinq', N'Parallel LINQ (PLINQ) is a parallel implementation of the LINQ pattern. 
 The System.Linq.ParallelEnumerable class exposes almost all of PLINQ''s functionality.
 ParallelEnumerable includes implementations of all the standard query operators that LINQ to Objects supports, although it does not attempt to parallelize each one.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e32302b0-f30d-452b-b559-1798e8a5659f', N'Constraints on Type Parameters', N'where T: struct         The type argument must be a value type. Any value type except Nullable can be specified.
where T : class         The type argument must be a reference type; this applies also to any class, interface, delegate, or array type.
where T : new()         The type argument must have a public parameterless constructor. When used together with other constraints, the new() constraint must be specified last.
where T : <base class name>         The type argument must be or derive from the specified base class.
where T : <interface name>         The type argument must be or implement the specified interface. Multiple interface constraints can be specified. The constraining interface can also be generic.
where T : U         The type argument supplied for T must be or derive from the argument supplied for U.', N'public class GenericList<T> where T : Employee
{   
.....
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'32b156ca-51d2-43c4-9cd8-17b9255ed92d', N'Multi Threading', N'multithreading supports parallel execution of code. A thread is an independent execution path, able to run simultaneously with other threads.
 Once started, a thread?s IsAlive property returns true, until the point where the thread ends.
 Once ended, a thread cannot restart.
 The CLR assigns each thread its own memory stack so that local variables are kept separate. 
 A separate copy of the cycles variable (i in this example) is created on each thread''s memory stack', N'class ThreadTest
 {
  static void Main()
  {
  Thread t = new Thread (WriteY); // Kick off a new thread
  t.Start(); // running WriteY()
  // Simultaneously, do something on the main thread.
  for (int i = 0; i < 1000; i++) Console.Write ("x");
  }
  static void WriteY()
  {
  for (int i = 0; i < 1000; i++) Console.Write ("y");
  }
 }', N'http://www.albahari.com/threading/part5.aspx#_The_Parallel_Class', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'61c44ecc-9542-4239-9b0f-18496ddbce59', N'use of delegate.', N'1.If you don’t want to pass your interface or abstract class dependence to internal class or layers.
2.If the code doesn''t need access to any other attributes or method of the class from which logic needs to be processed.
3.Event driven implementation needs to be done.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'276c9009-ba6c-4d57-9ce4-18685c5e657b', N'Func', N'Func is logically similar to base delegate implementation. The difference is in the way we declare. At the time of declaration, we need to provide the signature parameter & its return type', N'Func<string, int, int> tempFuncPointer;
Func<string, int, int> tempFuncPointer = tempObj.FirstTestFunction;
 int value = tempFuncPointer("hello", 3);
 Console.ReadKey(); ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'430eae44-b003-4a76-84d3-18cde30ef873', N'Continuations', N'Sometimes it?s useful to start a task right after another one completes (or fails). The ContinueWith method on the Task class does exactly this:', N'Task task1 = Task.Factory.StartNew (() => Console.Write ("antecedant.."));
 Task task2 = task1.ContinueWith (ant => Console.Write ("..continuation"));', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3688e2a6-8514-41bc-a43d-19453a42e0e1', N'Expression in LINQ', N'We have learned that the lambda Expression can be assigned to the Func or Action type delegates to process over in-memory collections. The .NET compiler converts the lambda expression assigned to Func or Action type delegate into executable code at compile time.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2ea3b460-fa80-402d-80dc-19f7974578d5', N'Monitor Vs Lock', N'<a good interview question> :)', NULL, N'https://www.interviewsansar.com/2016/06/23/monitor-vs-lock-in-csharp-why-use-monitor-instead-of-lock/', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9ced0cf8-de6c-4624-a767-1d051e924792', N'What is friend access to dll ?', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bc7f4b02-5a59-465d-912a-1da02b8f242f', N'What is GAC', N'GAC stands for Global Assembly Cache. The global assembly cache stores assemblies specifically designed to be shared by several applications on the computer. Location of GAC depends upon the version of .NET framework you are using. C:\Windows\Assembly for.NET framework 2.0 or 3.5 i.e. before 4.0 C:\WINDOWS\Microsoft.NET\assembly - For .NET framework 4.0 & above', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'09e1e16f-58e3-41e3-bdc3-1e2b73b2ec75', N'Use of Delegates', N'– Use events in your program.
– Improve overall performance by calling certain methods
asynchronously.
– Or even invoke methods with one call.', N'EventHandler is a system defined Delegate.
When we are assigning method name to the Click(or to any other property) internally it create the object of the EventHandlare Delegate so when perticular event will occur,methd will be called.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'922d67ca-5a47-4eaa-8d9d-1e30e9708d94', N'empty', N'Two kind of exceptions :
1.SystemException
2.ApplicationException', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bb06d8dd-bade-4502-83c5-1ef9f9c6bbb5', N'Thread Pool', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'198af366-3037-44cc-8f6b-1f8557112bab', N'Task Schedulers', N'A task scheduler allocates tasks to threads. All tasks are associated with a task scheduler, which is represented by the abstract TaskScheduler class. The Framework provides two concrete implementations: the default scheduler that works in tandem with the CLR thread pool, and the synchronization context scheduler. The latter is designed (primarily) to help you with the threading model of WPF and Windows Forms, which requires that UI elements and controls are accessed only from the thread that created them.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4cf0ac39-1005-48b2-b070-22e332c026fe', N'The Dependency Inversion Principle', N'The Dependency Inversion Principle (DIP) says that components that depend on each
other should interact via an abstraction and not directly with a concrete implementa-
tion. ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f82681df-731b-4be5-8521-23e73f028223', N'Waiting on Tasks', N'Calling its Wait method (optionally with a timeout)
 Accessing its Result property (in the case of Task<TResult>)', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'90b423da-3467-4a99-9237-2447f511e4d9', N'empty', N'4. If any of the parts are declared sealed, then the entire type is considered sealed. 

5. If any of the parts inherit a class, then the entire type inherits that class. 

6. C# does not support multiple class inheritance. Different parts of the partial class, must not specify different base classes. The following code will raise a compiler error stating - Partial declarations must not specify different base classes.
7.Different parts of the partial class can specify different base interfaces, and the final type implements all of the interfaces listed by all of the partial declarations.
8.Any members that are declared in a partial definition are available to all of the other parts of the partial class', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'761c06d4-c57a-4735-9b2a-27a1d0f2f6be', N'empty', N'Explicitly, it is called by user code and the class which is implementing dispose method, must has to implement IDisposable interface.', N'Internally, it is called by Garbage Collector and cannot be called by user code.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c842aec5-d0d8-49c2-84ab-28b61224794c', N'Extension method', N'Allow the addition of methods to an existing class outside the class definition.
Extension methods cannot be used to override existing methods.
Extension methods are a special kind of static method
Extension methods are defined as static methods but are called by using instance method syntax', N'public static int WordCount(this String str)
{
            return str.Split(new char[] { '' '', ''.'', ''?'' }, 
                             StringSplitOptions.RemoveEmptyEntries).Length;
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1be358ee-c17f-46ac-968d-296d1e5c6ebc', N'Thread (Thread Spawning) Vs Thread Pool', N'The problem with creating your own threads
 Creating and destroying threads has a high CPU usage, so when you need to perform lots of small, simple tasks concurrently the overhead of creating your own threads can take up a significant portion of the CPU cycles and severely affect the final response time. This is especially true in stress conditions where executing multiple threads can push CPU to 100% and most of the time would be wasted in context switching', NULL, N'https://theburningmonk.com/2010/03/threading-using-the-threadpool-vs-creating-your-own-threads/', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7fe8bca0-8280-45db-b427-2ae98d11a323', N'Property', N'They can validate data before allowing a change.
– They can transparently expose data on a class where that data is
actually retrieved from some other source, such as a database.
– They can take an action when data is changed, such as raising an
event, or changing the value of other fields.', N'public int MyPropert { 
get { ..}
 set{}
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1dd69700-ab28-4075-93d5-2ba5183484e6', N'1.Optional Paramenters', NULL, N'public void Process( string data, bool ignoreWS = false, ArrayList moreData = null )
{
    // Actual work done here
}
Process( "foo" ); // valid
Process( "foo", true ); // valid
Process( "foo", false, myArrayList ); // valid
Process( "foo", myArrayList ); // Invalid! See next section

Process( "foo", moreData: myArrayList); // valid, ignoreWS omitted', N'http://www.codeproject.com/Articles/37795/C-s-New-Features-Explained', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'20dce72c-070f-413f-9498-2bc77a6e58b0', N'empty', N'Unmanaged code is executed with help of wrapper classes.
Wrapper classes are of two types: CCW (COM Callable Wrapper) and RCW (Runtime Callable Wrapper).', NULL, N'https://docs.microsoft.com/en-us/dotnet/framework/interop/com-wrappers', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'501037e8-1ffa-44a7-b734-2c8165a53a81', N'C# 4.5 New Features', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5c0f2b08-72dc-42ea-b29a-2e5777737692', N'CTS is in charge of', N'1. Establish a framework for cross-language execution.
2. Provide an object-oriented model to support implementing various languages on .NET platform.
3. Define a set of rules that all languages must follow when it comes to working with types.
4. Provide a library that contains the basic primitive types that are used in application development (such as, Boolean, Byte, Char etc.)1. ', NULL, N'https://docs.microsoft.com/en-us/dotnet/standard/language-independence-and-language-independent-components', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1eda1342-978f-4c04-9c14-2ed1f969ff01', N'Asynchronous delegates', N'ThreadPool.QueueUserWorkItem doesn?t provide an easy mechanism for getting return values back from a thread after it has finished executing. Asynchronous delegate invocations (asynchronous delegates for short) solve this, allowing any number of typed arguments to be passed in both directions. Furthermore, unhandled exceptions on asynchronous delegates are conveniently rethrown on the original thread (or more accurately, the thread that calls EndInvoke), and so they don?t need explicit handling.', N'static void Main()
 {
  Func<string, int> method = Work;
  IAsyncResult cookie = method.BeginInvoke ("test", null, null);
  //
  // ... here''s where we can do other work in parallel...
  //
  int result = method.EndInvoke (cookie);
  Console.WriteLine ("String length is: " + result);
 }
  
 static int Work (string s) { return s.Length; }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3f65d895-c584-4a1c-a78d-2f544ca5006d', N'There are a number of ways to enter the thread pool:', N'Via the Task Parallel Library (from Framework 4.0)
 By calling ThreadPool.QueueUserWorkItem
 Via asynchronous delegates
 Via BackgroundWorker', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3b60141e-1ff3-441d-9f32-31a35dc9307f', N'Rules for Creating partial classes in c#', N'1.All the parts spread across different files, must use the partial keyword. Otherwise a compiler error is raised. 
Missing partial modifier. Another partial declaration of this type exists

2. All the parts spread across different files, must have the same access modifiers. Otherwise a compiler error is raised. 
Partial declarations have conflicting accessibility modifiers

3. If any of the parts are declared abstract, then the entire type is considered abstract.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd7cc2c4b-ae8c-4859-a0f0-32332047dd5d', N'Iterator,Ienumarable,Enumaratore Object and stuff.', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'232a4318-b7b5-472a-92e2-32fd61a58154', N'Types Of Class Accessibility', N'• Public: Access is not restricted.
• Private: Access is limited to the containing type.
• Protected: Access is limited to the containing class or types
derived from the containing class.
• Internal: Access is limited to the current assembly.
• Protected internal: Access is limited to the current assembly or
types derived from the containing class.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'38569fde-c632-4c7a-810d-3378b4d804ba', N'reason for override :', N'TO convert the complex type object into string is not possible with the help of toString method. We need to override the toString method and provide the default implementation.We can achieve the same thing by Convert.toString()', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'708a2621-aed1-4453-b696-34c7db814375', N'empty', N'Class => Purpose
 Task : For managing a unit for work
 Task<TResult> : For managing a unit for work with a return value
 TaskFactory : For creating tasks
 TaskFactory<TResult> : For creating tasks and continuations with the same return type
 TaskScheduler : For managing the scheduling of tasks
 TaskCompletionSource : For manually controlling a task?s workflow', N'a task is a lightweight object for managing a parallelizable unit of work. A task avoids the overhead of starting a dedicated thread by using the CLR?s thread pool: this is the same thread pool used by ThreadPool.QueueUserWorkItem,
 Tasks can be used whenever you want to execute something in parallel. However, they?re tuned for leveraging multicores: in fact, the Parallel class and PLINQ are internally built on the task parallelism constructs.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3a78660c-2110-4bdf-96e9-360258ca46c5', N'empty', N'1. Generic types to maximize code reuse, type safety, and performance
2. The most common use of generics is to create collection classes
3. Generic classes may be constrained to enable access to methods on particular data types
4. Information on the types that are used in a generic data type may be obtained at run-time by using reflection', N'Generics helps to define the template for defining the type. We dont need to define different different types based on specific primitive types. Once we create the generics class, it will automatically accomodate type at the time of declaration.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f0715be4-4692-418e-a62b-360dd469d051', N'name space', N'it is a collection of classes. Its more used for logical organization of your classes', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'315855e5-ace4-4285-94ee-367aed486a1f', N'What if two different assembly with same namespace, classes, version and key tries to register to GAC on same machine ?', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1cebd7d1-9253-4317-91b0-378d86b1177c', N'Join', N'You can wait for another thread to end by calling its Join method.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd1bd348b-df8f-4f62-ad66-3922f82589bc', N'Assambly', N'1.Private assembly
2.Shared Assembly', N'GAC .. ??', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5eec1cfc-a99e-474f-994c-39d4c838b7b3', N'empty', N'NOTE : Type members can have all the access modifiers, where as types can have only 2 (internal, public) of the 5 access modifiers', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fc927676-d510-437d-bf6d-3ac14cc695ed', N'empty', N'EndInvoke does three things. First, it waits for the asynchronous delegate to finish executing, if it hasn?t already. Second, it receives the return value (as well as any ref or out parameters). Third, it throws any unhandled worker exception back to the calling thread.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'78b18490-7bd5-445b-8e9f-3b2042aafeb1', N'Extension method restriction', N'Extended method should be static.
Class containing extended method should be static.
"this" keyword will be in the parameter section of the method.
You can call the method on the type of the first parameter.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ec5461a5-f392-4d3c-b7b7-3bdeb78c0599', N'Collection', N'No need to set the size at the time of the declaration.CLR will take care of it.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9e8bfb3c-11be-4ff8-981a-3de59074dc66', N'Type vs Member Type :', N'classes, structs, enums, interfaces, delegates are called as types and fields, properties, constructors, methods etc., that normally reside in a type are called as type members.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'aa57661d-d1f1-4437-a624-3def28551401', N'empty', N'A thread is said to be preempted when its execution is interrupted due to an external factor such as time-slicing. In most situations, a thread has no control over when and where it?s preempted.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd7615737-9c3d-40ec-8397-3e2a0dd1bce8', N'2.Dynamic support', N'is used to tell the compiler that a variable''s type can change or that it is not known until runtime.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1174a1ed-b7d8-4025-b96c-3f2dacfcaea5', N'empty', N'It''s implemented by implementing IDisposable interface Dispose() method.', N'It''s implemented with the help of destructor in C++ & C#.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'66e2d92d-2749-4120-a57e-3f4581c520d6', N'PLINQ-specific methods are listed in the following table.', N'AsParallel : The entry point for PLINQ. Specifies that the rest of the query should be parallelized, if it is possible.
 AsSequential : Specifies that the rest of the query should be run sequentially, as a non-parallel LINQ query.
 AsOrdered : Specifies that PLINQ should preserve the ordering of the source sequence for the rest of the query, or until the ordering is changed, for example by the use of an orderby (Order By in Visual Basic) clause.', NULL, N'https://docs.microsoft.com/en-us/dotnet/standard/parallel-programming/introduction-to-plinq', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'14d9383a-237e-4d40-a757-41c870289f44', N'Mutex Vs Semaphore', NULL, NULL, N'https://stackoverflow.com/questions/34519/what-is-a-semaphore/40238#40238', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9364cff5-b494-4237-9fef-420069018a57', N'difference between read only and const', N'http://www.dotnet-tricks.com/Tutorial/csharp/FU4N141113-Difference-Between-Constant-and-ReadOnly-and-Static.html', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'744b3eed-5377-4b22-842c-436190f82a0f', N'There are a few things to be wary of when using pooled threads:', N'You cannot set the Name of a pooled thread, making debugging more difficult (although you can attach a description when debugging in Visual Studio?s Threads window).
 Pooled threads are always background threads (this is usually not a problem).
 Blocking a pooled thread may trigger additional latency in the early life of an application unless you call ThreadPool.SetMinThreads (see Optimizing the Thread Pool).
 You are free to change the priority of a pooled thread ? it will be restored to normal when released back to the pool.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b81f57df-1133-4d0e-a5e0-45301c9157fe', N'Storage capacity', N'1 Byte : char, unsigned char, signed char
2 Byte: short, unsigned short
4 Byte : int, unsigned int,long, unsigned long,float
8 byte :double,long double', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e97c150a-c638-43e7-b68a-460bd082b8b2', N'How to access GAC registered custom dll ?', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'88afa807-b7ef-4584-ac9e-46609975f223', N'empty', N'Default value for Type parameter in class is : The solution is to use the default keyword, which will return null for reference types and zero for numeric value types', N'public T GetLast()
        {
            T temp = default(T);
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'846f1f74-ffc6-4bb6-ade7-46b488e50d03', N'Thread-Local Storage', N'Thread-local storage (TLS) is a computer programming method that uses static or global memory local to a thread. All threads of a process share the virtual address space of the process. The local variables of a function are unique to each thread that runs the function. However, the static and global variables are shared by all threads in the process. With thread local storage (TLS), you can provide unique data for each thread that the process can access using a global index. One thread allocates the index, which can be used by the other threads to retrieve the unique data associated with the index.', N'<Real case scenario where Thread local storage is required>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'322ed449-c445-4f52-8b4d-489421919031', N'empty', N'The pattern for disposing an object, referred to as a dispose pattern, imposes order on the lifetime of an object. The dispose pattern is used only for objects that access unmanaged resources, such as file and pipe handles, registry handles, wait handles, or pointers to blocks of unmanaged memory. This is because the garbage collector is very efficient at reclaiming unused managed objects, but it is unable to reclaim unmanaged objects.', N'https://msdn.microsoft.com/en-us/library/system.idisposable.dispose%28v=vs.110%29.aspx', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'219ca770-10d6-474e-ae4a-4951747372c8', N'empty', N'Generic class should have restriction of type IComparable Interface. So that Any type parameter must implement IComparable Interface so that generic method can be provided which can use compare method.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1ee4b963-8e53-4024-9fa5-4ed8b3fb43bc', N'empty', N'Dispose', N'Finalize', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1afbacab-f549-4f46-955c-4f7ec4df7b8f', N'empty', N'can convert the Func type delegate into an Expression by wrapping Func delegate with Expresson', N'Expression<Func<Student, bool>> isTeenAgerExpr = s => s.age > 12 && s.age < 20;', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6a06bf0f-1dc8-44dc-8f13-512c3aba62e7', N'TYPES : Value Type : int bool char long,enum,structs', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'96760cdb-bc0d-4ee5-a595-51927a8366b0', N'Diamond Problem', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b70bb9e6-7619-40a3-95a6-52d2f71a7161', N'empty', N'Survival and promotions
Objects that are not reclaimed in a garbage collection are known as survivors, and are promoted to the next generation. Objects that survive a generation 0 garbage collection are promoted to generation 1; objects that survive a generation 1 garbage collection are promoted to generation 2; and objects that survive a generation 2 garbage collection remain in generation 2.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'51d9f0da-de98-4518-b1dd-534e79770be6', N'Concurrent Collections', N'ConcurrentStack<T> => Stack<T>
 ConcurrentQueue<T> => Queue<T>
 ConcurrentBag<T> (none)
 BlockingCollection<T> (none)
 ConcurrentDictionary<TKey,TValue>', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ac417dd9-d07a-4b45-9f25-540c388c501d', N'5.Comparison<T>', N'Comparison delegate is used to sort or order the data inside a collection. It takes two parameters as generic input type and return type should always be int. This is how we can declare Comparison delegate.', N'Comparison<string> tempComparison = new Comparison<string>(tempObj.SixTestFunction);', N'http://www.codeproject.com/Articles/741064/Delegates-its-Modern-Flavors-Func-Action-Predicate
', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'77c6911c-cd92-45a7-a332-561b9d062883', N'Unmanaged Code', N'Code that does not targets the CLR is known as managed code.', N'Applications that do not run under the control of the CLR are said to be unmanaged, and certain languages such as C++ can be used to write such applications, which, for example, access low - level functions of the operating system. Background compatibility with code of VB, ASP and COM are examples of unmanaged code.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'380a165e-bf85-4ed6-a345-56540259b1f7', N'The Open/Closed Principle', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7eeaef81-1249-4e11-9fc8-578d12c0a336', N'Lambda :', N'A lambda expression is an anonymous function that you can use to create delegates or expression tree types. By using lambda expressions, you can write local functions that can be passed as arguments or returned as the value of function calls', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'579a9b42-317e-4e9c-b0dd-5a1987dcd47d', N'empty', N'WithMergeOptions: Provides a hint about how PLINQ should, if it is possible, merge parallel results back into just one sequence on the consuming thread.
 WithExecutionMode: Specifies whether PLINQ should parallelize the query even when the default behavior would be to run it sequentially.
 ForAll: A multithreaded enumeration method that, unlike iterating over the results of the query, enables results to be processed in parallel without first merging back to the consumer thread.
 Aggregate: overload An overload that is unique to PLINQ and enables intermediate aggregation over thread-local partitions, plus a final aggregation function to combine the results of all partitions.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'620bcb3e-d0f7-4cd0-9642-5bda06c28ea5', N'When not to use Anonymous Types', N'When Not to use Anonymous Types
•There is a need to define a method
•There is a need to define another variable.
•There is a need to share data across methods', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9f6abdc8-4435-4412-a328-6040397b1bcd', N'Generic Delegate', N'It means we will not specify the type of input parameter or return type at the time of delegate declaration.', N'delegate T GenericDelegate<T>(T v);
class GenDelegateDemo{
public static void Main()
{ GenericDelegate<int> intDel = Sum;
Console.WriteLine(intDel(3));
GenericDelegate<string> strDel = Reflect;
Console.WriteLine(strDel("Hello"));
}
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2863d7b0-daec-4823-841b-623dba63bec6', N'empty', N'ArrayList,Stack,Queue,HashTable', N'hashtable will sort the data.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'91f9c58e-c1f2-4126-ad79-626347e7c889', N'some powerful features', N'Tune a task?s scheduling
 Establish a parent/child relationship when one task is started from another
 Implement cooperative cancellation
 Wait on a set of tasks ? without a signaling construct
 Attach ?continuation? task(s)
 Schedule a continuation based on multiple antecedent tasks
 Propagate exceptions to parents, continuations, and task consumers', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'18338ec7-990e-437b-ab6e-66df6d8a71c9', N'TaskFactory', N'When you call Task.Factory, you?re calling a static property on Task that returns a default TaskFactory object. The purpose of a task factory is to create tasks', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b294eac6-5864-49bf-9d2f-679a16ac974d', N'Delegate', N'A delegate is a(type safe function pointer) type that represents references to methods with a particular parameter list and return type. When you instantiate a delegate, you can associate its instance with any method with a compatible signature and return type. You can invoke (or call) the method through the delegate instance.
Delegates are used to pass methods as arguments to other methods. Event handlers are nothing more than methods that are invoked through delegates. You create a custom method, and a class such as a windows control can call your method when a certain event occurs.', N'delegate double MyDelegate(double x); // Declaring a
//delegate
static void DemoDelegates()
{
// Creating & instantiating a delegate a delegate instance
MyDelegate delInstance = new MyDelegate(Math.Sin);
// Invoking a Method attached to a delagate
double x = delInstance(1.0);
}', N'Delegate is type safe function pointer.delegate will point to the fuction which mentioned in the contruction.', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'afbb75f4-67f3-4e75-9ee3-68e526fc70e5', N'BackroundWorker', N'BackgroundWorker is a helper class in the System.ComponentModel namespace for managing a worker thread. It can be considered a general-purpose implementation of the EAP( Event-Based Asynchronous Pattern), and provides the following features:
 
 A cooperative cancellation model
 The ability to safely update WPF or Windows Forms controls when the worker completes (RunWorkerCompletedEventHandler)
 Forwarding of exceptions to the completion event
 A protocol for reporting progress (ProgressChangedEventHandler)
 An implementation of IComponent allowing it to be sited in Visual Studio?s designer (public class BackgroundWorker : Component)', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6c097a47-6094-4f23-9fc9-6a803571c381', N'TaskCreationOptions,TaskCreationOptions,TaskScheduler', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7df38a33-4b17-40fb-86da-6e281876ec7a', N' Liskov Substitution Principle', N'The Liskov Substitution Principle (LSP) states that objects should be easily replaceable
by instances of their subtypes without influencing the behavior and rules of the objects.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'28efb496-8c45-48fe-96e8-6e808ba68001', N'empty', N'There are two strategies for partitioning work among threads: data parallelism and task parallelism.
 
 When a set of tasks must be performed on many data values, we can parallelize by having each thread perform the (same) set of tasks on a subset of values. This is called data parallelism because we are partitioning the data between threads. In contrast, with task parallelism we partition the tasks; in other words, we have each thread perform a different task.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
GO
print 'Processed 100 total records'
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c53afed5-cc45-4510-8c45-6facf9629e67', N'empty', N'LINQ introduced the new type called Expression that represents strongly typed lambda expression. It means lambda expression can also be assigned to Expression<TDelegate> type. The .NET compiler converts the lambda expression which is assigned to Expression<TDelegate> into an Expression tree instead of executable code. This expression tree is used by remote LINQ query providers as a data structure to build a runtime query out of it (such as LINQ-to-SQL, EntityFramework or any other LINQ query provider that implements IQueryable<T> interface).', NULL, N'https://www.tutorialsteacher.com/linq/linq-expression', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'60018869-007b-4dd2-8b95-6fe108814756', N'Mutex', N'A Mutex is like a C# lock, but it can work across multiple processes. In other words, Mutex can be computer-wide as well as application-wide.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6493f514-5790-42d9-9ebb-70cae6aa8bb8', N'Types of Constructor:
', N'1.Default Constructor :Default Constructor will get automatically created and invoked, if constructor is not Specified in the class and assign the instance variables with their default values.
2.Static constructor: This is similar to static method. It must be parameter less and must not have an access modifier (private or public).', N'Default Constructor if not created in code, Automatically created by CLR used to initialize the class members.
Static constructor will be called once when the first time class object will be created.
Used to initialiaze the varible that requires to initialiaze once.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'472c6904-7317-4fd5-acb9-7152b30418e8', N'empty', N'There is no performance costs associated with Dispose method.', N'There is performance costs associated with Finalize method since it doesn''t clean the memory immediately and called by GC automatically.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'aa550a51-66c1-432c-9c00-71deb1e41a56', N'Threads vs Processes', N'A thread is analogous to the operating system process in which your application runs. Just as processes run in parallel on a computer, threads run in parallel within a single process. Processes are fully isolated from each other; threads have just a limited degree of isolation. In particular, threads share (heap) memory with other threads running in the same application. This, in part, is why threading is useful: one thread can fetch data in the background, for instance, while another thread can display the data as it arrives', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3699125f-5347-4f2b-990d-72142f26853d', N'synchronization', N'coordinating the actions of threads for a predictable outcome. Synchronization is particularly important when threads access the same data; it?s surprisingly easy to run aground in this area.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c46ec39d-4057-4300-b7ae-750d35d0854e', N'Assembly manifest', N'An assembly manifest contains all the metadata needed to specify the assembly''s version requirements and security identity, and all metadata needed to define the scope of the assembly and resolve references to resources and classes. The assembly manifest can be stored in either a PE (Portable Executable) file (an .exe or .dll) with Microsoft intermediate language (MSIL) code or in a standalone PE (Portable Executable) file that contains only assembly manifest information. The following table shows the information contained in the assembly manifest. The first four items the assembly name, version number, culture, and strong name information make up the assembly''s identity. Assembly name: A text string specifying the assembly''s name.Version number: A major and minor version number, and a revision and build number. The common language runtime uses these numbers to enforce version policy.Culture: Information on the culture or language the assembly supports. This information should be used only to designate an assembly as a satellite assembly containing culture- or language-specific information. (An assembly with culture information is automatically assumed to be a satellite assembly.) Strong name information: The public key from the publisher if the assembly has been given a strong name. List of all files in the assembly:', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c93d2873-b76a-490b-8bfc-7819afb8ac3d', N'Why Thread Pool', N'Whenever you start a thread, a few hundred microseconds are spent organizing such things as a fresh private local variable stack. Each thread also consumes (by default) around 1 MB of memory. The thread pool cuts these overheads by sharing and recycling threads, allowing multithreading to be applied at a very granular level without a performance penalty. This is useful when leveraging multicore processors to execute computationally intensive code in parallel in ?divide-and-conquer? style.', N'Reduce the overhead of memory alloction and thread initialition and improves the performance', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'36baff46-d567-45e2-940f-79887a8d717f', N'How Threading Works', N'Multithreading is managed internally by a thread scheduler, a function the CLR typically delegates to the operating system. A thread scheduler ensures all active threads are allocated appropriate execution time, and that threads that are waiting or blocked (for instance, on an exclusive lock or on user input) do not consume CPU time.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a459c8a3-e707-4602-82ed-79ba188f7489', N'Semaphore', N'A semaphore is like a nightclub: it has a certain capacity, enforced by a bouncer. Once it?s full, no more people can enter, and a queue builds up outside. Then, for each person that leaves, one person enters from the head of the queue. The constructor requires a minimum of two arguments: the number of places currently available in the nightclub and the club?s total capacity.
 
 A semaphore with a capacity of one is similar to a Mutex or lock, except that the semaphore has no ?owner? ? it?s thread-agnostic. Any thread can call Release on a Semaphore, whereas with Mutex and lock, only the thread that obtained the lock can release it.
 Semaphores can be useful in limiting concurrency ? preventing too many threads from executing a particular piece of code at once.', N'class TheClub // No door lists!
 {
  static SemaphoreSlim _sem = new SemaphoreSlim (3); // Capacity of 3
  
  static void Main()
  {
  for (int i = 1; i <= 5; i++) new Thread (Enter).Start (i);
  }
  
  static void Enter (object id)
  {
  Console.WriteLine (id + " wants to enter");
  _sem.Wait();
  Console.WriteLine (id + " is in!"); // Only three threads
  Thread.Sleep (1000 * (int) id); // can be here at
  Console.WriteLine (id + " is leaving"); // a time.
  _sem.Release();
  }
 }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a2d05afb-fe38-40ed-82e2-7b51258ffa07', N'Abstract class and method', N'Method without the method body will be declared as abstact method and class containing atleast one abstract method called as abstarc class.
An abstract class is the one that cannot be instantiated
It may contain abstract and non-abstract function members
It cannot be sealed.
abstact class''s child class either should have  abstact method or concrete method.
abstract class may have constructor', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'509870fd-b724-44d5-bd17-7b7100d13d38', N'empty', N'You can query or change a thread?s background status using its IsBackground property', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e9e4b6ae-b8d7-4cfd-b3d6-7c520d80a084', N'Action<TParameter>', N'Action is used when we do not have any return type from method. Method with void signature is being used with Action delegate.
', N'Action<string, int> tempActionPointer; 
Action<string, int> tempActionPointer = tempObj.ThirdTestFunction;
tempActionPointer("hello", 4);
Console.ReadKey();  ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'174ce01d-c133-41b5-9711-7d1bfd8f9936', N'Foreground and Background Threads', N'By default, threads you create explicitly are foreground threads. Foreground threads keep the application alive for as long as any one of them is running, whereas background threads do not. Once all foreground threads finish, the application ends, and any background threads still running abruptly terminate.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'68e071c1-c780-4bcf-868f-7effccda9101', N'Different Flavors of Delegate :', N'Func
Action
Predicate
Converter
Comparison', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'149643ed-76ce-4152-a3bc-7fdf77790b9e', N'yield keyword', N'1.When you use the yield keyword in a statement, you indicate that the method, operator, or get accessor in which it appears is an iterator.
2.forms of the yield statement :
        1.yield return <expression>;
        2.yield break;

3.You consume an iterator method by using a foreach statement or LINQ query. Each iteration of the foreach loop calls the iterator method. When a yield return statement is reached in the iterator method, expression is returned, and the current location in code is retained. Execution is restarted from that location the next time that the iterator function is called.
4.You can use a yield break statement to end the iteration.
5.The declaration of an iterator must meet the following requirements:
1.The return type must be IEnumerable, IEnumerable<T>, IEnumerator, or IEnumerator<T>.
2.The declaration can''t have any ref or out parameters.
', N'   public static IEnumerable Power(int number, int exponent)
{
int counter = 0;
int result = 1;
while (counter++ < exponent)
{
  Console.WriteLine(" resultbefore retun {0} ", result);  
  result = result * number; 
  yield return result; 
  Console.WriteLine(" result after retun {0} ", result); 
}
}
static void Main()
{
foreach (int i in Power(2, 8))
{
Console.WriteLine("power result {0} ", i);
}
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5a65f47f-aa9b-4743-9986-80ede64cc43c', N'empty', N'You can invoke the delegate wrapped by an Expression the same way as a delegate, but first you need to compile it using the Compile() method. Compile() returns delegateof Func or Action type so that you can invoke it like a delegate', N'Expression<Func<Student, bool>> isTeenAgerExpr = s => s.age > 12 && s.age < 20;
 
 //compile Expression using Compile method to invoke it as Delegate
 Func<Student, bool> isTeenAger = isTeenAgerExpr.Compile();
  
 //Invoke
 bool result = isTeenAger(new Student(){ StudentID = 1, StudentName = "Steve", Age = 20});', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6549383c-bf75-4eaf-90a7-810269a7b7d9', N'empty', N'Only one thread can lock the synchronizing object (in this case, _locker) at a time, and any contending threads are blocked until the lock is released. If more than one thread contends the lock, they are queued on a ?ready queue? and granted the lock on a first-come, first-served basis', N'static readonly object _locker = new object();
 static void Go()
  {
  lock (_locker)
  {
  if (_val2 != 0) Console.WriteLine (_val1 / _val2);
  _val2 = 0;
  }
  }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'69fda0df-6056-4877-affa-81bb95d145ee', N'Difference between interface and abstract', N'An Abstract class doesn''t provide full abstraction but an interface does provide full abstraction.
Using Abstract we can not achieve multiple inheritance but using an Interface we can achieve multiple inheritance.
We can not declare a member field in an Interface but can delcare property in interface. But property needs to define in derived class. -Doubt
We can not use any access modifier i.e. public , private , protected , internal etc. because within an interface by default everything is public.
An Interface member cannot be defined using the keyword static, virtual, abstract or sealed.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6264b728-f5e9-441a-862a-8262d8334199', N'Method Overloading', N'Single method name but the type of parameters or the number of the patameters or the order of the type is different within the same class.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6cf4da9c-fb8f-4630-906d-83dd97cd51d6', N'Method Overriding', N'1.If we are creating the obj of parent class and calling the method which is override in the derive class,Base method will be called.
2.If we are creating the obj of child class and calling the method which is override in the derive class,derive  method will be called.
3.If we are creating the obj of child class and assigning to the parent class and calling the method through parent class which is override in the derive class,derive method will be called.', N'Virtual and override keyword', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'46a9e326-2850-496d-85af-86b0be82124d', N'empty', N'With the introduction of .NET 4.0, we have 2 GAC''s. One for DotNet 2.0 to 3.5 assemblies and the other for .NET 4.0 assemblies. The following are the paths for the 2 GAC''s
 1. C:\Windows\Assembly - For .NET 2.0 - 3.5 assemblies
 2. C:\WINDOWS\Microsoft.NET\assembly - For .NET 4.0 assemblies', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9dda1513-be21-4586-8f2f-8700df3a2074', N'empty', N'<Explore more. Use Titan Project to explore>', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd718f355-9961-49aa-a7b2-88142c205fdf', N'Indexer', N'Indexers permit instances of a class or struct to be indexed in
the same way as arrays.
You are working on a class that has a collection of some sort, but you want the class to appear to users (consumers of the class) as if it is a collection.

The best example is the DataRow class in ADO.NET. If you want to get the value of the fifth cell of a DataRow, you can either use DataRow.Item[4] or DataRow[4]. 
So data row has implemented indexer.', N'public string this[int pos]
{
get
{return myData[pos];}
set {myData[pos] = value}
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c149e862-3dc1-419d-9ee5-8a0c8165f8ab', N'4.COM Interop', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e3772bdf-b34e-4e2e-b2a3-8c72ef0926bc', N'Garbage collection in detail', N' There are three generations of objects on the heap:
Generation 0. This is the youngest generation and contains short-lived objects.
Generation 1. This generation contains short-lived objects and serves as a buffer between short-lived objects and long-lived objects.
Generation 2. This generation contains long-lived objects. ', NULL, N'https://www.codeproject.com/Articles/1095402/Garbage-Collection-and-Csharp', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'750d92b1-f2fe-43b7-a854-8dbcd569cef3', N'PFX : parallel programming', N'Programming to leverage multicores or multiple processors is called parallel programming. This is a subset of the broader concept of multithreading.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1eb09dbf-262a-490f-b771-8eb09a26ff40', N'Base Class Library Resposible for', N'It provides base for our application development so that we dont require to develop base.
For example, Frameworks provides API to read data from file, We don''t need to do coding for that.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'acfdf278-c154-4f5c-abf8-8f27f8e08592', N'Advantages of partial classes', N'1. The main advantage is that, visual studio uses partial classes to separate, automatically generated system code from the developer''s code. For example, when you add a webform, two .CS files are generated
a) WebForm1.aspx.cs - Contains the developer code
b) WebForm1.aspx.designer.cs - Contains the system generated code. For example, declarations for the controls that you drag and drop on the webform.

2. When working on large projects, spreading a class over separate files allows multiple programmers to work on it simultaneously. ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7f22abfe-c9c6-4025-85fc-90322eb7abda', N'Synchronization object', N'Any reference object can be used as synchronized object.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'83fae3f7-037b-4464-b090-93833df3c8e5', N'empty', N'You can also wait on multiple tasks at once ? via the static methods Task.WaitAll (waits for all the specified tasks to finish) and Task.WaitAny (waits for just one task to finish)', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'47065286-4255-4021-9e0b-95b9226110d4', N'empty', N'The static TaskScheduler.UnobservedTaskException event provides a final last resort for dealing with unhandled task exceptions. By handling this event, you can intercept task exceptions that would otherwise end the application ? and provide your own logic for dealing with them.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a5e541b6-b6fa-4014-839b-96f46e7e4d0c', N'empty', N'With a Mutex class, you call the WaitOne method to lock and ReleaseMutex to unlock. Closing or disposing a Mutex automatically releases it. Just as with the lock statement, a Mutex can be released only from the same thread that obtained it.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'01e1158a-d4ab-453a-879a-9cd3b709a201', N'empty', N'IF we don’t want to override the method in the derive class but want to keep the same name as parent class then we can delcare method as New keyword.', N'public new void method() { … }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bf32e636-e7d4-4225-a5c7-9d8ba80fd14a', N'ThreadPool.QueueUserWorkItem', N'To use QueueUserWorkItem, simply call this method with a delegate that you want to run on a pooled thread.
 Our target method, Go, must accept a single object argument (to satisfy the WaitCallback delegate). This provides a convenient way of passing data to the method, just like with ParameterizedThreadStart. Unlike with Task, QueueUserWorkItem doesn''t return an object to help you subsequently manage execution. Also, you must explicitly deal with exceptions in the target code ? unhandled exceptions will take down the program.', N'static void Main()
 {
  ThreadPool.QueueUserWorkItem (Go);
  ThreadPool.QueueUserWorkItem (Go, 123);
  Console.ReadLine();
 }
  
 static void Go (object data) // data will be null with the first call.
 {
  Console.WriteLine ("Hello from the thread pool! " + data);
 }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dc277791-3351-4183-89e4-9e14e5f707a9', N'
anonymous methods :', N'There is one case in which an anonymous method provides functionality not found in lambda expressions. Anonymous methods enable you to omit the parameter list.', N'delegate() {
                System.Console.Write("Hello, ");
                System.Console.WriteLine("World!");
            }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cf8b94ab-539a-4880-9840-9e3751bb4f46', N'empty', N'Executable code excutes in the same application domain to process over in-memory collection. Enumerable static classes contain extension methods for in-memory collections that implements IEnumerable<T> interface e.g. List<T>, Dictionary<T>, etc. The Extension methods in an Enumerable class accept a predicate parameter of Func type delegate. For example, the Where extension method accepts Func<TSource, bool> predicate. It then compiles it into IL (Intermediate Language) to process over in-memory collections that are in the same AppDomain.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3ecdcc09-2832-4ce5-95dd-9e7e9b5a7e35', N'empty', N'AsUnordered : Specifies that PLINQ for the rest of the query is not required to preserve the ordering of the source sequence.
 WithCancellation : Specifies that PLINQ should periodically monitor the state of the provided cancellation token and cancel execution if it is requested.
 WithDegreeOfParallelism : Specifies the maximum number of processors that PLINQ should use to parallelize the query.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f16640b1-cdc1-45ae-97b8-9ea7d20ef939', N'empty', N'1.If we are creating the instace of parent class,we will acess to the parent members only.
2.If we are creating the instace of child class,we will acess to the parent members and child members.
3.If we are creating the instace of child class and assigning to the parent ,we will acess to the parent members only.
4.We can not assign the parent obj to child class.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'637e51ed-0fe6-4571-a1ba-a23671eebbe8', N'Synchronization constructs can be divided into four categories', N'Simple blocking methods
 These wait for another thread to finish or for a period of time to elapse. Sleep, Join, and Task.Wait are simple blocking methods.
 Locking constructs
 These limit the number of threads that can perform some activity or execute a section of code at a time. Exclusive locking constructs are most common ? these allow just one thread in at a time, and allow competing threads to access common data without interfering with each other. The standard exclusive locking constructs are lock (Monitor.Enter/Monitor.Exit), Mutex, and SpinLock. The nonexclusive locking constructs are Semaphore, SemaphoreSlim, and the reader/writer locks.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6bd06001-a1a3-437f-b0d5-a2b7c18ec608', N'Synchronization Contexts', N'An alternative to locking manually is to lock declaratively. By deriving from ContextBoundObject and applying the Synchronization attribute, you instruct the CLR to apply locking automatically.
 The CLR ensures that only one thread can execute code in safeInstance at a time. It does this by creating a single synchronizing object ? and locking it around every call to each of safeInstance''s methods or properties. The scope of the lock ? in this case, the safeInstance object ? is called a synchronization context.
 
 So, how does this work? A clue is in the Synchronization attribute''s namespace: System.Runtime.Remoting.Contexts. A ContextBoundObject can be thought of as a ?remote? object, meaning all method calls are intercepted. To make this interception possible, when we instantiate AutoLock, the CLR actually returns a proxy ? an object with the same methods and properties of an AutoLock object, which acts as an intermediary. It''s via this intermediary that the automatic locking takes place. Overall, the interception adds around a microsecond to each method call.', N'using System;
 using System.Threading;
 using System.Runtime.Remoting.Contexts;
  
 [Synchronization]
 public class AutoLock : ContextBoundObject
 {
  public void Demo()
  {
  Console.Write ("Start...");
  Thread.Sleep (1000); // We can''t be preempted here
  Console.WriteLine ("end"); // thanks to automatic locking!
  } 
 }
  
 public class Test
 {
  public static void Main()
  {
  AutoLock safeInstance = new AutoLock();
  new Thread (safeInstance.Demo).Start(); // Call the Demo
  new Thread (safeInstance.Demo).Start(); // method 3 times
  safeInstance.Demo(); // concurrently.
  }
 }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1ff46e65-684b-4162-9f97-a2e83448b2f5', N'empty', N'Func delegate is for in-memory collections because it will be processed in the same AppDomain, but what about remote LINQ query providers like LINQ-to-SQL, EntityFramework or other third party products that provides LINQ capabilities? How would they parse lambda expression that has been compiled into raw executable code to know about the parameters, return type of lambda expression and build runtime query to process further? The answer is Expression tree.
 
 Expression<TDelegate> is compiled into a data structure called an expression tree.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'508864ff-e5c0-41b1-b394-a31ba60ebd85', N'SOLID', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'231ba8ab-c7c9-41cd-bce5-a33ecf00ddca', N'empty', N'An expression tree is transparent. You can retrieve a parameter, return type and body expression information from the expression', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a1f3a46e-75b8-43dd-a69c-a47198fe63f8', N'Explicit Interface implementation', N'We can implement methods by adding interace name as suffics to methods.', N'public class Person : IDal
{
        public string FirstName { get; set; }
        public string LastName { get; set; }


void IDal.Add()
        {
            throw new NotImplementedException();
        }

        void IDal.Update()
        {
            throw new NotImplementedException();
        }
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5d7a33e1-df4c-43c2-8641-a47c50221ffa', N'PLINQ has three partitioning strategies for assigning input elements to threads:', N'Strategy', N'Element allocation', N'Relative performance', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'21aa1f1d-e6bf-4fbb-816d-a5597a2f4d8a', N'empty', N'If we want to access base class property or method from derive class, we can use base keyword', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9a24e416-7161-47ec-9074-a570406c2b49', N'2.Zip facility (Zip compression)', N'Need to explore two new namespace 
1.System.IO.Compression.FileSystem
2.System.IO.Compression to know what are the functionality privided by this feature', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8b79b7b4-8ecc-43a9-9d75-a60be6374adb', N'empty', N'There can be situaltion, We create variable of type delegate but don''t use event keyword. In that case we can over write the callbacks.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'555144d1-7fe9-44cb-96f6-a62b13f6f17c', N'New keyword use', N'• It is possible for a derived class to define a member that has
the same name as a member in its base class.
• When this happens, the member in the base class is hidden
within the derived class.
• Even though this is not technically an error in C#, the compiler
issues a warning message.
• If you intended to hide a base class member purposely, then to
prevent this warning, the derived class member must be
preceded by the new keyword.', N'public class BaseC
{
    public static int x = 55;
}
public class DerivedC : BaseC
{
     new public static int x = 100;
}
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'97b8e1ee-e134-45d4-8b35-a7e185c968f2', N'TaskCreationOptions', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f352b9f3-16dc-4127-a4e9-a87e5aa70ac4', N'Reference Type:Classes, Interfaces, Arrays, Delegates', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'64910ba2-02a1-48c0-9308-a957fae56bd6', N'Partial Method :', N'A partial class or a struct can contain partial methods. A partial method is created using the partial keyword.', N'Rules http://csharp-video-tutorials.blogspot.in/2012/11/partial-methods-in-c-part-63.html', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1a4c7f1d-6ace-40c7-8f1a-a9901fa2ce4a', N'empty', N'You can query if you?re currently executing on a pooled thread via the property Thread.CurrentThread.IsThreadPoolThread', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'30cb22d3-1d2f-444d-9ea4-a9a6dac7f71f', N'empty', N'It belongs to IDisposable interface.', N'It belongs to Object class.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8943f035-1509-456c-8323-aac60ac8b09e', N'empty', N'Using the Thread Pool
 This is where the .Net Thread Pool comes in, where a number of threads are created ahead of time and kept around to pick up any work items you give them to do, without the overhead associated with creating your own threads.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'84f97c76-4f58-45c2-bfc3-ac9d25964e61', N'Dispose vs Finaliize', N'It is used to free unmanaged resources like files, database connections etc. at any time.', N'It can be used to free unmanaged resources (when you implement it) like files, database connections etc. held by an object before that object is destroyed.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8b5bfdd1-2f43-47fb-a5ee-ad06d242eba6', N'Lazy Initialization', N'Like lazy initiallize singleton object', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'27b3cb93-d7e3-4379-883b-ad77c6aa64b2', N'Version information', N'// Version information for an assembly consists of the following four values:
 //
 // Major Version
 // Minor Version 
 // Build Number
 // Revision', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3f94d4e1-9cd1-46a2-85c8-afad151c79a1', N'BackroundWorker Vs Thread', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1be355db-265d-4aa0-9ebf-b0085bc3016a', N'Lazy Initialization using Lazy<T>', NULL, N'Lazy<Expensive> _expensive = new Lazy<Expensive>
  (() => new Expensive(), true);
  
 public Expensive Expensive { get { return _expensive.Value; } }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f9c4d107-f05c-4cd4-a701-b1d9bc0f5497', N'Locking', N'Exclusive locking is used to ensure that only one thread can enter particular sections of code at a time.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'545ecddc-cd0a-47f6-a601-b228d191681f', N'Common Language Runtime responsible', N'Running of code
• Memory management
• Compilation of code
• Provides garbage collection, error handling
• Code access security for semi-trusted code<Explore>', N'<add more features>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'172c4ce3-27e1-4e11-bcac-b250fcca8f5a', N'.Net framework consists of', N'Two Components:
1.Common Language Runtime
2.Base Class Library', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'aa66c0f5-0cc7-4fbb-b52f-b276e8d6a9d1', N'Difference between delegate and event', N'Delegate is Type safe function pouinter where Event is type of delegate.', N'For e.g. EventHandler is delegate in .net framework where click event is type of EventHandler', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5f5d826c-754e-4b1d-9ee7-b29ad19fa652', N'empty', N'The following query operators are parallelizable, but use an expensive partitioning strategy that can sometimes be slower than sequential processing:
 
 Join, GroupBy, GroupJoin, Distinct, Union, Intersect, and Except', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'325484c6-45c2-4cac-92e6-b4727e43e926', N'Implicitly Typed Local Variables', N'If the variable is declare as type "var" 
Restriction : 1.The declarator must include an initializer.
 2.The initializer must be an expression. The initializer cannot be an object or collection initializer by itself, but it can be a new expression that includes an object or collection initializer.
 3.The compile-time type of the initializer expression cannot be the null type.
 4.If the local variable declaration includes multiple declarators, the initializers must all have the same compile-time type.', N'var num = 10;
 “var” can and should be used with LINQ queries that return custom collections. It can be used for defining the variable that holds the result of the query. It can also be used within a “foreach” loop as an iterator for cycling through the results, like this.
This keyword is also used when we create anonymous objects', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5ff015bf-be6b-4617-8adf-b49f87ad42ba', N'There are four kinds of parameters: out, ref, params and value.
', N'Value :Passing the argument as value.
value is a default parameter
Ref:Passing the argument reference not value
Out:The out keyword causes arguments to be passed by reference. 
Ref vs Out :This is like the ref keyword, except that ref requires that the variable be initialized before it is passed. To use an out parameter, both the method definition and the calling method must explicitly use the out keyword. out requires that variable to be initiallized in called method.For example:
params:', N'VALUE: Method( val);  //Calling like this
 static void Method( int i)
        {
                      //Method body - chaingin the parameter value
        }
Ref :  Method(ref val);  //Calling like this
 static void Method(ref int i)
        {
                      //Method body - chaingin the parameter value
        }
Out :  Method(out val);  //Calling like this
 static void Method(out int i)
        {
                      //Method body - chaingin the parameter value
        }
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6207115a-1596-48c8-adee-b509a651041c', N'GetData and SetData', N'<Explore more if important?>', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'721ebdf1-01aa-4393-a6ed-b664989f2af7', N'Interface', N'•  Interface members are implicitly public abstract (virtual).
• Interface members must not be static.
• A class can inherit from a single base class, but can implement multiple interfaces.
• A struct cannot inherit from any type, but can implement multiple interfaces.
• Implemented interface methods must not be declared as override.
• Implemented interface methods can be declared as virtual or abstract', N'
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'77c6105d-7aa6-4cdd-8bd9-b8519a51e290', N'Monitor.Enter and Monitor.Exit', N'C#?s lock statement is in fact a syntactic shortcut for a call to the methods Monitor.Enter and Monitor.Exit, with a try/finally block. Here?s (a simplified version of) what?s actually happening within the Go method of the preceding example:', N'Monitor.Enter (_locker);
 try
 {
  if (_val2 != 0) Console.WriteLine (_val1 / _val2);
  _val2 = 0;
 }
 finally { Monitor.Exit (_locker); }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'16e499dc-25b6-46c0-a842-b943b4bdbe6d', N'Method hiding :', N'we can have the same methods in child class with the new keyword.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b63e72bb-deba-4531-bde8-ba209aacfc5b', N'3.Regex Timeout', N'Allows to set time,if reg ex match doesn’t match within that time timout excception will occour.', N'try
{
  var regEx = new Regex(@”^(\d+)+$”, RegexOptions.Singleline, TimeSpan.FromSeconds(2));
  var match = regEx.Match(“123453109839109283090492309480329489812093809x”);
}
catch (RegexMatchTimeoutException ex)
{
  Console.WriteLine(“Regex Timeout”);
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5a975a2f-bb8e-4d34-960b-bd21b3154350', N'empty', NULL, N'1 wants to enter
 1 is in!
 2 wants to enter
 2 is in!
 3 wants to enter
 3 is in!
 4 wants to enter
 5 wants to enter
 1 is leaving
 4 is in!
 2 is leaving
 5 is in!', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4e7e200d-3fa7-435e-90e1-bd84e9bc4121', N'Converter<TInput, TOutput> :', N'Convertor delegate is used when you need to migrate / convert one collection into another by using some algorithm. Object A gets converted into Object B.
', N'Converter<Employee, XEmployee> tempConvertorPointer 
                = new Converter<Employee, XEmployee>(tempObj.FifthTestFunction); ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bad394c6-93b4-41b2-a5ac-bda38d941e02', N'empty', N'If we want to pass the method as a perameter,delegate is the only solution.
', N'class Program
    {
        public delegate bool FindEmployeeDelegate(Employee emp);
        static void Main(string[] args)
        {
            List<Employee> lst = new List<Employee>() { new Employee() { ID = 103, Name = "Nimesh" }, new Employee() { ID = 104, Name = "Nikita" } };
            FindEmpoyee(lst, x => x.ID == 103);
            Console.ReadLine();
        }
        public static void FindEmpoyee(List<Employee> emplist, FindEmployeeDelegate findEmployeeDelegate)
        {
            foreach (Employee item in emplist)
            {
                if (findEmployeeDelegate(item))
                {
                    Console.WriteLine("Do something for these" + item.ID);
                }
            }
        }
    }
    public class Employee
    {
        public int ID { get; set; }
        public string Name { get; set; }
    }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2d5ecbd3-bd50-4d9c-ad90-c005619dbe98', N'Sealed keyword', N'• Sealed class can not be inheritate.
• All structs are implicitly sealed.
• Sealed method cant be override.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'23e2be0f-df61-4024-8ca7-c05dd5fb8a45', N'empty', N'Chunk partitioning', N'Dynamic', N'Average', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b99e7bda-b4fd-441b-a3f0-c22ffaeb87cc', N'empty', N'“Explicit” interface should be used when your concrete class abstraction does not include the interface abstraction', N'<Explain>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1f96360f-7a97-48f3-9169-c37ad10f0a60', N'Do I required public key to access strongly named assembly?', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5c6c5eea-60c8-4ae0-84b8-c4ce9ad2f004', N'Param :', N'Using "Params", the arguments passed to a method are changed by the compiler to elements in a temporary array, and this array is then used to retrieve the method.', N'1. It should be the last argument in method 
2. Only one is allowed.

 public static void ADDParameters(params int[] arguemnts)
 {
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2b7c04f4-276c-4c47-8045-c5bca7d1e456', N'empty', N'Range partitioning', N'Static', N'Poor to excellent', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'02d86aff-a412-4cc9-b731-c76adc0d82ac', N'Nullable Types', N'Nullable types represent value-type variables that can be
assigned the value of null.
You cannot create a nullable type based on a reference type:
Reference types already support the null value.
A nullable type can represent the normal range of values for its
underlying value type, plus an additional null value.', N'int? num = null;', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'35175b12-d327-4443-a58f-c95534fbd991', N'Anonymous Types', N'Set property values into an object without writing a class definition
The resulting class has no usable name
• The class name is generated by the compiler
• The created class inherits from Object
• The result is an ‘anonymous’ type that is not available at the source code level.', N'var person = new { Name = “John Doe”, Age = 33 };', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd1de44ca-d62e-42c2-addb-cbab1d51cc15', N'Generics Collection', N'To provide stronger compile-time type checking and reduce type casts,
Stack<T>,HashTable<K,V>,List<T>', N'<Code Walkthrough of TM>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e7faff9e-69be-4f62-ae53-cbb051d5ca97', N'empty', N'Func delegate is a raw executable code, so if you debug the code, you will find that the Func delegate will be represented as opaque code. You cannot see its parameters, return type and body:', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9a6cd649-6583-4248-b02d-ceddec235909', N'Expression Tree', N'Expression tree as name suggests is nothing but expressions arranged in a tree-like data structure. Each node in an expression tree is an expression. For example, an expression tree can be used to represent mathematical formula x < y where x, < and y will be represented as an expression and arranged in the tree like structure.
 
 Expression tree is an in-memory representation of a lambda expression. It holds the actual elements of the query, not the result of the query.
 
 The expression tree makes the structure of the lambda expression transparent and explicit. You can interact with the data in the expression tree just as you can with any other data structure.', N'Expression<Func<Student, bool>> isTeenAgerExpr = s => s.Age > 12 && s.Age < 20;
 
 Console.WriteLine("Expression: {0}", isTeenAgerExpr );
  
 Console.WriteLine("Expression Type: {0}", isTeenAgerExpr.NodeType);
 
 var parameters = isTeenAgerExpr.Parameters;
 
 foreach (var param in parameters)
 {
  Console.WriteLine("Parameter Name: {0}", param.Name);
  Console.WriteLine("Parameter Type: {0}", param.Type.Name );
 }
 var bodyExpr = isTeenAgerExpr.Body as BinaryExpression;
 
 Console.WriteLine("Left side of body expression: {0}", bodyExpr.Left);
 Console.WriteLine("Binary Expression Type: {0}", bodyExpr.NodeType);
 Console.WriteLine("Right side of body expression: {0}", bodyExpr.Right);
 Console.WriteLine("Return Type: {0}", isTeenAgerExpr.ReturnType);
 
 
 //Output
 Expression: s => ((s.Age > 12) AndAlso (s.Age < 20))
 Expression Type: Lambda
 Parameter Name: s
 Parameter Type: Student
 Left side of body expression: (s.Age > 12)
 Binary Expression Type: AndAlso
 Right side of body expression: (s.Age < 20)
 Return Type: System.Boolean', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'202cee81-1d89-452c-b07c-cf97773aa913', N'Thread Priority', N'A thread?s Priority property determines how much execution time it gets relative to other active threads in the operating system, on the following scale:', N'enum ThreadPriority { Lowest, BelowNormal, Normal, AboveNormal, Highest }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c86a89ab-c3ce-4c92-84ab-d20fe96ec398', N'Default Access Specifier', N'Class and Struct has the internal as default modifier.
Enum and interface has the Public as default modifier.
Methods,Fields,and properties has the Private  as default modifier.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a312ac7b-ad83-4cc9-aaa6-d3c0990610a0', N'Boxing and unboxing', N'Boxing is the process of converting a value type to the type object or to any interface type implemented by this value type. When the CLR boxes a value type, it wraps the value inside a System.Object and stores it on the managed heap. Unboxing extracts the value type from the object. Boxing is implicit; unboxing is explicit.', N'int i = 123;
// The following line boxes i. 
object o = i; 
o = 123;
i = (int)o;  // unboxing', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0ce35b54-c996-48c3-b405-d4e01716e0c0', N'Difference between Convert.ToString() and ToString() method :', N'If we call toString on Null object,Tostring will throw null reference exception where Convert.Tostring() doesnt.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'74caa794-52d9-4433-ac21-d6b30e4f9762', N'Partial classes :', N'Partial classes allow us to split a class into 2 or more files.  All these parts are then combined into a single class, when the application is compiled. The partial keyword can also be used to split a struct or an interface over two or more files.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'76f5f481-9ea7-4f80-a464-d6cea9c647d3', N'strong naming  assembly', N'1. Strong naming your assembly allows you to include your assembly into the Global Assembly Cache (GAC). Thus it allows you to share it among multiple applications.

2. Strong naming guarantees a unique name for that assembly. Thus no one else can use the same assembly name.

3. Strong name protect the version lineage of an assembly. A strong name can ensure that no one is able to produce a subsequent version of your assembly. Application users are ensured that a version of the assembly they are loading come from the same publisher that created the version the application was built with.

4. Strong named assemblies are signed with a digital signature. This protects the assembly from modification. Any tampering causes the verification process that occurs at assembly load time to fail. An exception is generated and the assembly is not loaded.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'67ab44a7-aaf5-4a70-8ee6-d9c94193b4d5', N'empty', N'Another (subtler) difference is that by default, antecedent and continuation tasks may execute on different threads. You can force them to execute on the same thread by specifying TaskContinuationOptions.ExecuteSynchronously when calling ContinueWith: this can improve performance in very fine-grained continuations by lessening indirection.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4ae3fd9f-34b2-4983-a609-d9e851a35963', N'Pointers are missing in C#.', N'To maintain type safety and security, C# does not support pointer arithmetic, by default. However, by using the unsafe keyword, you can define an unsafe context in which pointers can be used.
Unsafe operations such as direct memory manipulation.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'22f3fd7f-c63d-4989-8ca3-da2d3aeb5909', N'Declarig Events in class', NULL, N'// Declare a delegate for an event.
delegate void MyEventHandler();
// Declare an event class.
class MyEvent
{
public event MyEventHandler MyClickEvent;
// This is called to fire the event.
public void InvokeClickEvent()
{ if(MyClickEvent != null)
MyClickEvent();
}
}', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5ba3619f-5642-440a-9ef7-db84572ac7f6', N'Default Method implementation :', N'Any one of the interface method can have method implemenatation with out appending interface name.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3a3161fe-2a41-4181-88a8-dc2457b830ea', N'async and await', N'It will limit the functionaly of asyncronous', NULL, N'http://www.codeproject.com/Articles/599756/Five-Great-NET-Framework-Features', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3224ae53-30ad-4521-80b2-dd8cc02176e0', N'Lock Vs Mutex', N'A lock allows only one thread to enter the part that''s locked and the lock is not shared with any other processes.
 
 A mutex is the same as a lock but it can be system wide (shared by multiple processes).
 
 A semaphore does the same as a mutex but allows x number of threads to enter, this can be used for example to limit the number of cpu, io or ram intensive tasks running at the same time.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c9b71404-2973-4d27-9a73-df0301f4f5b3', N'Dispose and Idisposable', N'You implement a Dispose method to release unmanaged resources used by your application. The .NET garbage collector does not allocate or release unmanaged memory. 
Refer Garbage collection at below for more detail', N'https://docs.microsoft.com/en-us/dotnet/standard/garbage-collection/implementing-dispose', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'af22a24c-25f9-48a7-81e2-e36f814e9d80', N'Common Type System', N'Common Type System (CTS) is a standard that specifies how type definitions and specific values of types are represented in computer memory.', N'<Add more>', N'https://docs.microsoft.com/en-us/dotnet/standard/base-types/common-type-system', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
GO
print 'Processed 200 total records'
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'31eee1a5-a2ec-47f3-864b-e7117b03e0a4', N'Immutable vs Mutable', N'Mutable and immutable are English words that mean "can change" and "cannot change" respectively.
that means the mutable types are those whose data members can be changed after the instance is created but Immutable types are those whose data members can not be changed after the instance is created.
When we change the value of mutable objects, value is changed in same memory. But in immutable type, the new memory is created and the modified value is stored in new memory.
String is immutable and StringBuilder is mutable', N'Example of immutable class:
class MyClass  
    {  
        private readonly string myStr;  
        public MyClass(string str)  
        {  
            myStr = str;  
        }  
        public string GetStr  
        {  
            get { return myStr; }  
        }  
    } 
1. Parameterized constructor
2. only get accessor
', N'In detail: https://www.c-sharpcorner.com/article/mutable-and-immutable-class-in-c-sharp/', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e5abed78-d6e7-4615-bfb4-e76423833d86', N'Reflection', N'Reflection is ability to find information about types contained in
an assembly at run time.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5d97e971-6ff1-4cc7-93cd-e913525a3dc0', N'Managed Code', N'Code that targets the CLR is known as managed code.', N'Managed code is something which uses services provided by CLR.Code will concetrate on business logic and rest of the services will be provided by CLR.
The code, which is developed in .NET framework, is known as managed code. This code is directly executed by CLR with help of managed code execution. Any language that is written in .NET Framework is managed code.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'259c4bd9-2b86-4661-b71b-ebacf3b7fafb', N'WPF vs Silver Light', N'WPF is a thick Windows client platform that has access to the full .Net Framework. Silverlight is a browser-based technology that has access to a subset of the .Net Framework (called the CoreCLR). So, you''ll notice differences using seemingly every day methods and objects within the framework. For instance, the Split() method on the String class has 3 overrides in Silverlight, but 6 in the .Net Framework. You''ll see differences like this a lot.

Within WPF, all visually rendering elements derive from the Visual base class. Within Silverlight, they do not; instead, they derive from Control. Both technologies, however, eventual derive from the DependencyObject class up the hierarchy.

WPF, currently, ships or has available more user controls than Silverlight; though this difference is being mitigated through the Silverlight Toolkit and the upcoming release of Silverlight 3.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'81b3109c-b113-4622-ad1b-ebc3b440be5e', N'empty', N'On a single-processor computer, a thread scheduler performs time-slicing ? rapidly switching execution between each of the active threads. Under Windows, a time-slice is typically in the tens-of-milliseconds region ? much larger than the CPU overhead in actually switching context between one thread and another (which is typically in the few-microseconds region).', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0beb1173-d1cb-473e-bca3-ebe7625d4b75', N'The Interface Segregation Principle', N'The Interface Segregation Principle (ISP) encourages the use—and at the same time,
limits the size—of interfaces throughout an application. In other words, instead of one
superclass interface that contains all the behavior for an object, there should exist mul-
tiple, smaller, more specific interfaces. ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9a9e9156-4f66-4534-aaa8-ec5a00748455', N'empty', N'Unfortunately, [ThreadStatic] doesn?t work with instance fields (it simply does nothing); nor does it play well with field initializers ? they execute only once on the thread that''s running when the static constructor executes.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ac308547-8b23-4153-b04f-ed1104424eef', N'empty', N'Difference between “String” and “string”', N'they are the same thing and string is just an alias to String.', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6d76d217-c0f6-4233-aa3c-edb4c1ffc7e1', N'Benefits of strong naming assembly', N'Strong naming your assembly allows you to include your assembly into the Global Assembly Cache (GAC). Thus it allows you to share it among multiple applications.
 
 Strong names guarantee name uniqueness by relying on unique key pairs. No one can generate the same assembly name that you can, because an assembly generated with one private key has a different name than an assembly generated with another private key.
 
 Strong name protect the version lineage of an assembly. A strong name can ensure that no one is able to produce a subsequent version of your assembly. Application users are ensured that a version of the assembly they are loading come from the same publisher that created the version the application was built with.
 
 Strong names provide a strong integrity check. Passing the .NET Framework security checks guarantees that the contents of the assembly have not been changed since it was built. Note, however, that strong names in and of themselves do not imply a level of trust like that provided, for example, by a digital signature and supporting certificate', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'762592e1-63b2-411c-a62c-ee2abf8cf6b1', N'LazyInitializer', N'LazyInitializer is a static class that works exactly like Lazy<T> except:
 
 Its functionality is exposed through a static method that operates directly on a field in your own type. This avoids a level of indirection, improving performance in cases where you need extreme optimization.
 It offers another mode of initialization that has multiple threads race to initialize.', N'Expensive _expensive;
 public Expensive Expensive
 { 
  get // Implement double-checked locking
  { 
  LazyInitializer.EnsureInitialized (ref _expensive,
  () => new Expensive());
  return _expensive;
  }
 }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'97b916db-9f7a-4516-a2a0-ee85731a7ebb', N'[ThreadStatic]', N'The easiest approach to thread-local storage is to mark a static field with the ThreadStatic attribute:', N'[ThreadStatic] static int _x', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'063c1cf6-f3b8-46ad-8166-efa8c8cf475e', N'empty', N'Hash partitioning', N'Static', N'Poor', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'862122b2-359e-4262-aae7-f011d358ba5e', N'Assembly and type of it', N'an assembly is a compiled code library
1.process assemblies (EXE) and
2.library assemblies (DLL) which will be in IL Form and executed by JIT and converted into Native language at runtime.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1dd1582f-31c5-4886-b0e9-f0cc212ad60c', N'What is DLL Hell', N'Many of the problems that lead developers to use the term "DLL hell" involve instances when an alteration to a DLL file by a program negatively affects the function of other programs that need to use the same DLL file. Problems with registries, incompatibility and the incorrect updating of DLL files are all part of the general challenge of ordering the use of DLL files across many different applications.
 In more current versions of Windows, some of the problems that contribute to DLL hell have been addressed and solved to some extent. Changes include a .NET framework, which uses metadata to describe program components. This system helps with versioning and deployment to alleviate some of the problems that arise due to cross-language DLL use or situations where applications have to share a DLL file', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'31750471-4ce4-41bd-a7ec-f29d6877dd86', N'The Single Responsibility Principle', N'The Single Responsibility Principle (SRP) states that objects should have a single re-
sponsibility and all of their behaviors should focus on that one responsibility. ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3a75002a-53c1-48cf-a346-f2b45e634c24', N'empty', N'If we have method in base class and with the same signature we have the method in the child class with out having overide and virtual keyword,and if we call method by super class refernce (assigned by child class), It will call base class method.It will show compile time warning that these methods are hiding(derive class''s method).', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6059cf85-6a0a-4f6d-974b-f2f5388966d3', N'empty', N'Silverlight supports the XmlDataProvider but not the ObjectDataProvider. WPF supports both.

Silverlight can only make asynchronous network calls. WPF has access to the full .Net networking stack and can make any type of call. Also, currently, Silverlight supports SOAP, but can not handle SOAP fault exceptions natively (this may change in Silverlight 3).

There are huge differences in Cryptography (Silverlight has 20 classes in the namespace, while WPF has access to 107). Basically, Silverlight supports only 4 hashing algorithms and the AES encryption protocol.

Silverlight doesn''t yet support: Commanding, Validation, Printing, XPS Documents, Speech, 3D, Freezable objects, or InterOp with the Windows Desktop; all of which are available in WPF.

Silverlight supports browser interop, more media streaming options including timeline markers, and Deep Zoom. WPF doesn''t support these features yet.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4df05ee2-bc08-4bda-99fd-f31f11b14275', N'What is SOAP', N'Web Services provide mechanism for programs to
communicate over internet using SOAP (Simple Object Access
Protocol).', N'<add example of soap request>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dedce97d-0872-49e9-a275-f395fc39e380', N'Named Mutex', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'34bb9941-62c2-40ba-9e9f-f3eac4c6e590', N'Construcoter execution orders.', N'1.Derived static fields
 2.Derived static constructor
 3.Derived instance fields
 4.Base static fields
 5.Base static constructor
 6.Base instance fields
 7.Base instance constructor
 8.Derived instance constructor', N'For Example refer this : www.csharp411.com/c-object-initialization/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ebbdc676-baf3-4c03-9de8-f3efd9b866d3', N'empty', N'Parallel.Invoke
 Executes an array of delegates in parallel
 Parallel.For
 Performs the parallel equivalent of a C# for loop
 Parallel.ForEach
 Performs the parallel equivalent of a C# foreach loop', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e3ab1f82-9edf-4e45-be1c-f41b518c6fc4', N'Object Initializers?', N'An object initializer is used to assign values to an object fields
or properties when the object is created.', N'Customer c = new Customer() { Name = "Maria Anders",
City = "Berlin" };
Customer c = new Customer(1) { Name = "Maria Anders",
City = "Berlin" };', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b5dd8d45-c511-4d51-83c6-f46d1ac84a34', N'Inheritance', N'Inheritance is also called ‘is a’ relationship', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1b5e08e7-386a-42db-8bdd-f61610947496', N'Dot net Architecture', N'Languages  -- > compilation of each language specific code will be done by language specific compiler  and  converted into IL(Intermidiated language) and then IL will be converted by JIT Compiler into Native language.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1ea9935a-0f13-42a7-87b6-f7f2d3ef2ee7', N'empty', NULL, N'//Output
 Start... end
 Start... end
 Start... En', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c7d989dc-b355-415d-b465-fab5bf19d3d0', N'3.Co and Contra Variance', N'covariance and contravariance enable implicit reference conversion for array types, delegate types, and generic type arguments.Covariance preserves assignment compatibility and contravariance reverses it.', NULL, N'http://blogs.msdn.com/b/csharpfaq/archive/2010/02/16/covariance-and-contravariance-faq.aspx', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'16efb36a-5bd5-4c59-b80c-fea00c58a48e', N'Entering the Thread Pool via TPL', N'You can enter the thread pool easily using the Task classes in the Task Parallel Library. The Task classes were introduced in Framework 4.0: if you?re familiar with the older constructs, consider the nongeneric Task class a replacement for ThreadPool.QueueUserWorkItem, and the generic Task<TResult> a replacement for asynchronous delegates. The newer constructs are faster, more convenient, and more flexible than the old.
 
 Task.Factory.StartNew returns a Task object, which you can then use to monitor the task ? for instance, you can wait for it to complete by calling its Wait method.', N'static void Main() // The Task class is in System.Threading.Tasks
 {
  Task.Factory.StartNew (Go);
 }
  
 static void Go()
 {
  Console.WriteLine ("Hello from the thread pool!");
 }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6bc85e09-83f1-4087-b529-feb0a2477c69', N'Safe Cancellation using CancellationToken', N'cooperative Cancellation', N'var cancelSource = new CancellationTokenSource();
 new Thread (() => Work (cancelSource.Token)).Start();
 
 void Work (CancellationToken cancelToken)
 {
  cancelToken.ThrowIfCancellationRequested();
  ...
 }', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bc9e0474-555f-45ab-9b7d-ff47b792c3df', N'3.Predicate<in T> :', N'Predicate is a function pointer for method which returns boolean value. They are commonly used for iterating a collection or to verify if the value does already exist. Declaration for the same looks like this:', N'Predicate<Employee> tempPredicatePointer;', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
