.class public Lcom/android/launcher2/utils/BackgroundBlurUtil;
.super Ljava/lang/Object;
.source "BackgroundBlurUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x1f4

.field private static final BLUR_RADIUS:I = 0xa

.field private static DEBUG:Z = false

.field private static final MAX_PREVIEW_SIZE:I = 0x400

.field private static final MINMUM_BLUR_DURATION:I = 0x14

.field private static TAG:Ljava/lang/String; = null

.field private static final WALLPAPAER_RESIZE_WIDTH:I = 0x400

.field private static mInstance:Lcom/android/launcher2/utils/BackgroundBlurUtil;


# instance fields
.field private mAnimatorHide:Landroid/animation/ObjectAnimator;

.field private mAnimatorShow:Landroid/animation/ObjectAnimator;

.field private mBlur:Z

.field private mContext:Landroid/content/Context;

.field private mGetWallpaperImageTask:Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;

.field private mWallpaperBlurView:Landroid/view/View;

.field off:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->DEBUG:Z

    const-string v0, "BackgroundBlurUtil"

    sput-object v0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorShow:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorHide:Landroid/animation/ObjectAnimator;

    iput-boolean v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mBlur:Z

    iput-boolean v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->off:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/utils/BackgroundBlurUtil;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/utils/BackgroundBlurUtil;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/utils/BackgroundBlurUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/utils/BackgroundBlurUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/high16 v6, 0x43000000    # 128.0f

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    const/4 v6, 0x0

    invoke-direct {p0, p1, v4, v6}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v6, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v7, 0x1

    invoke-static {v3, v0, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v5, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v5, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    goto :goto_0
.end method

.method private getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;
    .locals 2

    sget-object v0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mInstance:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/launcher2/utils/BackgroundBlurUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mInstance:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/utils/BackgroundBlurUtil;

    invoke-direct {v0}, Lcom/android/launcher2/utils/BackgroundBlurUtil;-><init>()V

    sput-object v0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mInstance:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mInstance:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->makeBackgroundBmp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    sget-object v4, Lcom/android/launcher2/utils/BackgroundBlurUtil;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/launcher2/utils/WallpaperUtils;->releaseWallpaperDrawable(Ljava/lang/String;)Z

    return-object v2

    :cond_1
    sget-object v4, Lcom/android/launcher2/utils/BackgroundBlurUtil;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/launcher2/utils/WallpaperUtils;->getWallpaperDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private makeBackgroundBmp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 23

    if-nez p1, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    if-lez v8, :cond_1

    if-gtz v19, :cond_2

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/high16 v20, 0x44800000    # 1024.0f

    move/from16 v0, v19

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v12, v20, v21

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v12

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    mul-float v21, v21, v12

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v20 .. v22}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v19

    const/high16 v20, 0x44000000    # 512.0f

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    if-nez v20, :cond_4

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v15, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v15

    move/from16 v21, v0

    div-float v16, v20, v21

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v9, v20, v21

    cmpg-float v20, v16, v9

    if-gtz v20, :cond_7

    int-to-float v0, v15

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v17, v20, v21

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v14, v0

    sub-int v20, v19, v14

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v10

    if-gez v10, :cond_5

    const/4 v10, 0x0

    :cond_5
    move/from16 v0, v19

    if-ge v0, v14, :cond_6

    move/from16 v14, v19

    :cond_6
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v10, v0, v14, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_7
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v17, v20, v21

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v13, v0

    sub-int v20, v8, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v11

    if-gez v11, :cond_8

    const/4 v11, 0x0

    :cond_8
    if-ge v8, v13, :cond_9

    move v13, v8

    :cond_9
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v4, v0, v11, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1
.end method

.method private resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p1, v3

    goto :goto_0
.end method


# virtual methods
.method public blur(Z)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->off:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportBackgroundBlur()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurByWindowManager(Z)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public blurAnimation(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->off:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportBackgroundBlur()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurByWindowManager(Z)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorHide:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorHide:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorShow:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorShow:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorShow:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorHide:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public blurAnimation(ZI)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->off:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurByWindowManager(ZI)V

    goto :goto_0
.end method

.method public blurByWindowManager(Z)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurByWindowManager(ZI)V

    return-void
.end method

.method public blurByWindowManager(ZI)V
    .locals 8

    const/16 v4, 0x40

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportBackgroundBlurByWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v5, 0x40

    iget-boolean v5, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mBlur:Z

    if-ne v5, p1, :cond_2

    if-ne v3, v0, :cond_2

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/view/WindowManager$LayoutParams;->semSetEnterDimDuration(J)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const v4, 0x3e4ccccd    # 0.2f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/view/WindowManager$LayoutParams;->semSetEnterDimDuration(J)V

    :goto_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iput-boolean p1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mBlur:Z

    goto :goto_1

    :cond_3
    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/view/WindowManager$LayoutParams;->semSetEnterDimDuration(J)V

    const/4 v4, 0x0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher2/utils/BackgroundBlurUtil$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/utils/BackgroundBlurUtil$1;-><init>(Lcom/android/launcher2/utils/BackgroundBlurUtil;)V

    int-to-long v6, p2

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public doTransientBlur(I)V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurByWindowManager(ZI)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/utils/BackgroundBlurUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/utils/BackgroundBlurUtil$2;-><init>(Lcom/android/launcher2/utils/BackgroundBlurUtil;I)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x1f4

    const/4 v3, 0x2

    iput-object p1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorShow:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorShow:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorHide:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mAnimatorHide:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->updateWallpaer()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public isBlurredByWindowsManager()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mBlur:Z

    return v0
.end method

.method public releaseWindowDim(Landroid/view/Window;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportBackgroundBlurByWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->isBlurredByWindowsManager()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public updateWallpaer()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportBackgroundBlur()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;-><init>(Lcom/android/launcher2/utils/BackgroundBlurUtil;Lcom/android/launcher2/utils/BackgroundBlurUtil$1;)V

    iput-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mGetWallpaperImageTask:Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil;->mGetWallpaperImageTask:Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
