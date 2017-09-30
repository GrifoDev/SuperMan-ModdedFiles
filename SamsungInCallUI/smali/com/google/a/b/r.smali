.class final Lcom/google/a/b/r;
.super Lcom/google/a/b/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/k",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/b/n;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/n",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/b/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/n",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/b/k;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/r;->a:Lcom/google/a/b/n;

    return-void
.end method

.method static synthetic a(Lcom/google/a/b/r;)Lcom/google/a/b/n;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/r;->a:Lcom/google/a/b/n;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/a/b/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/aj",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/b/r$1;

    invoke-direct {v0, p0}, Lcom/google/a/b/r$1;-><init>(Lcom/google/a/b/r;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/r;->b()Lcom/google/a/b/aj;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/b/t;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Lcom/google/a/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/m",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/r;->a:Lcom/google/a/b/n;

    invoke-virtual {v0}, Lcom/google/a/b/n;->f()Lcom/google/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/s;->c()Lcom/google/a/b/m;

    move-result-object v0

    new-instance v1, Lcom/google/a/b/r$2;

    invoke-direct {v1, p0, v0}, Lcom/google/a/b/r$2;-><init>(Lcom/google/a/b/r;Lcom/google/a/b/m;)V

    return-object v1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/r;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/r;->a:Lcom/google/a/b/n;

    invoke-virtual {v0}, Lcom/google/a/b/n;->size()I

    move-result v0

    return v0
.end method
