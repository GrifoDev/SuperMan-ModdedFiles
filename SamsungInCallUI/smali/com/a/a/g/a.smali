.class public Lcom/a/a/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/g/f;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/g/f",
        "<TA;TT;TZ;TR;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/g/f",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private b:Lcom/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:Lcom/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/e",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private d:Lcom/a/a/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/f",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private e:Lcom/a/a/d/d/f/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/d/f/c",
            "<TZ;TR;>;"
        }
    .end annotation
.end field

.field private f:Lcom/a/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/g/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/g/f",
            "<TA;TT;TZ;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/g/a;->a:Lcom/a/a/g/f;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/a;->b:Lcom/a/a/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/g/a;->b:Lcom/a/a/d/e;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/g/a;->a:Lcom/a/a/g/f;

    invoke-interface {v0}, Lcom/a/a/g/f;->a()Lcom/a/a/d/e;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/d/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/a/a/g/a;->f:Lcom/a/a/d/b;

    return-void
.end method

.method public a(Lcom/a/a/d/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/e",
            "<TT;TZ;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/a/a/g/a;->c:Lcom/a/a/d/e;

    return-void
.end method

.method public b()Lcom/a/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/e",
            "<TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/a;->c:Lcom/a/a/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/g/a;->c:Lcom/a/a/d/e;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/g/a;->a:Lcom/a/a/g/f;

    invoke-interface {v0}, Lcom/a/a/g/f;->b()Lcom/a/a/d/e;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lcom/a/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/a;->f:Lcom/a/a/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/g/a;->f:Lcom/a/a/d/b;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/g/a;->a:Lcom/a/a/g/f;

    invoke-interface {v0}, Lcom/a/a/g/f;->c()Lcom/a/a/d/b;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/g/a;->g()Lcom/a/a/g/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/a/a/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/f",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/a;->d:Lcom/a/a/d/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/g/a;->d:Lcom/a/a/d/f;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/g/a;->a:Lcom/a/a/g/f;

    invoke-interface {v0}, Lcom/a/a/g/f;->d()Lcom/a/a/d/f;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Lcom/a/a/d/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/c/l",
            "<TA;TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/a;->a:Lcom/a/a/g/f;

    invoke-interface {v0}, Lcom/a/a/g/f;->e()Lcom/a/a/d/c/l;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/a/a/d/d/f/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/d/f/c",
            "<TZ;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/a;->e:Lcom/a/a/d/d/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/g/a;->e:Lcom/a/a/d/d/f/c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/g/a;->a:Lcom/a/a/g/f;

    invoke-interface {v0}, Lcom/a/a/g/f;->f()Lcom/a/a/d/d/f/c;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Lcom/a/a/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/g/a",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/g/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
