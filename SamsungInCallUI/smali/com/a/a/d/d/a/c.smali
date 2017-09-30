.class public Lcom/a/a/d/d/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/b/l",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lcom/a/a/d/b/a/c;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "BitmapPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/a/a/d/d/a/c;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/a/a/d/d/a/c;->b:Lcom/a/a/d/b/a/c;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/c;)Lcom/a/a/d/d/a/c;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/d/d/a/c;

    invoke-direct {v0, p0, p1}, Lcom/a/a/d/d/a/c;-><init>(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/c;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/a/c;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/d/d/a/c;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/a/c;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/a/a/j/h;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/d/d/a/c;->b:Lcom/a/a/d/b/a/c;

    iget-object v1, p0, Lcom/a/a/d/d/a/c;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/a/a/d/b/a/c;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/d/a/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
