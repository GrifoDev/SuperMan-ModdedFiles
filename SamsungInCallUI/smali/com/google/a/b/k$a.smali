.class abstract Lcom/google/a/b/k$a;
.super Lcom/google/a/b/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/k$b",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/a/b/k$b;-><init>()V

    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, Lcom/google/a/b/e;->a(ILjava/lang/String;)I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/a/b/k$a;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/b/k$a;->b:I

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/k$a;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/a/b/k$a;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/a/b/k$a;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/a/b/k$a;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/a/b/w;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/k$a;->a:[Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/a/b/k$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/a/b/k$a",
            "<TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/a/b/k$a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/b/k$a;->a(I)V

    iget-object v0, p0, Lcom/google/a/b/k$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/b/k$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/b/k$a;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/google/a/b/k$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/a/b/k$b",
            "<TE;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lcom/google/a/b/k$a;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/a/b/k$a;->a(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/a/b/k$b;->a(Ljava/lang/Iterable;)Lcom/google/a/b/k$b;

    return-object p0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/google/a/b/k$b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/a/b/k$a;->a(Ljava/lang/Object;)Lcom/google/a/b/k$a;

    move-result-object v0

    return-object v0
.end method
