.class public Landroid/graphics/BitmapFactory$Options;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public inBitmap:Landroid/graphics/Bitmap;

.field public inDensity:I

.field public inDither:Z

.field public inInputShareable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public inJustDecodeBounds:Z

.field public inMutable:Z

.field public inPreferQualityOverSpeed:Z

.field public inPreferredColorSpace:Landroid/graphics/ColorSpace;

.field public inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field public inPremultiplied:Z

.field public inPurgeable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public inSampleSize:I

.field public inScaled:Z

.field public inScreenDensity:I

.field public inTargetDensity:I

.field public inTempStorage:[B

.field public mCancel:Z

.field public outColorSpace:Landroid/graphics/ColorSpace;

.field public outConfig:Landroid/graphics/Bitmap$Config;

.field public outHeight:I

.field public outMimeType:Ljava/lang/String;

.field public outWidth:I

.field public semIsPreview:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->semIsPreview:Z

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    return-void
.end method

.method static validate(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmaps with Config.HARWARE are always immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    instance-of v0, v0, Landroid/graphics/ColorSpace$Rgb;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The destination color space must use the RGB color model"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The destination color space must use an ICC parametric transfer function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public requestCancelDecode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    return-void
.end method
