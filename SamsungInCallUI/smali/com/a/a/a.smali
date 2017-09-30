.class public Lcom/a/a/a;
.super Lcom/a/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/c",
        "<TModelType;",
        "Lcom/a/a/d/c/g;",
        "Lcom/a/a/d/d/e/a;",
        "Lcom/a/a/d/d/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/a/a/g/f;Lcom/a/a/g;Lcom/a/a/e/m;Lcom/a/a/e/g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/a/a/g/f",
            "<TModelType;",
            "Lcom/a/a/d/c/g;",
            "Lcom/a/a/d/d/e/a;",
            "Lcom/a/a/d/d/b/b;",
            ">;",
            "Lcom/a/a/g;",
            "Lcom/a/a/e/m;",
            "Lcom/a/a/e/g;",
            ")V"
        }
    .end annotation

    const-class v4, Lcom/a/a/d/d/b/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/a/a/g/f;Ljava/lang/Class;Lcom/a/a/g;Lcom/a/a/e/m;Lcom/a/a/e/g;)V

    invoke-virtual {p0}, Lcom/a/a/a;->c()Lcom/a/a/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/a/a/d/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/a;->c:Lcom/a/a/g;

    invoke-virtual {v2}, Lcom/a/a/g;->e()Lcom/a/a/d/d/e/f;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/a/a/a;->a([Lcom/a/a/d/g;)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/a/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/a/a/c;->b(II)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Lcom/a/a/d/b/b;)Lcom/a/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/b;",
            ")",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Lcom/a/a/d/b/b;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Lcom/a/a/d/b;)Lcom/a/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b",
            "<",
            "Lcom/a/a/d/c/g;",
            ">;)",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Lcom/a/a/d/b;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Lcom/a/a/d/c;)Lcom/a/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            ")",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Lcom/a/a/d/c;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Lcom/a/a/d/e;)Lcom/a/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/e",
            "<",
            "Lcom/a/a/d/c/g;",
            "Lcom/a/a/d/d/e/a;",
            ">;)",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Lcom/a/a/d/e;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Lcom/a/a/h/a/d;)Lcom/a/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/d",
            "<",
            "Lcom/a/a/d/d/b/b;",
            ">;)",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Lcom/a/a/h/a/d;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/a/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Ljava/lang/Object;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Z)Lcom/a/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b(Z)Lcom/a/a/c;

    return-object p0
.end method

.method public varargs a([Lcom/a/a/d/g;)Lcom/a/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/a/a/d/g",
            "<",
            "Lcom/a/a/d/d/e/a;",
            ">;)",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->b([Lcom/a/a/d/g;)Lcom/a/a/c;

    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/a/a/h/b/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/a/a/h/b/j",
            "<",
            "Lcom/a/a/d/d/b/b;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/a/a/c;->a(Landroid/widget/ImageView;)Lcom/a/a/h/b/j;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/a/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/a/a/d/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/a;->c:Lcom/a/a/g;

    invoke-virtual {v2}, Lcom/a/a/g;->f()Lcom/a/a/d/d/e/f;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/a/a/a;->a([Lcom/a/a/d/g;)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(II)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a;->a(II)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/a/a/d/b/b;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a(Lcom/a/a/d/b/b;)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/a/a/d/b;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a(Lcom/a/a/d/b;)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/a/a/d/c;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a(Lcom/a/a/d/c;)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/a/a/d/e;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a(Lcom/a/a/d/e;)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/a/a/h/a/d;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a(Lcom/a/a/h/a/d;)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a(Ljava/lang/Object;)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a(Z)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/a/a/d/g;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a([Lcom/a/a/d/g;)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a",
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

    invoke-virtual {p0}, Lcom/a/a/a;->d()Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    return-object v0
.end method

.method e()V
    .locals 0

    invoke-virtual {p0}, Lcom/a/a/a;->b()Lcom/a/a/a;

    return-void
.end method

.method f()V
    .locals 0

    invoke-virtual {p0}, Lcom/a/a/a;->a()Lcom/a/a/a;

    return-void
.end method

.method public synthetic g()Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/a;->d()Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method
