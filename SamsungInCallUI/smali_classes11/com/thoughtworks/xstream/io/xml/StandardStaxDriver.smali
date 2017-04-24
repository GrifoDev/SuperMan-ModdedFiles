.class public Lcom/thoughtworks/xstream/io/xml/StandardStaxDriver;
.super Lcom/thoughtworks/xstream/io/xml/StaxDriver;
.source "StandardStaxDriver.java"


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
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxInputFactory()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/XMLInputFactory;

    return-object v3

    :cond_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v4, "Java runtime has no standard XMLInputFactory implementation."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    move-object v1, v0

    :goto_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v4, "Cannot create standard XMLInputFactory instance of Java runtime."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method protected createOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxOutputFactory()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/XMLOutputFactory;

    return-object v3

    :cond_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v4, "Java runtime has no standard XMLOutputFactory implementation."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    move-object v1, v0

    :goto_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v4, "Cannot create standard XMLOutputFactory instance of Java runtime."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method
