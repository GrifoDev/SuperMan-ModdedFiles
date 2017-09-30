.class public Lcom/a/a/d/b/b/g;
.super Lcom/a/a/j/e;

# interfaces
.implements Lcom/a/a/d/b/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/j/e",
        "<",
        "Lcom/a/a/d/c;",
        "Lcom/a/a/d/b/l",
        "<*>;>;",
        "Lcom/a/a/d/b/b/h;"
    }
.end annotation


# instance fields
.field private a:Lcom/a/a/d/b/b/h$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/j/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/d/b/l;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<*>;)I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/a/a/d/b/l;->c()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/a/a/d/b/l;

    invoke-virtual {p0, p1}, Lcom/a/a/d/b/b/g;->a(Lcom/a/a/d/b/l;)I

    move-result v0

    return v0
.end method

.method public synthetic a(Lcom/a/a/d/c;)Lcom/a/a/d/b/l;
    .locals 1

    invoke-super {p0, p1}, Lcom/a/a/j/e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/l;

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/d/b/b/g;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/d/b/b/g;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/a/a/d/b/b/g;->b(I)V

    goto :goto_0
.end method

.method public a(Lcom/a/a/d/b/b/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/d/b/b/g;->a:Lcom/a/a/d/b/b/h$a;

    return-void
.end method

.method protected a(Lcom/a/a/d/c;Lcom/a/a/d/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "Lcom/a/a/d/b/l",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/b/b/g;->a:Lcom/a/a/d/b/b/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/b/b/g;->a:Lcom/a/a/d/b/b/h$a;

    invoke-interface {v0, p2}, Lcom/a/a/d/b/b/h$a;->b(Lcom/a/a/d/b/l;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/a/a/d/c;

    check-cast p2, Lcom/a/a/d/b/l;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/d/b/b/g;->a(Lcom/a/a/d/c;Lcom/a/a/d/b/l;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/a/a/d/c;Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/a/a/j/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/l;

    return-object v0
.end method
