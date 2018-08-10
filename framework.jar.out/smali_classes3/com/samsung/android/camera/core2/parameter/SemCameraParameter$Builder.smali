.class public Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;
.super Ljava/lang/Object;
.source "SemCameraParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mParametersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->mParametersMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized build()Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;
    .locals 9

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->mParametersMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->mParametersMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v5, v4, Landroid/util/Pair;

    if-eqz v5, :cond_1

    const-string/jumbo v6, "%s=%d,%d;"

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v7, v8

    move-object v0, v4

    check-cast v0, Landroid/util/Pair;

    move-object v5, v0

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v5, v7, v8

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    :try_start_1
    const-string/jumbo v5, "%s=%s;"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;->getKey()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v5
.end method

.method public declared-synchronized getParameter(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->mParametersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParameter(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->mParametersMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
