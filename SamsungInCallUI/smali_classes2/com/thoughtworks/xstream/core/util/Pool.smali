.class public Lcom/thoughtworks/xstream/core/util/Pool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/Pool$Factory;
    }
.end annotation


# instance fields
.field private final factory:Lcom/thoughtworks/xstream/core/util/Pool$Factory;

.field private final initialPoolSize:I

.field private final maxPoolSize:I

.field private transient mutex:Ljava/lang/Object;

.field private transient nextAvailable:I

.field private transient pool:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILcom/thoughtworks/xstream/core/util/Pool$Factory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    iput p1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->initialPoolSize:I

    iput p2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->maxPoolSize:I

    iput-object p3, p0, Lcom/thoughtworks/xstream/core/util/Pool;->factory:Lcom/thoughtworks/xstream/core/util/Pool$Factory;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public fetchFromPool()Ljava/lang/Object;
    .locals 5

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->pool:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->maxPoolSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->pool:[Ljava/lang/Object;

    iget v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->initialPoolSize:I

    iput v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    :goto_0
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->factory:Lcom/thoughtworks/xstream/core/util/Pool$Factory;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/Pool$Factory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->maxPoolSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupted whilst waiting for a free item in the pool : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->pool:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->factory:Lcom/thoughtworks/xstream/core/util/Pool$Factory;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/Pool$Factory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0
.end method

.method protected putInPool(Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->pool:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    aput-object p1, v0, v2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
