.class public Lcom/thoughtworks/xstream/io/xml/StandardStaxDriver;
.super Lcom/thoughtworks/xstream/io/xml/StaxDriver;
.source "StandardStaxDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected createInputFactory()Ljavax/xml/stream/XMLInputFactory;
    .locals 5

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "exception":Ljava/lang/Exception;
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxInputFactory()Ljava/lang/Class;

    move-result-object v2

    .line 77
    .local v2, "staxInputFactory":Ljava/lang/Class;
    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/XMLInputFactory;

    return-object v3

    .line 80
    :cond_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v4, "Java runtime has no standard XMLInputFactory implementation."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    .end local v2    # "staxInputFactory":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InstantiationException;
    move-object v1, v0

    .line 89
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v4, "Cannot create standard XMLInputFactory instance of Java runtime."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 84
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/IllegalAccessException;
    move-object v1, v0

    .line 88
    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    move-object v1, v0

    goto :goto_0
.end method

.method protected createOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 5

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "exception":Ljava/lang/Exception;
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxOutputFactory()Ljava/lang/Class;

    move-result-object v2

    .line 96
    .local v2, "staxOutputFactory":Ljava/lang/Class;
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/XMLOutputFactory;

    return-object v3

    .line 99
    :cond_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v4, "Java runtime has no standard XMLOutputFactory implementation."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    .end local v2    # "staxOutputFactory":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/InstantiationException;
    move-object v1, v0

    .line 108
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v4, "Cannot create standard XMLOutputFactory instance of Java runtime."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 103
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/IllegalAccessException;
    move-object v1, v0

    .line 107
    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    move-object v1, v0

    goto :goto_0
.end method
