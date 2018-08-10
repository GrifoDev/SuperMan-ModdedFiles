.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$1;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;,
        Landroid/graphics/Bitmap$SemAstcOptions;,
        Landroid/graphics/Bitmap$SemCompressFormat;
    }
.end annotation


# static fields
.field private static final synthetic -android-graphics-Bitmap$ConfigSwitchesValues:[I = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final NATIVE_ALLOCATION_SIZE:J = 0x20L

.field private static final TAG:Ljava/lang/String; = "Bitmap"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I


# instance fields
.field private mColorSpace:Landroid/graphics/ColorSpace;

.field public mDensity:I

.field private mHeight:I

.field private final mIsMutable:Z

.field private final mNativePtr:J

.field private mNinePatchChunk:[B

.field private mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

.field private mRecycled:Z

.field private mRequestPremultiplied:Z

.field private mWidth:I


# direct methods
.method private static synthetic -getandroid-graphics-Bitmap$ConfigSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/graphics/Bitmap;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Landroid/graphics/Bitmap;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JIIIZZ[BLandroid/graphics/NinePatch$InsetStruct;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v3

    iput v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "internal error: native bitmap is 0"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iput p3, p0, Landroid/graphics/Bitmap;->mWidth:I

    iput p4, p0, Landroid/graphics/Bitmap;->mHeight:I

    move/from16 v0, p6

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    move-object/from16 v0, p9

    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    if-ltz p5, :cond_1

    move/from16 v0, p5

    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_1
    iput-wide p1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v8, 0x20

    add-long v6, v8, v4

    new-instance v2, Llibcore/util/NativeAllocationRegistry;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeFinalizer()J

    move-result-wide v4

    invoke-direct/range {v2 .. v7}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    invoke-virtual {v2, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private checkHardware(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkPixelAccess(II)V
    .locals 2

    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 4

    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    if-gez p3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-gez p4, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    add-int v2, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    add-int v2, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p3, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    add-int/lit8 v2, p4, -0x1

    mul-int/2addr v2, p6

    add-int v0, p5, v2

    array-length v1, p7

    if-ltz p5, :cond_5

    add-int v2, p5, p3

    if-le v2, v1, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_6
    if-ltz v0, :cond_5

    add-int v2, v0, p3

    if-gt v2, v1, :cond_5

    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkWidthHeight(II)V
    .locals 2

    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static checkXYSign(II)V
    .locals 2

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 22

    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    add-int v17, p1, p3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "x + width must be <= bitmap.width()"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    add-int v17, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "y + height must be <= bitmap.height()"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v17

    if-nez v17, :cond_3

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v17

    if-eqz v17, :cond_3

    :cond_2
    return-object p0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/4 v9, 0x1

    :goto_0
    if-eqz v9, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/graphics/Bitmap;->nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_4
    move/from16 v12, p3

    move/from16 v11, p4

    new-instance v14, Landroid/graphics/Rect;

    add-int v17, p1, p3

    add-int v18, p2, p4

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/RectF;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {}, Landroid/graphics/Bitmap;->-getandroid-graphics-Bitmap$ConfigSwitchesValues()[I

    move-result-object v17

    invoke-virtual {v6}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    :pswitch_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_5
    :goto_1
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v17

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-static {v0, v1, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v13, 0x0

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    move-wide/from16 v18, v0

    iget-wide v0, v4, Landroid/graphics/Bitmap;->mNativePtr:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Landroid/graphics/Bitmap;->nativeCopyColorSpace(JJ)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Landroid/graphics/Bitmap;->mDensity:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v14, v8, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v9, :cond_c

    sget-object v17, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    return-object v17

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_1
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1

    :pswitch_2
    sget-object v10, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1

    :pswitch_3
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v17

    xor-int/lit8 v15, v17, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v16, v10

    if-eqz v15, :cond_a

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_a

    sget-object v17, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_a

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_a
    if-nez v15, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v17

    :goto_3
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v12, v11, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v15, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/16 :goto_2

    :cond_b
    const/16 v17, 0x1

    goto :goto_3

    :cond_c
    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 14

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width and height must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p3, :cond_2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "can\'t create mutable bitmap with Config.HARDWARE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-nez p5, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "can\'t create bitmap without a color space"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_5

    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_9

    :cond_5
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v4, p1

    move v5, p1

    move/from16 v6, p2

    invoke-static/range {v2 .. v10}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;

    move-result-object v11

    :goto_0
    if-eqz p0, :cond_6

    iget v2, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v11, Landroid/graphics/Bitmap;->mDensity:I

    :cond_6
    move/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_7

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_8

    :cond_7
    xor-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_8

    iget-wide v2, v11, Landroid/graphics/Bitmap;->mNativePtr:J

    const/high16 v4, -0x1000000

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    :cond_8
    return-object v11

    :cond_9
    move-object/from16 v0, p5

    instance-of v2, v0, Landroid/graphics/ColorSpace$Rgb;

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "colorSpace must be an RGB color space"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    move-object/from16 v13, p5

    check-cast v13, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v13}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v10

    if-nez v10, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "colorSpace must use an ICC parametric transfer function"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    sget-object v2, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    invoke-static {v13, v2}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v12

    check-cast v12, Landroid/graphics/ColorSpace$Rgb;

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-virtual {v12}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    move v4, p1

    move v5, p1

    move/from16 v6, p2

    invoke-static/range {v2 .. v10}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 13

    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move/from16 v0, p4

    if-ge v1, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v1, p5, -0x1

    mul-int v1, v1, p3

    add-int v11, p2, v1

    array-length v12, p1

    if-ltz p2, :cond_1

    add-int v1, p2, p4

    if-le v1, v12, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_2
    if-ltz v11, :cond_1

    add-int v1, v11, p4

    if-gt v1, v12, :cond_1

    if-lez p4, :cond_3

    if-gtz p5, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width and height must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v9}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz p0, :cond_5

    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v10, Landroid/graphics/Bitmap;->mDensity:I

    :cond_5
    return-object v10
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v3, p1, :cond_0

    if-eq v4, p2, :cond_1

    :cond_0
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v7, v0, v2

    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_1
    move-object v0, p0

    move v2, v1

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultDensity()I
    .locals 1

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0

    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0
.end method

.method private static native nativeCompress(JIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(J)I
.end method

.method private static native nativeCopy(JIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyAshmem(J)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyColorSpace(JJ)V
.end method

.method private static native nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateGraphicBufferHandle(J)Landroid/graphics/GraphicBuffer;
.end method

.method private static native nativeCreateHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeErase(JI)V
.end method

.method private static native nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(J)I
.end method

.method private static native nativeGetAllocationByteCount(J)I
.end method

.method private static native nativeGetColorSpace(J[F[F)Z
.end method

.method private static native nativeGetNativeFinalizer()J
.end method

.method private static native nativeGetPixel(JII)I
.end method

.method private static native nativeGetPixels(J[IIIIIII)V
.end method

.method private static native nativeHasAlpha(J)Z
.end method

.method private static native nativeHasMipMap(J)Z
.end method

.method private static native nativeIsPremultiplied(J)Z
.end method

.method private static native nativeIsSRGB(J)Z
.end method

.method private static native nativePrepareToDraw(J)V
.end method

.method private static native nativeReconfigure(JIIIZ)V
.end method

.method private static native nativeRecycle(J)Z
.end method

.method private static native nativeRowBytes(J)I
.end method

.method private static native nativeSameAs(JJ)Z
.end method

.method private static native nativeSetHasAlpha(JZZ)V
.end method

.method private static native nativeSetHasMipMap(JZ)V
.end method

.method private static native nativeSetPixel(JIII)V
.end method

.method private static native nativeSetPixels(J[IIIIIII)V
.end method

.method private static native nativeSetPremultiplied(JZ)V
.end method

.method private static native nativeWriteToParcel(JZILandroid/os/Parcel;)Z
.end method

.method private noteHardwareBitmapSlowCall()V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "Warning: attempt to read pixels from hardware bitmap, which is very slow operation"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static scaleFromDensity(III)I
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return p0

    :cond_1
    if-eq p1, p2, :cond_0

    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int/2addr v0, p1

    return v0
.end method

.method public static setDefaultDensity(I)V
    .locals 0

    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 10

    const-wide/16 v8, 0x2000

    const-string/jumbo v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, "Compression of a bitmap is slow"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    const-string/jumbo v0, "Bitmap.compress"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v3, 0x1000

    new-array v5, v3, [B

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    move-result v6

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return v6
.end method

.method public compress(Landroid/graphics/Bitmap$SemCompressFormat;ILjava/io/OutputStream;)Z
    .locals 10

    const-wide/16 v8, 0x2000

    const-string/jumbo v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, "Bitmap.ExtendedCompress"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v6, 0x1

    sget-object v0, Landroid/graphics/Bitmap$SemCompressFormat;->Astc:Landroid/graphics/Bitmap$SemCompressFormat;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-nez v0, :cond_3

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p1, Landroid/graphics/Bitmap$SemCompressFormat;->nativeInt:I

    const/16 v3, 0x1000

    new-array v5, v3, [B

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    move-result v6

    :cond_3
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return v6
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 4

    const-string/jumbo v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Hardware bitmaps are always immutable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v2, v3, v1, p2}, Landroid/graphics/Bitmap;->nativeCopy(JIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_2
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 12

    const-string/jumbo v7, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v7}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    const-string/jumbo v7, "unable to copyPixelsFromBuffer, Config#HARDWARE bitmaps are immutable"

    invoke-direct {p0, v7}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    :goto_0
    int-to-long v8, v4

    shl-long v2, v8, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v0, v7

    cmp-long v7, v2, v0

    if-gez v7, :cond_3

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    iget-wide v8, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    int-to-long v8, v5

    shr-long v10, v0, v6

    add-long/2addr v8, v10

    long-to-int v5, v8

    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 12

    const-string/jumbo v7, "unable to copyPixelsToBuffer, pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v7}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    :goto_0
    int-to-long v8, v2

    shl-long v0, v8, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v4, v7

    cmp-long v7, v0, v4

    if-gez v7, :cond_3

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    iget-wide v8, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    int-to-long v8, v3

    shr-long v10, v4, v6

    add-long/2addr v8, v10

    long-to-int v3, v8

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public createAshmemBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const-string/jumbo v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->nativeCopyAshmem(J)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object v0
.end method

.method public createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    const-string/jumbo v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object v0
.end method

.method public createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeCreateGraphicBufferHandle(J)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 2

    const-string/jumbo v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 6

    const-string/jumbo v1, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    :goto_0
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v4, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v4, v5, v2, v3, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to extractAlpha on Bitmap"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    return-object v0
.end method

.method public final getAllocationByteCount()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getAllocationByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetAllocationByteCount(J)I

    move-result v0

    return v0
.end method

.method public final getByteCount()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getColorSpace()Landroid/graphics/ColorSpace;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    sget-object v4, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    return-object v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/graphics/Bitmap;->nativeIsSRGB(J)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v4

    :cond_2
    const/16 v4, 0x9

    new-array v0, v4, [F

    move-object/from16 v20, v0

    const/4 v4, 0x7

    new-array v0, v4, [F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v4, v5, v0, v1}, Landroid/graphics/Bitmap;->nativeGetColorSpace(J[F[F)Z

    move-result v18

    if-eqz v18, :cond_1

    new-instance v3, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const/4 v4, 0x0

    aget v4, v19, v4

    float-to-double v4, v4

    const/4 v6, 0x1

    aget v6, v19, v6

    float-to-double v6, v6

    const/4 v8, 0x2

    aget v8, v19, v8

    float-to-double v8, v8

    const/4 v10, 0x3

    aget v10, v19, v10

    float-to-double v10, v10

    const/4 v12, 0x4

    aget v12, v19, v12

    float-to-double v12, v12

    const/4 v14, 0x5

    aget v14, v19, v14

    float-to-double v14, v14

    const/16 v16, 0x6

    aget v16, v19, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-direct/range {v3 .. v17}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/graphics/ColorSpace;->match([FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v5, "Unknown"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0, v3}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getConfig() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeConfig(J)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getDensity() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getGenerationId() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGenerationId(J)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getHeight() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    return v0
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    return-wide v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    return-object v0
.end method

.method public getOpticalInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    iget-object v0, v0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getPixel(II)I
    .locals 2

    const-string/jumbo v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    const-string/jumbo v0, "unable to getPixel(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .locals 9

    const-string/jumbo v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    const-string/jumbo v0, "unable to getPixels(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeGetPixels(J[IIIIIII)V

    return-void
.end method

.method public final getRowBytes()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getRowBytes() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRowBytes(J)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getWidth() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    return v0
.end method

.method public final hasAlpha()Z
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called hasAlpha() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasAlpha(J)Z

    move-result v0

    return v0
.end method

.method public final hasMipMap()Z
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called hasMipMap() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasMipMap(J)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isPremultiplied()Z
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called isPremultiplied() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsPremultiplied(J)Z

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method public prepareToDraw()V
    .locals 2

    const-string/jumbo v0, "Can\'t prepareToDraw on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativePrepareToDraw(J)V

    return-void
.end method

.method public reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .locals 6

    const-string/jumbo v0, "Can\'t call reconfigure() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "only mutable bitmaps may be reconfigured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v4, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    iget-boolean v5, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->nativeReconfigure(JIIIZ)V

    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public recycle()V
    .locals 4

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRecycle(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    :cond_1
    return-void
.end method

.method reinit(IIZ)V
    .locals 1

    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 4

    const-string/jumbo v0, "Can\'t call sameAs on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-direct {p1}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t compare to a recycled bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSameAs(JJ)Z

    move-result v0

    return v0
.end method

.method public semCompress(Landroid/graphics/Bitmap$SemCompressFormat;ILjava/io/OutputStream;)Z
    .locals 6

    const-string/jumbo v3, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v3}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-nez p3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    if-ltz p2, :cond_1

    const/16 v3, 0x64

    if-le p2, v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "quality must be 0..100"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string/jumbo v3, "Bitmap.ExtendedCompress"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    :try_start_0
    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :array_0
    .array-data 1
        0x13t
        -0x55t
        -0x5ft
        0x5ct
        -0x5et
        -0x5et
        -0x5et
    .end array-data
.end method

.method public semIsGLCompressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public setDensity(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 3

    const-string/jumbo v0, "setHasAlpha called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(JZZ)V

    return-void
.end method

.method public final setHasMipMap(Z)V
    .locals 2

    const-string/jumbo v0, "setHasMipMap called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(JZ)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-void
.end method

.method public setPixel(III)V
    .locals 2

    const-string/jumbo v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(JIII)V

    return-void
.end method

.method public setPixels([IIIIIII)V
    .locals 9

    const-string/jumbo v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-eqz p6, :cond_1

    if-nez p7, :cond_2

    :cond_1
    return-void

    :cond_2
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeSetPixels(J[IIIIIII)V

    return-void
.end method

.method public final setPremultiplied(Z)V
    .locals 2

    const-string/jumbo v0, "setPremultiplied called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetPremultiplied(JZ)V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string/jumbo v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(JZILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
