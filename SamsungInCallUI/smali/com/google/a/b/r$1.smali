.class Lcom/google/a/b/r$1;
.super Lcom/google/a/b/aj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/r;->b()Lcom/google/a/b/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/aj",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/b/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/aj",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/a/b/r;


# direct methods
.method constructor <init>(Lcom/google/a/b/r;)V
    .locals 1

    iput-object p1, p0, Lcom/google/a/b/r$1;->b:Lcom/google/a/b/r;

    invoke-direct {p0}, Lcom/google/a/b/aj;-><init>()V

    iget-object v0, p0, Lcom/google/a/b/r$1;->b:Lcom/google/a/b/r;

    invoke-static {v0}, Lcom/google/a/b/r;->a(Lcom/google/a/b/r;)Lcom/google/a/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/n;->f()Lcom/google/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/s;->b()Lcom/google/a/b/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/r$1;->a:Lcom/google/a/b/aj;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/r$1;->a:Lcom/google/a/b/aj;

    invoke-virtual {v0}, Lcom/google/a/b/aj;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/r$1;->a:Lcom/google/a/b/aj;

    invoke-virtual {v0}, Lcom/google/a/b/aj;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
