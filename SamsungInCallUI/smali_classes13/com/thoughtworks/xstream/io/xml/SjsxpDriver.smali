.class public Lcom/thoughtworks/xstream/io/xml/SjsxpDriver;
.super Lcom/thoughtworks/xstream/io/xml/StaxDriver;
.source "SjsxpDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V

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
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.sun.xml.internal.stream.XMLInputFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/XMLInputFactory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v0

    :goto_0
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v3, "Cannot create SJSXP (Sun JDK 6 StAX) XMLInputFaqctory instance."

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

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
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/XMLOutputFactory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v0

    :goto_0
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v3, "Cannot create SJSXP (Sun JDK 6 StAX) XMLOutputFaqctory instance."

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method
