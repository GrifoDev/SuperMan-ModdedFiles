.class public Lcom/a/a/d/d/a/k;
.super Lcom/a/a/d/d/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/d/d/b/a",
        "<",
        "Lcom/a/a/d/d/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/a/a/d/b/a/c;


# direct methods
.method public constructor <init>(Lcom/a/a/d/d/a/j;Lcom/a/a/d/b/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/d/d/b/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/a/a/d/d/a/k;->b:Lcom/a/a/d/b/a/c;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/a/k;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/a/a/d/d/a/j;

    invoke-virtual {v0}, Lcom/a/a/d/d/a/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/j/h;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    iget-object v1, p0, Lcom/a/a/d/d/a/k;->b:Lcom/a/a/d/b/a/c;

    iget-object v0, p0, Lcom/a/a/d/d/a/k;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/a/a/d/d/a/j;

    invoke-virtual {v0}, Lcom/a/a/d/d/a/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/a/a/d/b/a/c;->a(Landroid/graphics/Bitmap;)Z

    return-void
.end method
