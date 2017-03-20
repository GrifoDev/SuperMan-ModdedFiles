.class public Lcom/thoughtworks/xstream/io/xml/QNameMap;
.super Ljava/lang/Object;
.source "QNameMap.java"


# instance fields
.field private defaultNamespace:Ljava/lang/String;

.field private defaultPrefix:Ljava/lang/String;

.field private javaToQName:Ljava/util/Map;

.field private qnameToJava:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->defaultPrefix:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->defaultNamespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->defaultNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->defaultPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaClassName(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2
    .param p1, "qname"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->qnameToJava:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->qnameToJava:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    .local v0, "answer":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 47
    .end local v0    # "answer":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQName(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 3
    .param p1, "javaClassName"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->javaToQName:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->javaToQName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/namespace/QName;

    .line 58
    .local v0, "answer":Ljavax/xml/namespace/QName;
    if-eqz v0, :cond_0

    .line 62
    .end local v0    # "answer":Ljavax/xml/namespace/QName;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->defaultNamespace:Ljava/lang/String;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->defaultPrefix:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized registerMapping(Ljavax/xml/namespace/QName;Ljava/lang/Class;)V
    .locals 1
    .param p1, "qname"    # Ljavax/xml/namespace/QName;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/QNameMap;->registerMapping(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerMapping(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 1
    .param p1, "qname"    # Ljavax/xml/namespace/QName;
    .param p2, "javaClassName"    # Ljava/lang/String;

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->javaToQName:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->javaToQName:Ljava/util/Map;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->qnameToJava:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->qnameToJava:Ljava/util/Map;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->javaToQName:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->qnameToJava:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultNamespace"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->defaultNamespace:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setDefaultPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultPrefix"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/QNameMap;->defaultPrefix:Ljava/lang/String;

    .line 100
    return-void
.end method
