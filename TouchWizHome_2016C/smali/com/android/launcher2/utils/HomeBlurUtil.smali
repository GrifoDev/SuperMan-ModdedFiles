.class public Lcom/android/launcher2/utils/HomeBlurUtil;
.super Ljava/lang/Object;
.source "HomeBlurUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/launcher2/utils/HomeBlurUtil;


# instance fields
.field private final BLUR_RADIUS:I

.field private final MAX_PREVIEW_SIZE:I

.field private mAnimDuration:I

.field private mAnimated:Z

.field private mBaseItem:Lcom/android/launcher2/BaseItem;

.field private mBlur:Z

.field private mBlurView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFolderMarginTop:I

.field private mGetBlurImageTask:Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;

.field private mHideBlurViewAnim:Landroid/animation/ObjectAnimator;

.field private mHideTargetViewAnim:Landroid/animation/ObjectAnimator;

.field private mIsAppsItem:Z

.field private mIsFolderItem:Z

.field private mIsHomeItem:Z

.field private mNonBlurRect:Landroid/graphics/Rect;

.field private mOnDrawForBlur:Z

.field private mOnTransientBlur:Z

.field private mResources:Landroid/content/res/Resources;

.field private mShowBlurViewAnim:Landroid/animation/ObjectAnimator;

.field private mShowTargetViewAnim:Landroid/animation/ObjectAnimator;

