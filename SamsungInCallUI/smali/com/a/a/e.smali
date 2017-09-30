.class public Lcom/a/a/e;
.super Lcom/a/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/c",
        "<TModelType;",
        "Ljava/io/InputStream;",
        "Lcom/a/a/d/d/d/b;",
        "Lcom/a/a/d/d/d/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/a/a/g/f;Ljava/lang/Class;Lcom/a/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/g/f",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/a/a/d/d/d/b;",
            "Lcom/a/a/d/d/d/b;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/a/a/d/d/d/b;",
            ">;",
            "Lcom/a/a/c",
            "<TModelType;***>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/c;-><init>(Lcom/a/a/g/f;Ljava/lang/Class;Lcom/a/a/c;)V

    return-void
.end method

.method private c([Lcom/a/a/d/g;)[Lcom/a/a/d/d/d/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/a/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)[",
            "Lcom/a/a/d/d/d/e;"
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [Lcom/a/a/d/d/d/e;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/a/a/d/d/d/e;

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/a/a/e;->c:Lcom/a/a/g;

    invoke-virtual {v4}, Lcom/a/a/g;->a()Lcom/a/a/d/b/a/c;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/a/a/d/d/d/e;-><init>(Lcom/a/a/d/g;Lcom/a/a/d/b/a/c;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Lcom/a/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/a/a/d/d/a/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/e;->c:Lcom/a/a/g;

    invoke-virtual {v2}, Lcom/a/a/g;->c()Lcom/a/a/d/d/a/e;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/a/a/e;->a([Lcom/a/a/d/d/a/d;)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/a/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/a/a/c;->b(II)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Lcom/a/a/d/b/b;)Lcom/a/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/b;",
            ")",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Lcom/a/a/d/b/b;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Lcom/a/a/d/b;)Lcom/a/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b",
            "<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Lcom/a/a/d/b;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Lcom/a/a/d/c;)Lcom/a/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            ")",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Lcom/a/a/d/c;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Lcom/a/a/d/e;)Lcom/a/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/a/a/d/d/d/b;",
            ">;)",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Lcom/a/a/d/e;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Lcom/a/a/h/a/d;)Lcom/a/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/d",
            "<",
            "Lcom/a/a/d/d/d/b;",
            ">;)",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Lcom/a/a/h/a/d;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/a/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Ljava/lang/Object;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Z)Lcom/a/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Z)Lcom/a/a/c;

    return-object p0
.end method

.method public varargs a([Lcom/a/a/d/d/a/d;)Lcom/a/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/a/a/d/d/a/d;",
            ")",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/a/a/e;->c([Lcom/a/a/d/g;)[Lcom/a/a/d/d/d/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/e;->a([Lcom/a/a/d/g;)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Lcom/a/a/d/g;)Lcom/a/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/a/a/d/g",
            "<",
            "Lcom/a/a/d/d/d/b;",
            ">;)",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b([Lcom/a/a/d/g;)Lcom/a/a/c;

    return-object p0
.end method

.method public synthetic b(II)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/a/a/e;->a(II)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/a/a/d/b/b;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a(Lcom/a/a/d/b/b;)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/a/a/d/b;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a(Lcom/a/a/d/b;)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/a/a/d/c;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a(Lcom/a/a/d/c;)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/a/a/d/e;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a(Lcom/a/a/d/e;)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/a/a/h/a/d;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a(Lcom/a/a/h/a/d;)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a(Ljava/lang/Object;)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a(Z)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/a/a/d/g;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a([Lcom/a/a/d/g;)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/a/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/a/a/d/d/a/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/e;->c:Lcom/a/a/g;

    invoke-virtual {v2}, Lcom/a/a/g;->d()Lcom/a/a/d/d/a/i;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/a/a/e;->a([Lcom/a/a/d/d/a/d;)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/a/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/h/a/a;

    invoke-direct {v0}, Lcom/a/a/h/a/a;-><init>()V

    invoke-super {p0, v0}, Lcom/a/a/c;->b(Lcom/a/a/h/a/d;)Lcom/a/a/c;

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/e;->d()Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/a/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/e",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/a/a/e;

    return-object v0
.end method

.method e()V
    .locals 0

    invoke-virtual {p0}, Lcom/a/a/e;->b()Lcom/a/a/e;

    return-void
.end method

.method f()V
    .locals 0

    invoke-virtual {p0}, Lcom/a/a/e;->a()Lcom/a/a/e;

    return-void
.end method

.method public synthetic g()Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/e;->d()Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method
