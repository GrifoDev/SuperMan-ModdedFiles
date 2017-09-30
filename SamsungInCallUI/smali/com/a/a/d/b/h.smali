.class Lcom/a/a/d/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/b/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/b/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/b/l",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/l",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private c:Lcom/a/a/d/b/h$a;

.field private d:Lcom/a/a/d/c;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/a/a/d/b/l;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<TZ;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Wrapped resource must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/a/d/b/h;->a:Lcom/a/a/d/b/l;

    iput-boolean p2, p0, Lcom/a/a/d/b/h;->b:Z

    return-void
.end method


# virtual methods
.method a(Lcom/a/a/d/c;Lcom/a/a/d/b/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/d/b/h;->d:Lcom/a/a/d/c;

    iput-object p2, p0, Lcom/a/a/d/b/h;->c:Lcom/a/a/d/b/h$a;

    return-void
.end method

.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/d/b/h;->b:Z

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/b/h;->a:Lcom/a/a/d/b/l;

    invoke-interface {v0}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/b/h;->a:Lcom/a/a/d/b/l;

    invoke-interface {v0}, Lcom/a/a/d/b/l;->c()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    iget v0, p0, Lcom/a/a/d/b/h;->e:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/a/a/d/b/h;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/b/h;->f:Z

    iget-object v0, p0, Lcom/a/a/d/b/h;->a:Lcom/a/a/d/b/l;

    invoke-interface {v0}, Lcom/a/a/d/b/l;->d()V

    return-void
.end method

.method e()V
    .locals 2

    iget-boolean v0, p0, Lcom/a/a/d/b/h;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/a/a/d/b/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/d/b/h;->e:I

    return-void
.end method

.method f()V
    .locals 2

    iget v0, p0, Lcom/a/a/d/b/h;->e:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/a/a/d/b/h;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/d/b/h;->e:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/a/a/d/b/h;->c:Lcom/a/a/d/b/h$a;

    iget-object v1, p0, Lcom/a/a/d/b/h;->d:Lcom/a/a/d/c;

    invoke-interface {v0, v1, p0}, Lcom/a/a/d/b/h$a;->b(Lcom/a/a/d/c;Lcom/a/a/d/b/h;)V

    :cond_2
    return-void
.end method
