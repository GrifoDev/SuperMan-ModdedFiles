.class Lcom/google/a/b/n$1;
.super Lcom/google/a/b/aj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/n;->j()Lcom/google/a/b/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/aj",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/b/aj;

.field final synthetic b:Lcom/google/a/b/n;


# direct methods
.method constructor <init>(Lcom/google/a/b/n;Lcom/google/a/b/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/n$1;->b:Lcom/google/a/b/n;

    iput-object p2, p0, Lcom/google/a/b/n$1;->a:Lcom/google/a/b/aj;

    invoke-direct {p0}, Lcom/google/a/b/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/n$1;->a:Lcom/google/a/b/aj;

    invoke-virtual {v0}, Lcom/google/a/b/aj;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/n$1;->a:Lcom/google/a/b/aj;

    invoke-virtual {v0}, Lcom/google/a/b/aj;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
