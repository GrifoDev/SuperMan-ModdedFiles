.class public Lcom/google/android/gms/b/af;
.super Lcom/google/android/gms/common/api/j;

# interfaces
.implements Lcom/google/android/gms/common/api/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/b/af$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/f;",
        ">",
        "Lcom/google/android/gms/common/api/j",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/g",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/i",
            "<-TR;+",
            "Lcom/google/android/gms/common/api/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/b/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/af",
            "<+",
            "Lcom/google/android/gms/common/api/f;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/h",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/common/api/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/d",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/common/api/Status;

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/b/af$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/af$a;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method static synthetic a(Lcom/google/android/gms/b/af;)Lcom/google/android/gms/common/api/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/af;->a:Lcom/google/android/gms/common/api/i;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/af;->a:Lcom/google/android/gms/common/api/i;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/af;->c:Lcom/google/android/gms/common/api/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/af;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c;

    iget-boolean v1, p0, Lcom/google/android/gms/b/af;->i:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/b/af;->a:Lcom/google/android/gms/common/api/i;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/b/af;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/af;->i:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/af;->f:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/b/af;->f:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/af;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/b/af;->d:Lcom/google/android/gms/common/api/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/af;->d:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/g;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/b/af;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/af;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/af;Lcom/google/android/gms/common/api/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/af;->b(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/af;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/b/af;->f:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/b/af;->f:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/af;->b(Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/b/af;)Lcom/google/android/gms/b/af$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/af;->h:Lcom/google/android/gms/b/af$a;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/b/af;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/af;->a:Lcom/google/android/gms/common/api/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/af;->a:Lcom/google/android/gms/common/api/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/i;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string v2, "onFailure must not return null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/b/af;->b:Lcom/google/android/gms/b/af;

    invoke-direct {v2, v0}, Lcom/google/android/gms/b/af;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/b/af;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/af;->c:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Lcom/google/android/gms/common/api/f;)V
    .locals 6

    instance-of v1, p1, Lcom/google/android/gms/common/api/e;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/e;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/e;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "TransformedResultImpl"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unable to release "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/af;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c;

    iget-object v1, p0, Lcom/google/android/gms/b/af;->c:Lcom/google/android/gms/common/api/h;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/b/af;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/af;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/b/af;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/af;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/b/af;)Lcom/google/android/gms/b/af;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/af;->b:Lcom/google/android/gms/b/af;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/b/af;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/b/af;->d:Lcom/google/android/gms/common/api/d;

    invoke-direct {p0}, Lcom/google/android/gms/b/af;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/b/af;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/f;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/af;->a:Lcom/google/android/gms/common/api/i;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/b/ad;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/b/af$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/b/af$1;-><init>(Lcom/google/android/gms/b/af;Lcom/google/android/gms/common/api/f;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/b/af;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/af;->c:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/h;->b(Lcom/google/android/gms/common/api/f;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/f;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/af;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/af;->b(Lcom/google/android/gms/common/api/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
