.class Lcom/google/a/b/m$b;
.super Lcom/google/a/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/m",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/a/b/m;


# direct methods
.method constructor <init>(Lcom/google/a/b/m;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/m$b;->c:Lcom/google/a/b/m;

    invoke-direct {p0}, Lcom/google/a/b/m;-><init>()V

    iput p2, p0, Lcom/google/a/b/m$b;->a:I

    iput p3, p0, Lcom/google/a/b/m$b;->b:I

    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/a/b/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/a/b/m$b;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/a/a/e;->a(III)V

    iget-object v0, p0, Lcom/google/a/b/m$b;->c:Lcom/google/a/b/m;

    iget v1, p0, Lcom/google/a/b/m$b;->a:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/a/b/m$b;->a:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/b/m;->a(II)Lcom/google/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/google/a/b/m$b;->b:I

    invoke-static {p1, v0}, Lcom/google/a/a/e;->a(II)I

    iget-object v0, p0, Lcom/google/a/b/m$b;->c:Lcom/google/a/b/m;

    iget v1, p0, Lcom/google/a/b/m$b;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/a/b/m;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Lcom/google/a/b/m;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-super {p0}, Lcom/google/a/b/m;->f()Lcom/google/a/b/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-super {p0, p1}, Lcom/google/a/b/m;->a(I)Lcom/google/a/b/ak;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/a/b/m$b;->b:I

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/a/b/m$b;->a(II)Lcom/google/a/b/m;

    move-result-object v0

    return-object v0
.end method
