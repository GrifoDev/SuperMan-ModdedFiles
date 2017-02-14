.class public Lcom/android/launcher2/HomeRealPreview;
.super Ljava/lang/Object;
.source "HomeRealPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeRealPreview$CompressTask;
    }
.end annotation


# static fields
.field public static final SCREENSHOT_DELAY_FIRST_SHOT:I = 0xbb8

.field public static final SCREENSHOT_DELAY_NONE:I = 0x0

.field public static final SCREENSHOT_DELAY_NORMAL:I = 0x3e8

.field private static final SCREENSHOT_MIN_SIZE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "capture"


# instance fields
.field private mCaptureTime:J

.field private mCompressTask:Lcom/android/launcher2/HomeRealPreview$CompressTask;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mMainHomeScreenshot:Z

.field private mMainHomeScreenshotLand:Z

.field mRootView:Landroid/view/View;

.field private mScreenShotDelay:I

.field private mainHomeBitmap:Landroid/graphics/Bitmap;

.field private mainHomeBitmapLand:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/HomeView;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/HomeRealPreview;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-object v2, p0, Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmapLand:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshot:Z

    iput-boolean v0, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshotLand:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/HomeRealPreview;->mCaptureTime:J

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/launcher2/HomeRealPreview;->mScreenShotDelay:I

    iput-object v2, p0, Lcom/android/launcher2/HomeRealPreview;->mRootView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher2/HomeRealPreview;->mHomeView:Lcom/android/launcher2/HomeView;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeRealPreview;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeRealPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshotLand:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/HomeRealPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshotLand:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeRealPreview;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/HomeRealPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeRealPreview;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmapLand:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/HomeRealPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmapLand:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/HomeRealPreview;)Lcom/android/launcher2/HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeRealPreview;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/HomeRealPreview;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher2/HomeRealPreview;->mCaptureTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/HomeRealPreview;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher2/HomeRealPreview;->mCaptureTime:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/launcher2/HomeRealPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshot:Z

    return p1
.end method

.method private cancelCompressTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeRealPreview;->mCompressTask:Lcom/android/launcher2/HomeRealPreview$CompressTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeRealPreview;->mCompressTask:Lcom/android/launcher2/HomeRealPreview$CompressTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeRealPreview$CompressTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeRealPreview;->mCompressTask:Lcom/android/launcher2/HomeRealPreview$CompressTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public captureMainHomeScreen()V
    .locals 6

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeRealPreview;->getCurrentOrientation()I

    move-result v0

    const-string v1, "capture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMainHomeScreenshot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMainHomeScreenshotLand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshotLand:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshot:Z

    if-eqz v1, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshotLand:Z

    if-eqz v1, :cond_2

    if-ne v0, v4, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeRealPreview;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher2/HomeRealPreview$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/HomeRealPreview$1;-><init>(Lcom/android/launcher2/HomeRealPreview;)V

    iget v3, p0, Lcom/android/launcher2/HomeRealPreview;->mScreenShotDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public captureMainHomeScreen(Z)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v5, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    const-string v7, "capture"

    const-string v8, "captureMainHomeScreen"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/HomeRealPreview;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->canCapture()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeRealPreview;->getMainHomeScreenshot()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeRealPreview;->getCurrentOrientation()I

    move-result v1

    iget-boolean v7, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshotLand:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x2

    if-ne v1, v7, :cond_5

    move v3, v5

    :goto_1
    const-string v7, "capture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "captureMainHomeScreen land : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v12, p0, Lcom/android/launcher2/HomeRealPreview;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeRealPreview;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/HomeRealPreview;->mCaptureTime:J

    iput-object v4, p0, Lcom/android/launcher2/HomeRealPreview;->mRootView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v7, :cond_8

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v8, v7

    cmpg-double v7, v8, v10

    if-ltz v7, :cond_4

    :cond_3
    if-nez v3, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v8, v7

    cmpl-double v7, v8, v10

    if-lez v7, :cond_6

    :cond_4
    const-string v5, "capture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "captureMainHomeScreen: change orientation so can\'t capture: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move v3, v6

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_7

    iput-object v0, p0, Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmapLand:Landroid/graphics/Bitmap;

    :goto_2
    const-string v7, "capture"

    const-string v8, "captureMainHomeScreen scale : "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/HomeRealPreview;->cancelCompressTask()V

    new-instance v7, Lcom/android/launcher2/HomeRealPreview$CompressTask;

    invoke-direct {v7, p0, v12}, Lcom/android/launcher2/HomeRealPreview$CompressTask;-><init>(Lcom/android/launcher2/HomeRealPreview;Lcom/android/launcher2/HomeRealPreview$1;)V

    iput-object v7, p0, Lcom/android/launcher2/HomeRealPreview;->mCompressTask:Lcom/android/launcher2/HomeRealPreview$CompressTask;

    iget-object v7, p0, Lcom/android/launcher2/HomeRealPreview;->mCompressTask:Lcom/android/launcher2/HomeRealPreview$CompressTask;

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v7, v6}, Lcom/android/launcher2/HomeRealPreview$CompressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v6, v5

    goto/16 :goto_0

    :cond_7
    iput-object v0, p0, Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_8
    const-string v5, "capture"

    const-string v7, "MainHome Capture image size error!!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public checkFileExist()Z
    .locals 9

    const/16 v8, 0xbb8

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/homescreenPreview.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/homescreenPreviewLand.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "capture"

    const-string v6, "---------checkFileExist "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshot:Z

    iput v8, p0, Lcom/android/launcher2/HomeRealPreview;->mScreenShotDelay:I

    const/4 v4, 0x0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "capture"

    const-string v6, "---------checkFileExist land"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshotLand:Z

    iput v8, p0, Lcom/android/launcher2/HomeRealPreview;->mScreenShotDelay:I

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const-string v0, "capture"

    const-string v1, "----destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/HomeRealPreview;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getCaptureBitmap()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v7, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/HomeRealPreview;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    instance-of v6, v4, Lcom/android/launcher2/CellLayout;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/CellLayout;

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    :cond_3
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    const-string v6, "capture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCaptureBitmap getWidth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getHeight : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v1}, Lcom/android/launcher2/HomeView;->draw(Landroid/graphics/Canvas;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher2/HomeRealPreview;->mCaptureTime:J

    goto/16 :goto_0
.end method

.method public getCurrentOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeRealPreview;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getMainHomeScreenshot()Z
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeRealPreview;->getCurrentOrientation()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshot:Z

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshotLand:Z

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMainHomeScreenshot(I)V
    .locals 1

    add-int/lit16 v0, p1, 0x96

    iput v0, p0, Lcom/android/launcher2/HomeRealPreview;->mScreenShotDelay:I

    return-void
.end method

.method public setMainHomeScreenshot(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshot:Z

    iput-boolean v0, p0, Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshotLand:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/launcher2/HomeRealPreview;->mScreenShotDelay:I

    return-void
.end method
