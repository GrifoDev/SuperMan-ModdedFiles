.class public Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardVideoWallpaper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;,
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;,
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;,
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-wallpaper-KeyguardVideoWallpaper$ScreenStateSwitchesValues:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

.field private mLastBottom:I

.field private mLastRight:I

.field protected mStatusBarHeight:I

.field private mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSurfaceTransformHandler:Landroid/os/Handler;

.field private mTextureView:Landroid/view/TextureView;

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mVideoFilePath:Ljava/lang/String;

.field private mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/video/VideoPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    return-object v0
.end method

.method private static synthetic -getcom-android-systemui-wallpaper-KeyguardVideoWallpaper$ScreenStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->-com-android-systemui-wallpaper-KeyguardVideoWallpaper$ScreenStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->-com-android-systemui-wallpaper-KeyguardVideoWallpaper$ScreenStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->values()[Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->BLACK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->-com-android-systemui-wallpaper-KeyguardVideoWallpaper$ScreenStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTransformHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/-$Lambda$uSqOZHoRc09lGnmrLOZa1dTblco;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/-$Lambda$uSqOZHoRc09lGnmrLOZa1dTblco;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "video_1.mp4"

    invoke-static {v1, p3, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mStatusBarHeight:I

    new-instance v1, Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardVideoWallpaper"

    const-string/jumbo v2, "Showing state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    :cond_0
    return-void
.end method

.method private drawVideo(Z)V
    .locals 3

    const-string/jumbo v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "drawVideo() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    goto :goto_0
.end method

.method private loadMediaPlayer()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->initFile(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 2

    const-string/jumbo v0, "KeyguardVideoWallpaper"

    const-string/jumbo v1, "releaseVideoPlayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    return-void
.end method

.method private setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V
    .locals 3

    const-string/jumbo v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenState() c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", n = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->-getcom-android-systemui-wallpaper-KeyguardVideoWallpaper$ScreenStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->cancelReleaseResource()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->releaseMediaPlayer()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method synthetic lambda$-com_android_systemui_wallpaper_KeyguardVideoWallpaper_2221(FFFFII)V
    .locals 5

    const-string/jumbo v2, "KeyguardVideoWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setScaleSurface() sx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", sy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", px = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", py = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p5, v1, Landroid/os/Message;->arg1:I

    iput p6, v1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTransformHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCommand() action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WAKE_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ACTION_UNLOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "SLEEP_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->BLACK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, -0x1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mStatusBarHeight:I

    if-eq v0, p5, :cond_2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastRight:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastBottom:I

    if-eq v0, p5, :cond_2

    :cond_0
    const-string/jumbo v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout called ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mStatusBarHeight:I

    if-ne v0, v1, :cond_1

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastRight:I

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastBottom:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0, p4, p5}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceInfo(II)V

    iput p4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastRight:I

    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastBottom:I

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getVideoFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getVideoPackage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "KeyguardVideoWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update new video wallpaper! path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "video_1.mp4"

    invoke-static {v2, v0, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method
