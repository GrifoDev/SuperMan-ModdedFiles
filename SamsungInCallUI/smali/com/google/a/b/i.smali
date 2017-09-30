.class abstract Lcom/google/a/b/i;
.super Lcom/google/a/b/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/m",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/a/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/k",
            "<TE;>;"
        }
    .end annotation
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/i;->a()Lcom/google/a/b/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/b/k;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/i;->a()Lcom/google/a/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/k;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/i;->a()Lcom/google/a/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/k;->size()I

    move-result v0

    return v0
.end method
