.class public Lcom/android/systemui/wallpaper/theme/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static sMetricsHeight:I

.field private static sMetricsWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    return v0
.end method

.method public static setRealMetrics(Landroid/content/Context;III)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v3

    :goto_0
    div-float v3, v2, v1

    float-to-int v3, v3

    sput v3, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    div-float v3, v0, v1

    float-to-int v3, v3

    sput v3, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v3

    goto :goto_0

    :cond_1
    int-to-float v3, p2

    div-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    int-to-float v3, p3

    div-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    goto :goto_1
.end method
