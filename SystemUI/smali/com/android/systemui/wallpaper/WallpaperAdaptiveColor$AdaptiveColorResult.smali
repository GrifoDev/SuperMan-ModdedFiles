.class public Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
.super Ljava/lang/Object;
.source "WallpaperAdaptiveColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdaptiveColorResult"
.end annotation


# instance fields
.field public color_bg_main:I

.field public color_bg_secondary:I

.field public color_bottom_area:I

.field public color_main:I

.field public color_secondary:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorByName(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    const-string/jumbo v1, "main"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "second"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "bottom"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bottom_area:I

    goto :goto_0
.end method

.method public getMedianColor()I
    .locals 5

    iget v3, p0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    iget v3, p0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    iget v3, p0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method
