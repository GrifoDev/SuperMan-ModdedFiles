.class Lcom/google/a/b/r$2;
.super Lcom/google/a/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/r;->d()Lcom/google/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/i",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/b/m;

.field final synthetic b:Lcom/google/a/b/r;


# direct methods
.method constructor <init>(Lcom/google/a/b/r;Lcom/google/a/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/r$2;->b:Lcom/google/a/b/r;

    iput-object p2, p0, Lcom/google/a/b/r$2;->a:Lcom/google/a/b/m;

    invoke-direct {p0}, Lcom/google/a/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/a/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/k",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/r$2;->b:Lcom/google/a/b/r;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/r$2;->a:Lcom/google/a/b/m;

    invoke-virtual {v0, p1}, Lcom/google/a/b/m;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