.field private mStatusBarHeight:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/utils/HomeBlurUtil;->DEBUG:Z

    const-string v0, "HomeBlurUtil"

    sput-object v0, Lcom/android/launcher2/utils/HomeBlurUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->MAX_PREVIEW_SIZE:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->BLUR_RADIUS:I

    iput-boolean v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlur:Z

    iput-boolean v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mOnDrawForBlur:Z

    iput-boolean v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mOnTransientBlur:Z

    iput-boolean v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimated:Z

    iput v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimDuration:I

    iput-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mShowBlurViewAnim:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mHideBlurViewAnim:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mShowTargetViewAnim:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mHideTargetViewAnim:Landroid/animation/ObjectAnimator;

    iput-boolean v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsHomeItem:Z

    iput-boolean v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsAppsItem:Z

    iput-boolean v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsFolderItem:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/utils/HomeBlurUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mOnTransientBlur:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/utils/HomeBlurUtil;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mFolderMarginTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/utils/HomeBlurUtil;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsAppsItem:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/utils/HomeBlurUtil;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/utils/HomeBlurUtil;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsHomeItem:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/utils/HomeBlurUtil;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimated:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/utils/HomeBlurUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimated:Z

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/utils/HomeBlurUtil;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/utils/HomeBlurUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/launcher2/utils/HomeBlurUtil;
    .locals 1

    sget-object v0, Lcom/android/launcher2/utils/HomeBlurUtil;->mInstance:Lcom/android/launcher2/utils/HomeBlurUtil;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/utils/HomeBlurUtil;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/utils/HomeBlurUtil;->blur(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/utils/HomeBlurUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/utils/HomeBlurUtil;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mNonBlurRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/utils/HomeBlurUtil;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsFolderItem:Z

    return v0
.end method

.method private blur(Z)Z
    .locals 6

    const/16 v5, 0x800

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/utils/HomeBlurUtil;->updateBlurImage()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimated:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mHideBlurViewAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mHideBlurViewAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mHideTargetViewAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mShowBlurViewAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimated:Z

    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mShowBlurViewAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mShowBlurViewAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mHideBlurViewAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mShowTargetViewAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_8
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsFolderItem:Z

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1
.end method

.method private getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/high16 v6, 0x44000000    # 512.0f

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    const/4 v6, 0x0

    invoke-direct {p0, p1, v4, v6}, Lcom/android/launcher2/utils/HomeBlurUtil;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v6, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mContext:Landroid/content/Context;

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

    const/high16 v6, 0x41000000    # 8.0f

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

.method public static getInstance()Lcom/android/launcher2/utils/HomeBlurUtil;
    .locals 1

    sget-object v0, Lcom/android/launcher2/utils/HomeBlurUtil;->mInstance:Lcom/android/launcher2/utils/HomeBlurUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/utils/HomeBlurUtil;

    invoke-direct {v0}, Lcom/android/launcher2/utils/HomeBlurUtil;-><init>()V

    sput-object v0, Lcom/android/launcher2/utils/HomeBlurUtil;->mInstance:Lcom/android/launcher2/utils/HomeBlurUtil;

    :cond_0
    sget-object v0, Lcom/android/launcher2/utils/HomeBlurUtil;->mInstance:Lcom/android/launcher2/utils/HomeBlurUtil;

    return-object v0
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
    invoke-direct {p0, p1}, Lcom/android/launcher2/utils/HomeBlurUtil;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

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

.method private static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/android/launcher2/utils/HomeBlurUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HomeBlurUtil.saveBitmap: ex_storage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p0, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_4
    throw v7

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_3

    :catch_6
    move-exception v1

    move-object v4, v5

    goto :goto_2

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_1
.end method

.method private setAnimators()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mShowBlurViewAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mHideBlurViewAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mShowTargetViewAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mHideTargetViewAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimDuration:I

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mShowBlurViewAnim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mHideBlurViewAnim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mShowTargetViewAnim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mHideTargetViewAnim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

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

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setTargetView()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsHomeItem:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsFolderItem:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsAppsItem:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsFolderItem:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsAppsItem:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsFolderItem:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsHomeItem:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsFolderItem:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public blur(ZZLandroid/graphics/Rect;Lcom/android/launcher2/BaseItem;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimated:Z

    iput-object p3, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mNonBlurRect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBaseItem:Lcom/android/launcher2/BaseItem;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBaseItem:Lcom/android/launcher2/BaseItem;

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBaseItem:Lcom/android/launcher2/BaseItem;

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_4

    :cond_0
    iput-boolean v3, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsHomeItem:Z

    iput-boolean v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsAppsItem:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBaseItem:Lcom/android/launcher2/BaseItem;

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBaseItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsFolderItem:Z

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/utils/HomeBlurUtil;->setTargetView()V

    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimated:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/utils/HomeBlurUtil;->setAnimators()V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/utils/HomeBlurUtil;->blur(Z)Z

    move-result v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBaseItem:Lcom/android/launcher2/BaseItem;

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_5

    iget-object v0, p4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    :cond_5
    iput-boolean v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsHomeItem:Z

    iput-boolean v3, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mIsAppsItem:Z

    goto :goto_0
.end method

.method public doTransientBlur(Landroid/graphics/Rect;Lcom/android/launcher2/BaseItem;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mOnTransientBlur:Z

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/launcher2/utils/HomeBlurUtil;->blur(ZZLandroid/graphics/Rect;Lcom/android/launcher2/BaseItem;)Z

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mShowBlurViewAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher2/utils/HomeBlurUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/utils/HomeBlurUtil$1;-><init>(Lcom/android/launcher2/utils/HomeBlurUtil;Landroid/graphics/Rect;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getBlurView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    return-object v0
.end method

.method protected getPreview()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mOnDrawForBlur:Z

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iput-boolean v5, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mOnDrawForBlur:Z

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/android/launcher2/utils/HomeBlurUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to buildDrawingCache() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v5, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mOnDrawForBlur:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    iput-boolean v5, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mOnDrawForBlur:Z

    throw v2
.end method

.method public init(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0902c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mStatusBarHeight:I

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0901f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mFolderMarginTop:I

    return-void
.end method

.method public isOnDrawForBlur()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mOnDrawForBlur:Z

    return v0
.end method

.method public refresh()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0902c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mStatusBarHeight:I

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0901f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mFolderMarginTop:I

    return-void
.end method

.method public updateBlurImage()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher2/utils/HomeBlurUtil;->TAG:Ljava/lang/String;

    const-string v2, "Home blur is null! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBoosterWihtoutTimer()V

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mGetBlurImageTask:Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mGetBlurImageTask:Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;

    invoke-virtual {v1}, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    :cond_2
    new-instance v1, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;

    invoke-direct {v1, p0}, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;-><init>(Lcom/android/launcher2/utils/HomeBlurUtil;)V

    iput-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mGetBlurImageTask:Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;

    iget-object v1, p0, Lcom/android/launcher2/utils/HomeBlurUtil;->mGetBlurImageTask:Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    goto :goto_0
.end method
