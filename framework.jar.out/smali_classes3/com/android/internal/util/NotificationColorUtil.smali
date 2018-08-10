.class public Lcom/android/internal/util/NotificationColorUtil;
.super Ljava/lang/Object;
.source "NotificationColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final OPACITY_TARGET_NOTI_BACKGROUND:I = 0x1

.field public static final OPACITY_TARGET_NOTI_NORMAL:I = 0x0

.field public static final OPACITY_TARGET_NOTI_SELECTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NotificationColorUtil"

.field private static sInstance:Lcom/android/internal/util/NotificationColorUtil;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mGrayscaleBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGrayscaleIconMaxSize:I

.field private final mImageUtils:Lcom/android/internal/util/ImageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/ImageUtils;

    invoke-direct {v0}, Lcom/android/internal/util/ImageUtils;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    return-void
.end method

.method public static calculateContrast(II)D
    .locals 2

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateLuminance(I)D
    .locals 2

    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static changeColorLightness(II)I
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    aget-wide v2, v6, v7

    int-to-double v4, p1

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    aput-wide v0, v6, v7

    aget-wide v0, v6, v7

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static compositeColors(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    move-result v0

    return v0
.end method

.method private static contrastChange(III)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "from %.2f:1 to %.2f:1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ensureLargeTextContrast(II)I
    .locals 3

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method public static ensureTextBackgroundColor(III)I
    .locals 3

    const/4 v2, 0x0

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p0, p2, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result p0

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method private static ensureTextContrast(II)I
    .locals 4

    const/4 v0, 0x1

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method public static ensureTextContrastOnBlack(I)I
    .locals 4

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    const/high16 v2, -0x1000000

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    return v0
.end method

.method public static findAlphaToMeetContrast(IID)I
    .locals 12

    move v3, p0

    move v2, p1

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p2

    if-ltz v10, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    move v7, v9

    const/16 v5, 0xff

    const/4 v6, 0x0

    :goto_0
    const/16 v10, 0xf

    if-ge v6, v10, :cond_2

    sub-int v10, v5, v7

    if-lez v10, :cond_2

    add-int v10, v7, v5

    div-int/lit8 v0, v10, 0x2

    invoke-static {v0, v8, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p2

    if-lez v10, :cond_1

    move v5, v0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v7, v0

    goto :goto_1

    :cond_2
    invoke-static {v5, v8, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    return v10
.end method

.method public static findContrastColor(IIZD)I
    .locals 21

    if-eqz p2, :cond_0

    move/from16 v15, p0

    :goto_0
    if-eqz p2, :cond_1

    move/from16 v14, p1

    :goto_1
    invoke-static {v15, v14}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p3

    if-ltz v10, :cond_2

    return p0

    :cond_0
    move/from16 v15, p1

    goto :goto_0

    :cond_1
    move/from16 v14, p0

    goto :goto_1

    :cond_2
    const/4 v10, 0x3

    new-array v0, v10, [D

    move-object/from16 v19, v0

    if-eqz p2, :cond_3

    move v10, v15

    :goto_2
    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    aget-wide v16, v19, v10

    const/4 v10, 0x1

    aget-wide v4, v19, v10

    const/4 v10, 0x2

    aget-wide v6, v19, v10

    const/16 v18, 0x0

    :goto_3
    const/16 v10, 0xf

    move/from16 v0, v18

    if-ge v0, v10, :cond_6

    sub-double v10, v16, v8

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_6

    add-double v10, v8, v16

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v2, v10, v12

    if-eqz p2, :cond_4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v15

    :goto_4
    invoke-static {v15, v14}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p3

    if-lez v10, :cond_5

    move-wide v8, v2

    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_3
    move v10, v14

    goto :goto_2

    :cond_4
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v14

    goto :goto_4

    :cond_5
    move-wide/from16 v16, v2

    goto :goto_5

    :cond_6
    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v10

    return v10
.end method

.method public static findContrastColorAgainstDark(IIZD)I
    .locals 13

    if-eqz p2, :cond_0

    move v1, p0

    :goto_0
    if-eqz p2, :cond_1

    move v0, p1

    :goto_1
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v8

    cmpl-double v7, v8, p3

    if-ltz v7, :cond_2

    return p0

    :cond_0
    move v1, p1

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_1

    :cond_2
    const/4 v7, 0x3

    new-array v3, v7, [F

    if-eqz p2, :cond_3

    move v7, v1

    :goto_2
    invoke-static {v7, v3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToHSL(I[F)V

    const/4 v7, 0x2

    aget v6, v3, v7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    :goto_3
    const/16 v7, 0xf

    if-ge v4, v7, :cond_6

    sub-float v7, v2, v6

    float-to-double v8, v7

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v7, v8, v10

    if-lez v7, :cond_6

    add-float v7, v6, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    const/4 v7, 0x2

    aput v5, v3, v7

    if-eqz p2, :cond_4

    invoke-static {v3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v1

    :goto_4
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v8

    cmpl-double v7, v8, p3

    if-lez v7, :cond_5

    move v2, v5

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move v7, v0

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v0

    goto :goto_4

    :cond_5
    move v6, v5

    goto :goto_5

    :cond_6
    if-eqz p2, :cond_7

    :goto_6
    return v1

    :cond_7
    move v1, v0

    goto :goto_6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;
    .locals 2

    sget-object v1, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/NotificationColorUtil;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NotificationColorUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    :cond_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getOpacityOnKeyguard(FIZ)F
    .locals 4

    const v2, 0x3f555326    # 0.8333f

    const/4 v3, 0x0

    cmpl-float v1, p0, v3

    if-nez v1, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    packed-switch p1, :pswitch_data_0

    move v0, p0

    :cond_1
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1

    :pswitch_0
    move v0, p0

    goto :goto_0

    :pswitch_1
    const/high16 v1, 0x3f900000    # 1.125f

    mul-float/2addr v1, p0

    const v2, 0x3bcccccd    # 0.00625f

    sub-float v0, v1, v2

    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v1, p0

    const v2, 0x3e59999a    # 0.2125f

    add-float v0, v1, v2

    goto :goto_0

    :cond_2
    packed-switch p1, :pswitch_data_1

    move v0, p0

    goto :goto_0

    :pswitch_3
    mul-float v1, v2, p0

    const v2, 0x3e8ccccd    # 0.275f

    add-float v0, v1, v2

    goto :goto_0

    :pswitch_4
    mul-float v1, v2, p0

    const v2, 0x3ccccccd    # 0.025f

    add-float v0, v1, v2

    goto :goto_0

    :pswitch_5
    const/high16 v1, 0x3f600000    # 0.875f

    mul-float/2addr v1, p0

    const v2, 0x3f1b3333

    add-float v0, v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getShiftedColor(II)I
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    aget-wide v0, v6, v7

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    aget-wide v2, v6, v7

    int-to-double v4, p1

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    aput-wide v0, v6, v7

    :goto_0
    aget-wide v0, v6, v7

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    return v0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    aget-wide v2, v6, v7

    int-to-double v4, p1

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    aput-wide v0, v6, v7

    goto :goto_0
.end method

.method public static isColorLight(I)Z
    .locals 4

    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processColor(I)I
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .locals 10

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v8

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_2

    aget v0, v8, v9

    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v6, :cond_0

    array-length v0, v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    :cond_0
    aget v0, v8, v9

    invoke-direct {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    move-result v0

    aput v0, v8, v9

    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v5

    invoke-direct {v4, v5, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0

    :cond_3
    return-object p1
.end method

.method public static resolveActionBarColor(Landroid/content/Context;I)I
    .locals 1

    if-nez p1, :cond_0

    const v0, 0x10600f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/internal/util/NotificationColorUtil;->getShiftedColor(II)I

    move-result v0

    return v0
.end method

.method public static resolveAmbientColor(Landroid/content/Context;I)I
    .locals 2

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    move v0, v1

    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrastOnBlack(I)I

    move-result v0

    return v0
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 1

    if-nez p1, :cond_0

    const v0, 0x10600f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    :cond_0
    return p1
.end method

.method public static resolveContrastColor(Landroid/content/Context;II)I
    .locals 4

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x10600f1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    move v1, v2

    invoke-static {v2, v0}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(II)I

    move-result v1

    invoke-static {v1, p2}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrast(II)I

    move-result v1

    return v1
.end method

.method public static resolvePrimaryColor(Landroid/content/Context;I)I
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->shouldUseDark(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x10600f9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    :cond_0
    const v1, 0x10600f8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static resolveSecondaryColor(Landroid/content/Context;I)I
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->shouldUseDark(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x10600fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    :cond_0
    const v1, 0x10600fb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static satisfiesTextContrast(II)Z
    .locals 4

    invoke-static {p1, p0}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldInvertTextColor(FZ)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private static shouldUseDark(I)Z
    .locals 6

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13

    const/4 v8, 0x0

    instance-of v9, p1, Landroid/text/Spanned;

    if-eqz v9, :cond_5

    move-object v7, p1

    check-cast v7, Landroid/text/Spanned;

    invoke-interface {v7}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Ljava/lang/Object;

    invoke-interface {v7, v8, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {v7}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v10, v6

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_4

    aget-object v5, v6, v9

    move-object v4, v5

    instance-of v8, v5, Landroid/text/style/CharacterStyle;

    if-eqz v8, :cond_0

    move-object v8, v5

    check-cast v8, Landroid/text/style/CharacterStyle;

    invoke-virtual {v8}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v4

    :cond_0
    instance-of v8, v4, Landroid/text/style/TextAppearanceSpan;

    if-eqz v8, :cond_2

    move-object v8, v5

    check-cast v8, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p0, v8}, Lcom/android/internal/util/NotificationColorUtil;->processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v3

    if-eq v3, v4, :cond_1

    move-object v4, v3

    :goto_1
    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v0, v4, v8, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    :cond_1
    move-object v4, v5

    goto :goto_1

    :cond_2
    instance-of v8, v4, Landroid/text/style/ForegroundColorSpan;

    if-eqz v8, :cond_3

    move-object v2, v4

    check-cast v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v1}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    move-result v8

    invoke-direct {v4, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_1

    :cond_3
    move-object v4, v5

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    return-object p1
.end method

.method public isGrayscaleIcon(Landroid/content/Context;I)Z
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NotificationColorUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Drawable not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    return v4
.end method

.method public isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isGrayscaleIcon(Landroid/graphics/Bitmap;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-gt v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    return v3

    :cond_1
    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v5

    if-ne v3, v5, :cond_2

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :cond_2
    monitor-exit v4

    iget-object v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(Landroid/graphics/Bitmap;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    monitor-exit v4

    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v4

    return v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 7

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    instance-of v6, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v6, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v4}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v5

    :cond_1
    return v5

    :cond_2
    instance-of v6, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_4

    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    :cond_3
    return v5

    :cond_4
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_6

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v5

    :cond_5
    return v5

    :cond_6
    instance-of v6, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v6, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    :cond_7
    return v5

    :cond_8
    instance-of v6, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v6, :cond_9

    const/4 v5, 0x1

    return v5

    :cond_9
    return v5
.end method
