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

.field public outHeight:I

.field public outMimeType:Ljava/lang/String;

.field public outWidth:I

.field public semIsPreview:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 386
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->semIsPreview:Z

    .line 55
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 56
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 57
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 54
    return-void
.end method


# virtual methods
.method public requestCancelDecode()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 402
    return-void
.end method
