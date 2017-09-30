.class public Lcom/a/a/d/d/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/g",
        "<",
        "Lcom/a/a/d/d/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/g",
            "<",
            "Lcom/a/a/d/d/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/a/c;",
            "Lcom/a/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/a/a/d/d/d/e;

    invoke-direct {v0, p2, p1}, Lcom/a/a/d/d/d/e;-><init>(Lcom/a/a/d/g;Lcom/a/a/d/b/a/c;)V

    invoke-direct {p0, p2, v0}, Lcom/a/a/d/d/e/f;-><init>(Lcom/a/a/d/g;Lcom/a/a/d/g;)V

    return-void
.end method

.method constructor <init>(Lcom/a/a/d/g;Lcom/a/a/d/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/a/a/d/g",
            "<",
            "Lcom/a/a/d/d/d/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/e/f;->a:Lcom/a/a/d/g;

    iput-object p2, p0, Lcom/a/a/d/d/e/f;->b:Lcom/a/a/d/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/l;II)Lcom/a/a/d/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<",
            "Lcom/a/a/d/d/e/a;",
            ">;II)",
            "Lcom/a/a/d/b/l",
            "<",
            "Lcom/a/a/d/d/e/a;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/e/a;

    invoke-virtual {v0}, Lcom/a/a/d/d/e/a;->b()Lcom/a/a/d/b/l;

    move-result-object v1

    invoke-interface {p1}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/e/a;

    invoke-virtual {v0}, Lcom/a/a/d/d/e/a;->c()Lcom/a/a/d/b/l;

    move-result-object v0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/a/a/d/d/e/f;->a:Lcom/a/a/d/g;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/a/a/d/d/e/f;->a:Lcom/a/a/d/g;

    invoke-interface {v0, v1, p2, p3}, Lcom/a/a/d/g;->a(Lcom/a/a/d/b/l;II)Lcom/a/a/d/b/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/a/a/d/d/e/a;

    invoke-interface {p1}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/e/a;

    invoke-virtual {v0}, Lcom/a/a/d/d/e/a;->c()Lcom/a/a/d/b/l;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/a/a/d/d/e/a;-><init>(Lcom/a/a/d/b/l;Lcom/a/a/d/b/l;)V

    new-instance p1, Lcom/a/a/d/d/e/b;

    invoke-direct {p1, v1}, Lcom/a/a/d/d/e/b;-><init>(Lcom/a/a/d/d/e/a;)V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/a/a/d/d/e/f;->b:Lcom/a/a/d/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/d/d/e/f;->b:Lcom/a/a/d/g;

    invoke-interface {v1, v0, p2, p3}, Lcom/a/a/d/g;->a(Lcom/a/a/d/b/l;II)Lcom/a/a/d/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Lcom/a/a/d/d/e/a;

    invoke-interface {p1}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/e/a;

    invoke-virtual {v0}, Lcom/a/a/d/d/e/a;->b()Lcom/a/a/d/b/l;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/a/a/d/d/e/a;-><init>(Lcom/a/a/d/b/l;Lcom/a/a/d/b/l;)V

    new-instance p1, Lcom/a/a/d/d/e/b;

    invoke-direct {p1, v2}, Lcom/a/a/d/d/e/b;-><init>(Lcom/a/a/d/d/e/a;)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/e/f;->a:Lcom/a/a/d/g;

    invoke-interface {v0}, Lcom/a/a/d/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
