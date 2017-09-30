.class public final Lcom/google/a/b/m$a;
.super Lcom/google/a/b/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/k$a",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/a/b/m$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/a/b/k$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Lcom/google/a/b/k$a;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/a/b/m$a;->c(Ljava/lang/Object;)Lcom/google/a/b/m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Iterable;)Lcom/google/a/b/k$b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/a/b/m$a;->b(Ljava/lang/Iterable;)Lcom/google/a/b/m$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/google/a/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/m$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/b/m$a;->b:I

    invoke-static {v0, v1}, Lcom/google/a/b/m;->b([Ljava/lang/Object;I)Lcom/google/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/google/a/b/k$b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/a/b/m$a;->c(Ljava/lang/Object;)Lcom/google/a/b/m$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/a/b/m$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/a/b/m$a",
            "<TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/a/b/k$a;->a(Ljava/lang/Iterable;)Lcom/google/a/b/k$b;

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Lcom/google/a/b/m$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/a/b/m$a",
            "<TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/a/b/k$a;->a(Ljava/lang/Object;)Lcom/google/a/b/k$a;

    return-object p0
.end method
