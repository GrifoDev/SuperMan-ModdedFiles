.class public Lcom/a/a/d/d/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/e",
        "<",
        "Lcom/a/a/d/c/g;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/e",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/e;Lcom/a/a/d/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/a/a/d/e",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/a/m;->a:Lcom/a/a/d/e;

    iput-object p2, p0, Lcom/a/a/d/d/a/m;->b:Lcom/a/a/d/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/c/g;II)Lcom/a/a/d/b/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/g;",
            "II)",
            "Lcom/a/a/d/b/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/a/d/c/g;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/a/a/d/d/a/m;->a:Lcom/a/a/d/e;

    invoke-interface {v2, v0, p2, p3}, Lcom/a/a/d/e;->a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/c/g;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/a/a/d/d/a/m;->b:Lcom/a/a/d/e;

    invoke-interface {v0, v1, p2, p3}, Lcom/a/a/d/e;->a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ImageVideoDecoder"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ImageVideoDecoder"

    const-string v3, "Failed to load image from stream, trying FileDescriptor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;
    .locals 1

    check-cast p1, Lcom/a/a/d/c/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/d/d/a/m;->a(Lcom/a/a/d/c/g;II)Lcom/a/a/d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
