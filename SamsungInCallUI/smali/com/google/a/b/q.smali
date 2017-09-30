.class final Lcom/google/a/b/q;
.super Lcom/google/a/b/s$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/s$a",
        "<TK;>;"
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

    invoke-direct {p0}, Lcom/google/a/b/s$a;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/q;->a:Lcom/google/a/b/n;

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/q;->a:Lcom/google/a/b/n;

    invoke-virtual {v0}, Lcom/google/a/b/n;->f()Lcom/google/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/s;->c()Lcom/google/a/b/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/b/m;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/a/b/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/aj",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/q;->a:Lcom/google/a/b/n;

    invoke-virtual {v0}, Lcom/google/a/b/n;->j()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/a/b/q;->a:Lcom/google/a/b/n;

    invoke-virtual {v0, p1}, Lcom/google/a/b/n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/q;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/q;->a:Lcom/google/a/b/n;

    invoke-virtual {v0}, Lcom/google/a/b/n;->size()I

    move-result v0

    return v0
.end method
