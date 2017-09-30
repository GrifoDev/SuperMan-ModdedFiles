.class public Lcom/thoughtworks/xstream/mapper/CachingMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# instance fields
.field private transient realClassCache:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-direct {p0}, Lcom/thoughtworks/xstream/mapper/CachingMapper;->readResolve()Ljava/lang/Object;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/CachingMapper;->realClassCache:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/CachingMapper;->realClassCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/CachingMapper;->realClassCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/thoughtworks/xstream/XStreamException;

    throw v0

    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/CachingMapper;->realClassCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/thoughtworks/xstream/security/ForbiddenClassException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/thoughtworks/xstream/mapper/CannotResolveClassException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/CachingMapper;->realClassCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/CachingMapper;->realClassCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method
