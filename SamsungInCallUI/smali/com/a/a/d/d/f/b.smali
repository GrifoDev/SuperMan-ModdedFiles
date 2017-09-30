.class public Lcom/a/a/d/d/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/d/f/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/d/f/c",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/a/a/d/d/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/a/a/d/b/a/c;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/a/a/d/b/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/f/b;->a:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/a/a/d/d/f/b;->b:Lcom/a/a/d/b/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/a/a/d/b/l",
            "<",
            "Lcom/a/a/d/d/a/j;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/a/a/d/d/a/j;

    iget-object v2, p0, Lcom/a/a/d/d/f/b;->a:Landroid/content/res/Resources;

    invoke-interface {p1}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v0}, Lcom/a/a/d/d/a/j;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/a/a/d/d/a/k;

    iget-object v2, p0, Lcom/a/a/d/d/f/b;->b:Lcom/a/a/d/b/a/c;

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/d/a/k;-><init>(Lcom/a/a/d/d/a/j;Lcom/a/a/d/b/a/c;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method
