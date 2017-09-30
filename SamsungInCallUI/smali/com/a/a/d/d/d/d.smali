.class public Lcom/a/a/d/d/d/d;
.super Lcom/a/a/d/d/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/d/d/b/a",
        "<",
        "Lcom/a/a/d/d/d/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/a/a/d/d/d/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/d/d/b/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/a/a/d/d/d/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/a/a/d/d/d/b;

    invoke-virtual {v0}, Lcom/a/a/d/d/d/b;->d()[B

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/a/a/d/d/d/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/a/a/d/d/d/b;

    invoke-virtual {v0}, Lcom/a/a/d/d/d/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/j/h;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/d/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/a/a/d/d/d/b;

    invoke-virtual {v0}, Lcom/a/a/d/d/d/b;->stop()V

    iget-object v0, p0, Lcom/a/a/d/d/d/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/a/a/d/d/d/b;

    invoke-virtual {v0}, Lcom/a/a/d/d/d/b;->f()V

    return-void
.end method
