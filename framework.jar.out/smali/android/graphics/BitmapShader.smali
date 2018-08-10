.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field private mTileX:I

.field private mTileY:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/graphics/BitmapShader;->mTileX:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Landroid/graphics/BitmapShader;->mTileY:I

    if-ne p3, v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iput p3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2

    iget v0, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v1, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private static native nativeCreate(JLandroid/graphics/Bitmap;II)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 4

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-virtual {p0, v0}, Landroid/graphics/BitmapShader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method

.method createNativeInstance(J)J
    .locals 3

    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v2, p0, Landroid/graphics/BitmapShader;->mTileY:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/graphics/BitmapShader;->nativeCreate(JLandroid/graphics/Bitmap;II)J

    move-result-wide v0

    return-wide v0
.end method
