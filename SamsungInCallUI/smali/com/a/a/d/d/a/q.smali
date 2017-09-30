.class public Lcom/a/a/d/d/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/e",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/d/a/f;

.field private b:Lcom/a/a/d/b/a/c;

.field private c:Lcom/a/a/d/a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V
    .locals 1

    sget-object v0, Lcom/a/a/d/d/a/f;->a:Lcom/a/a/d/d/a/f;

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/d/d/a/q;-><init>(Lcom/a/a/d/d/a/f;Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/d/d/a/f;Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/a/q;->a:Lcom/a/a/d/d/a/f;

    iput-object p2, p0, Lcom/a/a/d/d/a/q;->b:Lcom/a/a/d/b/a/c;

    iput-object p3, p0, Lcom/a/a/d/d/a/q;->c:Lcom/a/a/d/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;II)Lcom/a/a/d/b/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lcom/a/a/d/b/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/a/q;->a:Lcom/a/a/d/d/a/f;

    iget-object v2, p0, Lcom/a/a/d/d/a/q;->b:Lcom/a/a/d/b/a/c;

    iget-object v5, p0, Lcom/a/a/d/d/a/q;->c:Lcom/a/a/d/a;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/d/d/a/f;->a(Ljava/io/InputStream;Lcom/a/a/d/b/a/c;IILcom/a/a/d/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/d/a/q;->b:Lcom/a/a/d/b/a/c;

    invoke-static {v0, v1}, Lcom/a/a/d/d/a/c;->a(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/c;)Lcom/a/a/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;
    .locals 1

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/d/d/a/q;->a(Ljava/io/InputStream;II)Lcom/a/a/d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/a/a/d/d/a/q;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/d/a/q;->a:Lcom/a/a/d/d/a/f;

    invoke-virtual {v1}, Lcom/a/a/d/d/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/d/a/q;->c:Lcom/a/a/d/a;

    invoke-virtual {v1}, Lcom/a/a/d/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/d/a/q;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/d/a/q;->d:Ljava/lang/String;

    return-object v0
.end method
