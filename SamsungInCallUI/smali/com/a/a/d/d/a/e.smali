.class public Lcom/a/a/d/d/a/e;
.super Lcom/a/a/d/d/a/d;


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/d/d/a/d;-><init>(Lcom/a/a/d/b/a/c;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/d/b/a/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_0
    invoke-interface {p1, p3, p4, v0}, Lcom/a/a/d/b/a/c;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/a/a/d/d/a/r;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Lcom/a/a/d/b/a/c;->a(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "CenterCrop.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
