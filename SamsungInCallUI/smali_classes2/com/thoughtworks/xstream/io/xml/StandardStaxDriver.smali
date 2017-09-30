.class public Lcom/thoughtworks/xstream/io/xml/StandardStaxDriver;
.super Lcom/thoughtworks/xstream/io/xml/StaxDriver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method protected createInputFactory()Ljavax/xml/stream/XMLInputFactory;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxInputFactory()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/XMLInputFactory;

    return-object v0

    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Java runtime has no standard XMLInputFactory implementation."

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Cannot create standard XMLInputFactory instance of Java runtime."

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected createOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxOutputFactory()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/XMLOutputFactory;

    return-object v0

    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Java runtime has no standard XMLOutputFactory implementation."

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Cannot create standard XMLOutputFactory instance of Java runtime."

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
