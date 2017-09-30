.class Lcom/a/a/d/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/b/c/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/b/i$a;,
        Lcom/a/a/d/b/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/i;

.field private final b:Lcom/a/a/d/b/i$a;

.field private final c:Lcom/a/a/d/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/a",
            "<***>;"
        }
    .end annotation
.end field

.field private d:Lcom/a/a/d/b/i$b;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/i$a;Lcom/a/a/d/b/a;Lcom/a/a/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/i$a;",
            "Lcom/a/a/d/b/a",
            "<***>;",
            "Lcom/a/a/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/b/i;->b:Lcom/a/a/d/b/i$a;

    iput-object p2, p0, Lcom/a/a/d/b/i;->c:Lcom/a/a/d/b/a;

    sget-object v0, Lcom/a/a/d/b/i$b;->a:Lcom/a/a/d/b/i$b;

    iput-object v0, p0, Lcom/a/a/d/b/i;->d:Lcom/a/a/d/b/i$b;

    iput-object p3, p0, Lcom/a/a/d/b/i;->a:Lcom/a/a/i;

    return-void
.end method

.method private a(Lcom/a/a/d/b/l;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/b/i;->b:Lcom/a/a/d/b/i$a;

    invoke-interface {v0, p1}, Lcom/a/a/d/b/i$a;->a(Lcom/a/a/d/b/l;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/d/b/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/a/a/d/b/i$b;->b:Lcom/a/a/d/b/i$b;

    iput-object v0, p0, Lcom/a/a/d/b/i;->d:Lcom/a/a/d/b/i$b;

    iget-object v0, p0, Lcom/a/a/d/b/i;->b:Lcom/a/a/d/b/i$a;

    invoke-interface {v0, p0}, Lcom/a/a/d/b/i$a;->b(Lcom/a/a/d/b/i;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/i;->b:Lcom/a/a/d/b/i$a;

    invoke-interface {v0, p1}, Lcom/a/a/d/b/i$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/a/a/d/b/i;->d:Lcom/a/a/d/b/i$b;

    sget-object v1, Lcom/a/a/d/b/i$b;->a:Lcom/a/a/d/b/i$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/a/a/d/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b/l",
            "<*>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/d/b/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/d/b/i;->e()Lcom/a/a/d/b/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/a/a/d/b/i;->f()Lcom/a/a/d/b/l;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Lcom/a/a/d/b/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b/l",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/b/i;->c:Lcom/a/a/d/b/a;

    invoke-virtual {v0}, Lcom/a/a/d/b/a;->a()Lcom/a/a/d/b/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/b/i;->c:Lcom/a/a/d/b/a;

    invoke-virtual {v0}, Lcom/a/a/d/b/a;->b()Lcom/a/a/d/b/l;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "EngineRunnable"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EngineRunnable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception decoding result from cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private f()Lcom/a/a/d/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b/l",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/b/i;->c:Lcom/a/a/d/b/a;

    invoke-virtual {v0}, Lcom/a/a/d/b/a;->c()Lcom/a/a/d/b/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/b/i;->e:Z

    iget-object v0, p0, Lcom/a/a/d/b/i;->c:Lcom/a/a/d/b/a;

    invoke-virtual {v0}, Lcom/a/a/d/b/a;->d()V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/b/i;->a:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->ordinal()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/a/a/d/b/i;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/d/b/i;->d()Lcom/a/a/d/b/l;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    iget-boolean v2, p0, Lcom/a/a/d/b/i;->e:Z

    if-eqz v2, :cond_4

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/a/a/d/b/l;->d()V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v0, "EngineRunnable"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EngineRunnable"

    const-string v3, "Out Of Memory Error decoding"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    new-instance v0, Lcom/a/a/d/b/j;

    invoke-direct {v0, v2}, Lcom/a/a/d/b/j;-><init>(Ljava/lang/Error;)V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "EngineRunnable"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "EngineRunnable"

    const-string v3, "Exception decoding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    invoke-direct {p0, v1}, Lcom/a/a/d/b/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/a/a/d/b/i;->a(Lcom/a/a/d/b/l;)V

    goto :goto_0
.end method
