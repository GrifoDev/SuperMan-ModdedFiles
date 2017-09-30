.class Lcom/a/a/d/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/b/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/b/d$1;,
        Lcom/a/a/d/b/d$b;,
        Lcom/a/a/d/b/d$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/b/d$a;

.field private static final b:Landroid/os/Handler;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/h/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/d/b/d$a;

.field private final e:Lcom/a/a/d/b/e;

.field private final f:Lcom/a/a/d/c;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:Z

.field private j:Z

.field private k:Lcom/a/a/d/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/l",
            "<*>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Ljava/lang/Exception;

.field private n:Z

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/a/a/h/e;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/a/a/d/b/i;

.field private q:Lcom/a/a/d/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/h",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile r:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/a/a/d/b/d$a;

    invoke-direct {v0}, Lcom/a/a/d/b/d$a;-><init>()V

    sput-object v0, Lcom/a/a/d/b/d;->a:Lcom/a/a/d/b/d$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/a/a/d/b/d$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/a/a/d/b/d$b;-><init>(Lcom/a/a/d/b/d$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/a/a/d/b/d;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/d/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/a/a/d/b/e;)V
    .locals 7

    sget-object v6, Lcom/a/a/d/b/d;->a:Lcom/a/a/d/b/d$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/a/a/d/b/d;-><init>(Lcom/a/a/d/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/a/a/d/b/e;Lcom/a/a/d/b/d$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/d/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/a/a/d/b/e;Lcom/a/a/d/b/d$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/b/d;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/a/a/d/b/d;->f:Lcom/a/a/d/c;

    iput-object p2, p0, Lcom/a/a/d/b/d;->g:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/a/a/d/b/d;->h:Ljava/util/concurrent/ExecutorService;

    iput-boolean p4, p0, Lcom/a/a/d/b/d;->i:Z

    iput-object p5, p0, Lcom/a/a/d/b/d;->e:Lcom/a/a/d/b/e;

    iput-object p6, p0, Lcom/a/a/d/b/d;->d:Lcom/a/a/d/b/d$a;

    return-void
.end method

.method static synthetic a(Lcom/a/a/d/b/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/d/b/d;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/a/a/d/b/d;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/b/d;->k:Lcom/a/a/d/b/l;

    invoke-interface {v0}, Lcom/a/a/d/b/l;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/d/b/d;->d:Lcom/a/a/d/b/d$a;

    iget-object v1, p0, Lcom/a/a/d/b/d;->k:Lcom/a/a/d/b/l;

    iget-boolean v2, p0, Lcom/a/a/d/b/d;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b/d$a;->a(Lcom/a/a/d/b/l;Z)Lcom/a/a/d/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/d;->q:Lcom/a/a/d/b/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/b/d;->l:Z

    iget-object v0, p0, Lcom/a/a/d/b/d;->q:Lcom/a/a/d/b/h;

    invoke-virtual {v0}, Lcom/a/a/d/b/h;->e()V

    iget-object v0, p0, Lcom/a/a/d/b/d;->e:Lcom/a/a/d/b/e;

    iget-object v1, p0, Lcom/a/a/d/b/d;->f:Lcom/a/a/d/c;

    iget-object v2, p0, Lcom/a/a/d/b/d;->q:Lcom/a/a/d/b/h;

    invoke-interface {v0, v1, v2}, Lcom/a/a/d/b/e;->a(Lcom/a/a/d/c;Lcom/a/a/d/b/h;)V

    iget-object v0, p0, Lcom/a/a/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/h/e;

    invoke-direct {p0, v0}, Lcom/a/a/d/b/d;->d(Lcom/a/a/h/e;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/a/a/d/b/d;->q:Lcom/a/a/d/b/h;

    invoke-virtual {v2}, Lcom/a/a/d/b/h;->e()V

    iget-object v2, p0, Lcom/a/a/d/b/d;->q:Lcom/a/a/d/b/h;

    invoke-interface {v0, v2}, Lcom/a/a/h/e;->a(Lcom/a/a/d/b/l;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/a/a/d/b/d;->q:Lcom/a/a/d/b/h;

    invoke-virtual {v0}, Lcom/a/a/d/b/h;->f()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/a/a/d/b/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/d/b/d;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-boolean v0, p0, Lcom/a/a/d/b/d;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/b/d;->n:Z

    iget-object v0, p0, Lcom/a/a/d/b/d;->e:Lcom/a/a/d/b/e;

    iget-object v1, p0, Lcom/a/a/d/b/d;->f:Lcom/a/a/d/c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/a/a/d/b/e;->a(Lcom/a/a/d/c;Lcom/a/a/d/b/h;)V

    iget-object v0, p0, Lcom/a/a/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/h/e;

    invoke-direct {p0, v0}, Lcom/a/a/d/b/d;->d(Lcom/a/a/h/e;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/a/a/d/b/d;->m:Ljava/lang/Exception;

    invoke-interface {v0, v2}, Lcom/a/a/h/e;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private c(Lcom/a/a/h/e;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/b/d;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/b/d;->o:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/d;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d(Lcom/a/a/h/e;)Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/b/d;->o:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/b/d;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/a/a/d/b/d;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/d/b/d;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/d/b/d;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/d/b/d;->p:Lcom/a/a/d/b/i;

    invoke-virtual {v0}, Lcom/a/a/d/b/i;->a()V

    iget-object v0, p0, Lcom/a/a/d/b/d;->r:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iput-boolean v1, p0, Lcom/a/a/d/b/d;->j:Z

    iget-object v0, p0, Lcom/a/a/d/b/d;->e:Lcom/a/a/d/b/e;

    iget-object v1, p0, Lcom/a/a/d/b/d;->f:Lcom/a/a/d/c;

    invoke-interface {v0, p0, v1}, Lcom/a/a/d/b/e;->a(Lcom/a/a/d/b/d;Lcom/a/a/d/c;)V

    goto :goto_0
.end method

.method public a(Lcom/a/a/d/b/i;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/d/b/d;->p:Lcom/a/a/d/b/i;

    iget-object v0, p0, Lcom/a/a/d/b/d;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/d;->r:Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/a/a/d/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/a/a/d/b/d;->k:Lcom/a/a/d/b/l;

    sget-object v0, Lcom/a/a/d/b/d;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/a/a/h/e;)V
    .locals 1

    invoke-static {}, Lcom/a/a/j/h;->a()V

    iget-boolean v0, p0, Lcom/a/a/d/b/d;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/b/d;->q:Lcom/a/a/d/b/h;

    invoke-interface {p1, v0}, Lcom/a/a/h/e;->a(Lcom/a/a/d/b/l;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/a/a/d/b/d;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/d/b/d;->m:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcom/a/a/h/e;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    iput-object p1, p0, Lcom/a/a/d/b/d;->m:Ljava/lang/Exception;

    sget-object v0, Lcom/a/a/d/b/d;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Lcom/a/a/d/b/i;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/b/d;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/d;->r:Ljava/util/concurrent/Future;

    return-void
.end method

.method public b(Lcom/a/a/h/e;)V
    .locals 1

    invoke-static {}, Lcom/a/a/j/h;->a()V

    iget-boolean v0, p0, Lcom/a/a/d/b/d;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/d/b/d;->n:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/a/a/d/b/d;->c(Lcom/a/a/h/e;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/a/a/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/d/b/d;->a()V

    goto :goto_0
.end method
