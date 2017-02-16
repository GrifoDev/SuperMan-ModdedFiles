.class public Ljava/lang/reflect/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/Proxy$1;
    }
.end annotation


# static fields
.field private static final ORDER_BY_SIGNATURE_AND_SUBTYPE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final constructorParams:[Ljava/lang/Class;

.field private static loaderToCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static nextUniqueNumber:J = 0x0L

.field private static nextUniqueNumberLock:Ljava/lang/Object; = null

.field private static pendingGenerationMarker:Ljava/lang/Object; = null

.field private static final proxyClassNamePrefix:Ljava/lang/String; = "$Proxy"

.field private static proxyClasses:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1ed825df33efbc35L


# instance fields
.field protected h:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/reflect/InvocationHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 239
    sput-object v0, Ljava/lang/reflect/Proxy;->constructorParams:[Ljava/lang/Class;

    .line 244
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 243
    sput-object v0, Ljava/lang/reflect/Proxy;->loaderToCache:Ljava/util/Map;

    .line 247
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy;->pendingGenerationMarker:Ljava/lang/Object;

    .line 250
    const-wide/16 v0, 0x0

    sput-wide v0, Ljava/lang/reflect/Proxy;->nextUniqueNumber:J

    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy;->nextUniqueNumberLock:Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 254
    sput-object v0, Ljava/lang/reflect/Proxy;->proxyClasses:Ljava/util/Map;

    .line 268
    new-instance v0, Ljava/lang/reflect/Proxy$1;

    invoke-direct {v0}, Ljava/lang/reflect/Proxy$1;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy;->ORDER_BY_SIGNATURE_AND_SUBTYPE:Ljava/util/Comparator;

    .line 231
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .locals 0
    .param p1, "h"    # Ljava/lang/reflect/InvocationHandler;

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    .line 301
    return-void
.end method

.method private static deduplicateAndGetExceptions(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 606
    .local v1, "exceptions":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Class<*>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 607
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 608
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 610
    .local v0, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-lez v2, :cond_0

    sget-object v5, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    invoke-interface {v5, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    .line 611
    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Proxy;->intersectExceptions([Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 614
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    .end local v0    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    return-object v1
.end method

.method private static native generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Method;[[Ljava/lang/Class;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/reflect/Method;",
            "[[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public static getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 2
    .param p0, "proxy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 805
    instance-of v0, p0, Ljava/lang/reflect/Proxy;

    if-nez v0, :cond_0

    .line 806
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not a proxy instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_0
    check-cast p0, Ljava/lang/reflect/Proxy;

    .end local p0    # "proxy":Ljava/lang/Object;
    iget-object v0, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    return-object v0
.end method

.method private static getMethods([Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    :try_start_0
    const-class v2, Ljava/lang/Object;

    const-string/jumbo v3, "equals"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    const-class v2, Ljava/lang/Object;

    const-string/jumbo v3, "hashCode"

    sget-object v4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    const-class v2, Ljava/lang/Object;

    const-string/jumbo v3, "toString"

    sget-object v4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    invoke-static {p0, v1}, Ljava/lang/reflect/Proxy;->getMethodsRecursive([Ljava/lang/Class;Ljava/util/List;)V

    .line 685
    return-object v1

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private static getMethodsRecursive([Ljava/lang/Class;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    .line 694
    .local v0, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/reflect/Proxy;->getMethodsRecursive([Ljava/lang/Class;Ljava/util/List;)V

    .line 695
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 693
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    .end local v0    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public static varargs getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 384
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Ljava/lang/reflect/Proxy;->getProxyClass0(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static varargs getProxyClass0(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 32
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    const v28, 0xffff

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_0

    .line 394
    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v28, "interface limit exceeded"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 397
    :cond_0
    const/16 v23, 0x0

    .line 400
    .local v23, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v13, v0, [Ljava/lang/String;

    .line 403
    .local v13, "interfaceNames":[Ljava/lang/String;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 405
    .local v14, "interfaceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v10, v0, :cond_4

    .line 410
    aget-object v27, p1, v10

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 411
    .local v12, "interfaceName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 413
    .local v11, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v27, 0x0

    :try_start_0
    move/from16 v0, v27

    move-object/from16 v1, p0

    invoke-static {v12, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 416
    .end local v11    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    aget-object v27, p1, v10

    move-object/from16 v0, v27

    if-eq v11, v0, :cond_1

    .line 417
    new-instance v27, Ljava/lang/IllegalArgumentException;

    .line 418
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v29, p1, v10

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " is not visible from class loader"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 417
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 414
    .restart local v11    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    .line 425
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .end local v11    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v11}, Ljava/lang/Class;->isInterface()Z

    move-result v27

    if-nez v27, :cond_2

    .line 426
    new-instance v27, Ljava/lang/IllegalArgumentException;

    .line 427
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " is not an interface"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 426
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 433
    :cond_2
    invoke-interface {v14, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 434
    new-instance v27, Ljava/lang/IllegalArgumentException;

    .line 435
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "repeated interface: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 434
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 437
    :cond_3
    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    aput-object v12, v13, v10

    .line 405
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 451
    .end local v12    # "interfaceName":Ljava/lang/String;
    :cond_4
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 457
    .local v15, "key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v28, Ljava/lang/reflect/Proxy;->loaderToCache:Ljava/util/Map;

    monitor-enter v28

    .line 458
    :try_start_1
    sget-object v27, Ljava/lang/reflect/Proxy;->loaderToCache:Ljava/util/Map;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 459
    .local v4, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Object;>;"
    if-nez v4, :cond_5

    .line 460
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Object;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 461
    .restart local v4    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Object;>;"
    sget-object v27, Ljava/lang/reflect/Proxy;->loaderToCache:Ljava/util/Map;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v28

    .line 481
    monitor-enter v4

    .line 490
    .end local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    :try_start_2
    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 491
    .local v26, "value":Ljava/lang/Object;
    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/lang/ref/Reference;

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 492
    move-object/from16 v0, v26

    check-cast v0, Ljava/lang/ref/Reference;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/lang/Class;

    move-object/from16 v23, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 494
    :cond_6
    if-eqz v23, :cond_7

    monitor-exit v4

    .line 496
    return-object v23

    .line 457
    .end local v4    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Object;>;"
    .end local v26    # "value":Ljava/lang/Object;
    .restart local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v27

    monitor-exit v28

    throw v27

    .line 497
    .end local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Object;>;"
    .restart local v26    # "value":Ljava/lang/Object;
    :cond_7
    :try_start_3
    sget-object v27, Ljava/lang/reflect/Proxy;->pendingGenerationMarker:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 500
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 501
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 515
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_8
    :try_start_5
    sget-object v27, Ljava/lang/reflect/Proxy;->pendingGenerationMarker:Ljava/lang/Object;

    move-object/from16 v0, v27

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v4

    .line 522
    const/16 v25, 0x0

    .line 529
    .local v25, "proxyPkg":Ljava/lang/String;
    const/4 v10, 0x0

    .end local v25    # "proxyPkg":Ljava/lang/String;
    :goto_3
    :try_start_6
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v10, v0, :cond_c

    .line 530
    aget-object v27, p1, v10

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    .line 531
    .local v9, "flags":I
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v27

    if-nez v27, :cond_9

    .line 532
    aget-object v27, p1, v10

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 533
    .local v19, "name":Ljava/lang/String;
    const/16 v27, 0x2e

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 534
    .local v18, "n":I
    const/16 v27, -0x1

    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    const-string/jumbo v22, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 535
    .local v22, "pkg":Ljava/lang/String;
    :goto_4
    if-nez v25, :cond_b

    .line 536
    move-object/from16 v25, v22

    .line 529
    .end local v18    # "n":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "pkg":Ljava/lang/String;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 481
    .end local v9    # "flags":I
    .end local v26    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v27

    monitor-exit v4

    throw v27

    .line 534
    .restart local v9    # "flags":I
    .restart local v18    # "n":I
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v26    # "value":Ljava/lang/Object;
    :cond_a
    add-int/lit8 v27, v18, 0x1

    const/16 v28, 0x0

    :try_start_7
    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "pkg":Ljava/lang/String;
    goto :goto_4

    .line 537
    :cond_b
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 538
    new-instance v27, Ljava/lang/IllegalArgumentException;

    .line 539
    const-string/jumbo v28, "non-public interfaces from different packages"

    .line 538
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 575
    .end local v9    # "flags":I
    .end local v18    # "n":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "pkg":Ljava/lang/String;
    :catchall_2
    move-exception v27

    .line 583
    monitor-enter v4

    .line 584
    if-eqz v23, :cond_f

    .line 585
    :try_start_8
    new-instance v28, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v28

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    monitor-exit v4

    .line 575
    throw v27

    .line 544
    :cond_c
    if-nez v25, :cond_d

    .line 546
    :try_start_9
    const-string/jumbo v25, ""

    .line 552
    :cond_d
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->getMethods([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v16

    .line 553
    .local v16, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    sget-object v27, Ljava/lang/reflect/Proxy;->ORDER_BY_SIGNATURE_AND_SUBTYPE:Ljava/util/Comparator;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 554
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Proxy;->validateReturnTypes(Ljava/util/List;)V

    .line 555
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Proxy;->deduplicateAndGetExceptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 557
    .local v7, "exceptions":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Class<*>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/reflect/Method;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/reflect/Method;

    .line 558
    .local v17, "methodsArray":[Ljava/lang/reflect/Method;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [[Ljava/lang/Class;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/Class;

    .line 564
    .local v8, "exceptionsArray":[[Ljava/lang/Class;, "[[Ljava/lang/Class<*>;"
    sget-object v28, Ljava/lang/reflect/Proxy;->nextUniqueNumberLock:Ljava/lang/Object;

    monitor-enter v28
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 565
    :try_start_a
    sget-wide v20, Ljava/lang/reflect/Proxy;->nextUniqueNumber:J

    const-wide/16 v30, 0x1

    add-long v30, v30, v20

    sput-wide v30, Ljava/lang/reflect/Proxy;->nextUniqueNumber:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .local v20, "num":J
    :try_start_b
    monitor-exit v28

    .line 567
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "$Proxy"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 569
    .local v24, "proxyName":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v8}, Ljava/lang/reflect/Proxy;->generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Method;[[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v23

    .line 573
    .local v23, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v27, Ljava/lang/reflect/Proxy;->proxyClasses:Ljava/util/Map;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 583
    monitor-enter v4

    .line 584
    if-eqz v23, :cond_e

    .line 585
    :try_start_c
    new-instance v27, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v27

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    monitor-exit v4

    .line 592
    return-object v23

    .line 564
    .end local v20    # "num":J
    .end local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "proxyName":Ljava/lang/String;
    :catchall_3
    move-exception v27

    :try_start_d
    monitor-exit v28

    throw v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 587
    .restart local v20    # "num":J
    .restart local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v24    # "proxyName":Ljava/lang/String;
    :cond_e
    :try_start_e
    invoke-interface {v4, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_6

    .line 583
    :catchall_4
    move-exception v27

    monitor-exit v4

    throw v27

    .line 587
    .end local v7    # "exceptions":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Class<*>;>;"
    .end local v8    # "exceptionsArray":[[Ljava/lang/Class;, "[[Ljava/lang/Class<*>;"
    .end local v16    # "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v17    # "methodsArray":[Ljava/lang/reflect/Method;
    .end local v20    # "num":J
    .end local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "proxyName":Ljava/lang/String;
    :cond_f
    :try_start_f
    invoke-interface {v4, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto/16 :goto_5

    .line 583
    :catchall_5
    move-exception v27

    monitor-exit v4

    throw v27
.end method

.method private static intersectExceptions([Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "aExceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "bExceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 627
    array-length v3, p0

    if-eqz v3, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 628
    :cond_0
    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    return-object v3

    .line 630
    :cond_1
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 631
    return-object p0

    .line 633
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 634
    .local v2, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v0, p0, v5

    .line 635
    .local v0, "a":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v7, p1

    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_5

    aget-object v1, p1, v3

    .line 636
    .local v1, "b":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 637
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 638
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 639
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 634
    .end local v1    # "b":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 643
    .end local v0    # "a":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    return-object v3
.end method

.method private static invoke(Ljava/lang/reflect/Proxy;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "proxy"    # Ljava/lang/reflect/Proxy;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 812
    iget-object v0, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    .line 813
    .local v0, "h":Ljava/lang/reflect/InvocationHandler;
    invoke-interface {v0, p0, p1, p2}, Ljava/lang/reflect/InvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isProxyClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 784
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 788
    :cond_0
    sget-object v0, Ljava/lang/reflect/Proxy;->proxyClasses:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static newInstance(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 5
    .param p1, "h"    # Ljava/lang/reflect/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 759
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 761
    .local v2, "t":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    .line 762
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2    # "t":Ljava/lang/Throwable;
    throw v2

    .line 764
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v3, Ljava/lang/InternalError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 757
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "h"    # Ljava/lang/reflect/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 734
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 735
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 741
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Proxy;->getProxyClass0(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 747
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v3, Ljava/lang/reflect/Proxy;->constructorParams:[Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 748
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {v1, p2}, Ljava/lang/reflect/Proxy;->newInstance(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 749
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v2

    .line 750
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static reserved1()V
    .locals 0

    .prologue
    .line 821
    return-void
.end method

.method private static reserved2()V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method private static validateReturnTypes(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v3, 0x0

    .line 656
    .local v3, "vs":Ljava/lang/reflect/Method;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "vs":Ljava/lang/reflect/Method;
    .local v1, "method$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 657
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->equalNameAndParameters(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 661
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 662
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 663
    .local v4, "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_0

    .line 665
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 666
    move-object v3, v0

    .local v3, "vs":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 658
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "vs":Ljava/lang/reflect/Method;
    .end local v4    # "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object v3, v0

    .line 659
    .restart local v3    # "vs":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 667
    .end local v3    # "vs":Ljava/lang/reflect/Method;
    .restart local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 668
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "proxied interface methods have incompatible return types:\n  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 669
    const-string/jumbo v7, "\n  "

    .line 668
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 654
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    return-void
.end method
