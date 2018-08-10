.class public Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;
.super Ljava/lang/Object;
.source "WallpaperAdaptiveColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "WallpaperAdaptiveColor"

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InvertAdaptiveHsvColor([F[F)[[F
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "InvertAdaptiveHsvColor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    new-array v0, v1, [[F

    invoke-static {p0, v3}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {p1, v3}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p0, v4}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, v4}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p1, v5}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    aget-object v1, v0, v6

    aget-object v2, v0, v3

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    aget-object v1, v0, v4

    aget-object v2, v0, v5

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    return-object v0
.end method

.method private static adaptiveHsvColor([F[F)[[F
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "adaptiveHsvColor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    new-array v0, v1, [[F

    invoke-static {p0, v3}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {p1, v3}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p0, v4}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, v4}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p1, v5}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    aget-object v1, v0, v6

    aget-object v2, v0, v3

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    aget-object v1, v0, v4

    aget-object v2, v0, v5

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    return-object v0
.end method

.method private static colorTuning([FI)[F
    .locals 7

    const/4 v6, 0x2

    const v5, 0x3c23d70a    # 0.01f

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v2, v0, v4

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lt v1, v4, :cond_5

    if-ne p1, v4, :cond_2

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    :cond_0
    rem-int/lit8 v2, v1, 0xa

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    mul-float/2addr v2, v5

    aput v2, v0, v4

    :cond_1
    :goto_0
    const v2, 0x3f7ae148    # 0.98f

    aput v2, v0, v6

    return-object v0

    :cond_2
    if-ne p1, v6, :cond_4

    const/16 v2, 0x13

    if-le v1, v2, :cond_3

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    :cond_3
    rem-int/lit8 v2, v1, 0xa

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    mul-float/2addr v2, v5

    aput v2, v0, v4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    rem-int/lit8 v2, v1, 0xa

    int-to-float v2, v2

    mul-float/2addr v2, v5

    aput v2, v0, v4

    goto :goto_0

    :cond_5
    if-nez v1, :cond_1

    const/4 v2, 0x0

    aput v2, v0, v4

    goto :goto_0
.end method

.method private static colorTuningHue([F[F)V
    .locals 7

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    aget v3, p0, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    aget v3, p1, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    if-le v1, v2, :cond_2

    const/16 v3, 0x154

    if-lt v1, v3, :cond_1

    aget v3, p1, v5

    sub-float/2addr v3, v6

    aput v3, p1, v5

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget v3, p0, v5

    add-float/2addr v3, v6

    aput v3, p0, v5

    goto :goto_0

    :cond_2
    aget v3, p1, v5

    const/high16 v4, 0x43aa0000    # 340.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    aget v3, p0, v5

    sub-float/2addr v3, v6

    aput v3, p0, v5

    goto :goto_0

    :cond_3
    aget v3, p1, v5

    add-float/2addr v3, v6

    aput v3, p1, v5

    goto :goto_0
.end method

.method private static colorTuningInvert([FI)[F
    .locals 9

    const/high16 v8, 0x42c80000    # 100.0f

    const v7, 0x3e8a3d71    # 0.27f

    const v6, 0x3c23d70a    # 0.01f

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    aget v3, v1, v4

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-lt v2, v4, :cond_6

    add-int/lit8 v2, v2, 0x28

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v4

    :goto_0
    aget v3, v1, v5

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ne p1, v4, :cond_3

    add-int/lit8 v0, v0, -0x28

    :cond_0
    :goto_1
    const/16 v3, 0x1b

    if-ge v0, v3, :cond_5

    aput v7, v1, v5

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    int-to-float v3, v2

    mul-float/2addr v3, v6

    aput v3, v1, v4

    goto :goto_0

    :cond_3
    if-ne p1, v5, :cond_4

    add-int/lit8 v0, v0, -0xa

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    const/16 v0, 0x1b

    goto :goto_1

    :cond_5
    int-to-float v3, v0

    mul-float/2addr v3, v6

    aput v3, v1, v5

    goto :goto_2

    :cond_6
    if-nez v2, :cond_1

    const/4 v3, 0x0

    aput v3, v1, v4

    aput v7, v1, v5

    goto :goto_2
.end method

.method public static getAdaptiveColorFromBitmap(Landroid/graphics/Bitmap;I)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/wallpaper/Kmeans;->makeClusterGroup_preset1(I)[I

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/systemui/wallpaper/Kmeans;->kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    move-result-object v2

    aget-object v5, v2, v6

    iget-object v5, v5, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;->hsv_color:[F

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    aget-object v5, v2, v7

    iget-object v5, v5, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;->hsv_color:[F

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->InvertAdaptiveHsvColor([F[F)[[F

    move-result-object v1

    :goto_0
    aget-object v5, v1, v6

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    aget-object v5, v1, v7

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    const/4 v5, 0x4

    aget-object v5, v1, v5

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bottom_area:I

    return-object v0

    :cond_0
    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->adaptiveHsvColor([F[F)[[F

    move-result-object v1

    goto :goto_0
.end method
