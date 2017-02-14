.class Lcom/android/launcher2/utils/ImageCache$1;
.super Landroid/support/v4/util/LruCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/utils/ImageCache;->init(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/utils/ImageCache;


# direct methods
.method constructor <init>(Lcom/android/launcher2/utils/ImageCache;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/utils/ImageCache$1;->this$0:Lcom/android/launcher2/utils/ImageCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/utils/ImageCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2

    invoke-static {p2}, Lcom/android/launcher2/utils/ImageCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v1

    div-int/lit16 v0, v1, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
