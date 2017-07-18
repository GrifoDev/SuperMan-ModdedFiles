.class public Lcom/android/launcher2/ThemeLoader;
.super Ljava/lang/Object;
.source "ThemeLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeLoader"

.field private static final THIRD_APP_SCALE_RATE:F = 0.75f

.field private static THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

.field private static mPaint:Landroid/graphics/Paint;

.field private static final mWidgetPreviewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconHeight:I

.field private static sIconWidth:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsUseDefaultTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    sput v1, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    sput v1, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    iput-object p1, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    iput-boolean v5, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    sput v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v2, v3, :cond_0

    const v2, 0x7f0a01c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    sput v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/ThemeLoader;->load3rdpartyIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    invoke-static {v0, v2, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    :cond_1
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v2, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-direct {p0}, Lcom/android/launcher2/ThemeLoader;->initWidgetPreviewMap()V

    return-void
.end method

.method private initWidgetPreviewMap()V
    .locals 3

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.alarmwidget"

    const-string v2, "widget_alarm_preview_01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.dualclockdigital"

    const-string v2, "dual_cn_1_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.digitalclock"

    const-string v2, "single_a_cn_4x1_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.digitalclock2x1"

    const-string v2, "single_a_cn_2x1_12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "home_musicplayer_preview"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.videoplayer"

    const-string v2, "videoplayer_preview"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.analogclocksimple"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.analogclockunique"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private load3rdpartyIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseDefaultTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    return v0
.end method

.method public load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/high16 v7, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public loadAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    sget v4, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    invoke-static {v0, v2, v3, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public loadAppIconBitmapByPackageName(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, p2, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public loadAppsIconBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadWidgetPreviewBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
