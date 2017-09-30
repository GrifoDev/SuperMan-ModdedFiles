.class Lcom/google/a/b/aa$a$a$1;
.super Lcom/google/a/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/aa$a$a;->d()Lcom/google/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/i",
        "<",
        "Ljava/util/Map$Entry",
        "<TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/b/aa$a$a;


# direct methods
.method constructor <init>(Lcom/google/a/b/aa$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/aa$a$a$1;->a:Lcom/google/a/b/aa$a$a;

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
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/aa$a$a$1;->a:Lcom/google/a/b/aa$a$a;

    return-object v0
.end method

.method public b(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/aa$a$a$1;->a:Lcom/google/a/b/aa$a$a;

    iget-object v0, v0, Lcom/google/a/b/aa$a$a;->a:Lcom/google/a/b/aa$a;

    iget-object v0, v0, Lcom/google/a/b/aa$a;->b:Lcom/google/a/b/aa;

    invoke-static {v0}, Lcom/google/a/b/aa;->d(Lcom/google/a/b/aa;)[Ljava/util/Map$Entry;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/a/b/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/a/b/aa$a$a$1;->b(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
