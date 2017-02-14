.class abstract Ljava/nio/charset/CoderResult$Cache;
.super Ljava/lang/Object;
.source "CoderResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/charset/CoderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Cache"
.end annotation


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/nio/charset/CoderResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;
    .locals 1

    invoke-direct {p0, p1}, Ljava/nio/charset/CoderResult$Cache;->get(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/CoderResult$Cache;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/charset/CoderResult$Cache;-><init>()V

    return-void
.end method

.method private declared-synchronized get(I)Ljava/nio/charset/CoderResult;
    .locals 5

    monitor-enter p0

    if-gtz p1, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Non-positive length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v0, 0x0

    iget-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/nio/charset/CoderResult$Cache;->create(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iget-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_2
    iget-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected abstract create(I)Ljava/nio/charset/CoderResult;
.end method
