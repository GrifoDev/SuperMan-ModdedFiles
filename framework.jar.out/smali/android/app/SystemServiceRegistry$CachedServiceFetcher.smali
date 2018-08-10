.class abstract Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CachedServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCacheIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/SystemServiceRegistry;->-get0()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/app/SystemServiceRegistry;->-set0(I)I

    iput v0, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    return-void
.end method


# virtual methods
.method public abstract createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p1, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v3, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget-object v2, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->createService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v2, v0, v3
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method
