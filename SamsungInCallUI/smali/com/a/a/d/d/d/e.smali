.class public Lcom/a/a/d/d/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/g",
        "<",
        "Lcom/a/a/d/d/d/b;",
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

.field private final b:Lcom/a/a/d/b/a/c;


# direct methods
.method public constructor <init>(Lcom/a/a/d/g;Lcom/a/a/d/b/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/a/a/d/b/a/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/d/e;->a:Lcom/a/a/d/g;

    iput-object p2, p0, Lcom/a/a/d/d/d/e;->b:Lcom/a/a/d/b/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/l;II)Lcom/a/a/d/b/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<",
            "Lcom/a/a/d/d/d/b;",
            ">;II)",
            "Lcom/a/a/d/b/l",
            "<",
            "Lcom/a/a/d/d/d/b;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/d/b;

    invoke-interface {p1}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/d/d/d/b;

    invoke-virtual {v1}, Lcom/a/a/d/d/d/b;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v1, Lcom/a/a/d/d/a/c;

    iget-object v3, p0, Lcom/a/a/d/d/d/e;->b:Lcom/a/a/d/b/a/c;

    invoke-direct {v1, v2, v3}, Lcom/a/a/d/d/a/c;-><init>(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/c;)V

    iget-object v3, p0, Lcom/a/a/d/d/d/e;->a:Lcom/a/a/d/g;

    invoke-interface {v3, v1, p2, p3}, Lcom/a/a/d/g;->a(Lcom/a/a/d/b/l;II)Lcom/a/a/d/b/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Lcom/a/a/d/d/d/d;

    new-instance v2, Lcom/a/a/d/d/d/b;

    iget-object v3, p0, Lcom/a/a/d/d/d/e;->a:Lcom/a/a/d/g;

    invoke-direct {v2, v0, v1, v3}, Lcom/a/a/d/d/d/b;-><init>(Lcom/a/a/d/d/d/b;Landroid/graphics/Bitmap;Lcom/a/a/d/g;)V

    invoke-direct {p1, v2}, Lcom/a/a/d/d/d/d;-><init>(Lcom/a/a/d/d/d/b;)V

    :cond_0
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/d/e;->a:Lcom/a/a/d/g;

    invoke-interface {v0}, Lcom/a/a/d/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
