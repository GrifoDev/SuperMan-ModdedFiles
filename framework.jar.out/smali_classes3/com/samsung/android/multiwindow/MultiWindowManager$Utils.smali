.class public Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field private static final DEBUG_DENSITY:Z

.field public static PRIME_NUM:I

.field public static UNIT_DP:I

.field public static UNIT_PX:I

.field public static UNIT_SCREEN_RATIO:I

.field public static final sIsTablet:Z

.field public static final sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

.field public static final sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

.field public static final sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v5, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e2e147b    # 0.17f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v5, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v5, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sIsTablet:Z

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->UNIT_DP:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->UNIT_PX:I

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->UNIT_SCREEN_RATIO:I

    const v0, 0x19919

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->PRIME_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToConfigurationOrientation(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static densityBucketToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "DENSITY_LOW"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "DENSITY_MEDIUM"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "DENSITY_HIGH"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "DENSITY_XHIGH"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "DENSITY_XXHIGH"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "DENSITY_XXXHIGH"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
        0x280 -> :sswitch_5
    .end sparse-switch
.end method

.method private static getDensityBucket(I)I
    .locals 5

    const/16 v4, 0x1e0

    const/16 v3, 0x140

    const/16 v2, 0xf0

    const/16 v1, 0xa0

    const/16 v0, 0x78

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    if-gt p0, v1, :cond_1

    return v1

    :cond_1
    if-gt p0, v2, :cond_2

    return v2

    :cond_2
    if-gt p0, v3, :cond_3

    return v3

    :cond_3
    if-gt p0, v4, :cond_4

    return v4

    :cond_4
    const/16 v0, 0x280

    return v0
.end method

.method public static getFreeformDensity(II)I
    .locals 4

    const/4 v2, -0x1

    const/16 v3, 0x258

    if-ge p0, v3, :cond_0

    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sIsTablet:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    mul-int/lit8 v3, p1, 0x4b

    div-int/lit8 v2, v3, 0x64

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->getDensityBucket(I)I

    move-result v0

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->getDensityBucket(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->getMinimumDensityWithinBucket(I)I

    move-result v2

    :cond_0
    return v2
.end method

.method private static getMinimumDensityWithinBucket(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    return p0

    :sswitch_0
    const/16 v0, 0x79

    return v0

    :sswitch_1
    const/16 v0, 0xa1

    return v0

    :sswitch_2
    const/16 v0, 0xf1

    return v0

    :sswitch_3
    const/16 v0, 0x141

    return v0

    :sswitch_4
    const/16 v0, 0x1e1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_2
        0x1e0 -> :sswitch_3
        0x280 -> :sswitch_4
    .end sparse-switch
.end method

.method public static isDexFullscreenLaunchBounds(Landroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isForcePreserveWindowConfigChange(I)Z
    .locals 2

    const/4 v0, 0x0

    const v1, -0x40003d85

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFreeformMaximizing(II)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    if-eq p1, v0, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isMovingToFreeform(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    :goto_0
    move v1, v0

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isSamsungDividerPanelWindow(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8fe -> :sswitch_0
        0x902 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isTablet()Z
    .locals 2

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseResolutionUnit(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string/jumbo v3, "\\D"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "0"

    aput-object v3, v0, v5

    :cond_0
    aget-object v3, v0, v5

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->PRIME_NUM:I

    sget v4, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->UNIT_PX:I

    mul-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x0

    :cond_1
    :goto_0
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    return v3

    :cond_2
    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->PRIME_NUM:I

    sget v4, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->UNIT_SCREEN_RATIO:I

    mul-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "DP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->PRIME_NUM:I

    sget v4, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->UNIT_DP:I

    mul-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x0

    goto :goto_0
.end method
