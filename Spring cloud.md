Spring Cloud
一系列框架的有序集合。利用Spring Boot的开发便利性巧妙地简化了分布式系统基础设施的开发，如服务发现注册、配置中心、消息总线、负载均衡、断路器、数据监控等
都可以用springboot的开发风格做到一键启动和部署。spring并没有重复制造轮子，他只是将目前各家公司开发的比较成熟、经得起实际考验的服务框架组合起来，通过
springboot风格进行再封装屏蔽了复杂的配置和实现原理，最终给开发者留出了一套简单易懂、易部署和易维护的分布式系统开发工具包。

微服务是可以独立部署、水平扩展、独立访问（或者有独立的数据库）的服务单元，SpringCloud就是这些微服务的大管家，采用了微服务中架构之后，项目的数量会非常多，
SpringCloud作为大管家需要管理好这些微服务，自然需要很多小弟来帮忙。
主要的小弟有：Spring Cloud Config、Spring Cloud NetFlix(Eureka、Hystrix、Zuul、Archaius...)Spring Cloud Bus、Spring Cloud for Cloud Foundry、
Spring Cloud Cluster、Spring Cloud Consul、Spring Cloud Security、Spring Cloud Sleuth、Spring Cloud Data Flow、Spring Cloud Stream、
Spring Cloud Task、Spring Cloud Zookeeper、Spring Cloud Connectors、Spring Cloud Starters、Spring Cloud CLI

Spring Cloud NetFlix
  地位仅次于老大，老大各项服务依赖于它，与各种NetFlix OSS组件集成，组成微服务的核心，主要有Eureka,Hystrix,Zuul,Archaius...
  NetFlix Eureka
    服务中心，云端服务发现，一基于rest的服务，用于定位服务，以实现云端中间层服务发现和故障转移。最重要的一个功能，服务中心，任何其他服务都需要其他服务支持什
    么都需要从这里来拿，同样的你有什么独门武功都赶紧过来报道，方便以后其他服务来调用；它的好处是你不需要直接找各种服务来支持，只需要到服务中心来领取，也不需要
    知道提供支持的其他服务在哪里，以及由哪些服务来支持的，反正拿来用就行，服务中心用来保证稳定性和质量。
  NetFlix Hystrix
    熔断器，容错管理工具，旨在通过熔断机制控制服务和第三方库的节点，从而对延迟和故障提供更强大的容错能力。比如某个服务中断了，但是还需要它的支持，然后调用之后
    半天没有响应，你却不知道，一直在等待这个响应；有可能别的服务也在调用你的API，那么当请求多之后，就会发生严重的阻塞影响老大的整体计划。这个时候Hystrix就派
    上用场了，当Hystrix发现某个服务不在状态或不稳当就立马让它下线，别的服务顶上，或者告知调用者这个服务不可用。该干嘛干嘛，不用等了。
  NetFlix Zuul
    Zuul是在云平台上提供动态路由，监控，弹性，安全等边缘服务的框架。Zuul相当于是设备和NetFlix流应用的WEB网站后端所有请求的前门。当其他派来找主服务的时候一定
    要先经过Zuul，看下有没有什么不安全的。进行拦截扫描或者直接调用指定服务。
  NetFlix Archaius
    配置管理API，包含一系列配置管理API，提供动态类型化属性、线程安全配置操作、轮询框架、回调机制等功能。可以实现动态获取配置，原理是每隔60s（默认，可配置）
    从配置源读取一次内容，这样修改了配置文件后不需要重启服务就可以使修改以后的内容生效，前提是使用Archaius的API来读取。
Spring Cloud Config
  俗称的配置中心，配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、git以及Subversion。就是将所有配置，资源都集中放在一起
  ，别随便自己带，方便以后统一管理、升级。
Spring Cloud Bus
  事件、消息总线，用于在集群（例如：配置变化事件）中传播状态变化，可与Spring Cloud Config联合实现热部署。相当于水浒传中日行八百里的神行太保戴宗，确保各个
  服务之间消息保持畅通。
Spring Cloud for Cloud Foundry
Cloud Foundry是VMWare推出的业界第一开源PaaS平台，它支持多种框架、语言、运行时环境、云平台及应用服务，使开发人员能够在几秒钟内进行应用程序的部署和扩展，
无需担心任何基础架构的问题。其实就是与CloudFoundry进行集成的一套解决方法。
Spring Cloud Cluster
Spring Cloud Cluster将取代Spring Integration。提供在分布式系统中的集群所需要的基础功能支持，如：选举、集群的状态一致性、全局锁、tokens等常见状态模
式的抽象和实现。如果把不同的帮派组织成统一的整体，Spring Cloud Cluster已经帮你提供了很多方便组织成统一的工具。
Spring Cloud Consul
Consul是一个支持多数据中心分布式高可用的服务发现和配置路由的服务软件，由HashiCorp公司用Go语言开发，基于Mozilla public License2.0的协议进行开源。
Consul支持健康检查，并允许HTTP和DNS协议调用API存储键值对。Spring Cloud Consul封装了Consul操作，consul是一个服务发现与配置工具，与Docker容易可以无缝集成。

其他微服务
Spring Cloud Security
基于Spring security的安全工具包，为你的应用程序添加安全机制。这个服务负责整个系统的安全问题，设置不同的门派访问特定的资源，保证系统安全。
Spring Cloud Sleuth
日志手机工具包，封装了Dapper和log-based追踪以及Zipkin和HTrace操作，为SpringCloud应用实现了一种分布式追踪解决方案。
Spring Cloud data Flow
Data Flow 是一个用于开发和执行大范围数据处理其模式包括ETL,批量运算和持续运算的统一编程模型和托管服务。
对于在现代运行环境中可组合的微服务程序来说，Spring Cloud Data Flow是一个原生云可编配的任务。使用Spring Cloud Data flow,开发者可以为像数据抽取，
实时分析，和数据导入/导出这种常见用例创建和编配数据通道。
Spring Cloud Task
Spring Cloud Task 主要解决短命微服务的任务管理，任务调度的工作，比如说某些定时任务就跑一次，或者某项数据分析临时就跑几次。
Spring Cloud Zookeeper
Zookeeper是一个分布式的，开放源码的分布式应用程序协调服务，是Google的Chubby一个开源的实现，是Hadoop和Hbase的重要组件。它是一个分布式应用提供一致性
服务的软件，提供的功能包括：配置服务、域名服务、分布式同步、组服务等。ZooKeeper的目标就是封装好复杂易出错的关键服务，将简单易用的接口和性能高效、功能稳定的系统提供给用户。操作Zookeeper的工具包，用于使用zookeeper方式的服务发现和配置管理，抱了Zookeeper的大腿。
Spring Cloud Connectors
简化了连接到服务的过程和从云平台获取操作的过程，有很强的扩展性，可以利用Spring Cloud Connectors来构建自己的云平台。便于云端应用程序在各种PaaS平台连接到后端，如：数据库和消息代理服务。
Spring Cloud Starters
Spring boot式的启动项目，为Spring Cloud提供开箱即用的依赖管理。
Spring Cloud CLI
基于Spring boot CLI可以让你以命令方式快速建立云组件。
和Spring boot的关系
Spring boot是Spring的一套快速配置脚手架，可以基于

  
