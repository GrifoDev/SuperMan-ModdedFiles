.class final Lcom/google/a/b/aa$a$a;
.super Lcom/google/a/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/aa$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/p",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/b/aa$a;


# direct methods
.method constructor <init>(Lcom/google/a/b/aa$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/aa$a$a;->a:Lcom/google/a/b/aa$a;

    invoke-direct {p0}, Lcom/google/a/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/a/b/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/n",
            "<TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/aa$a$a;->a:Lcom/google/a/b/aa$a;

    return-object v0
.end method

.method public b()Lcom/google/a/b/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/aj",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/aa$a$a;->c()Lcom/google/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/m;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/google/a/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/m",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/b/aa$a$a$1;

    invoke-direct {v0, p0}, Lcom/google/a/b/aa$a$a$1;-><init>(Lcom/google/a/b/aa$a$a;)V

    return-object v0
.end method

.method e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/aa$a$a;->a:Lcom/google/a/b/aa$a;

    iget-object v0, v0, Lcom/google/a/b/aa$a;->b:Lcom/google/a/b/aa;

    invoke-static {v0}, Lcom/google/a/b/aa;->c(Lcom/google/a/b/aa;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/aa$a$a;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method
