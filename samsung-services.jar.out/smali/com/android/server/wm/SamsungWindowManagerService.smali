.class public Lcom/android/server/wm/SamsungWindowManagerService;
.super Ljava/lang/Object;
.source "SamsungWindowManagerService.java"

# interfaces
.implements Lcom/android/server/wm/IWindowManagerServiceBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SamsungWindowManagerService$1;,
        Lcom/android/server/wm/SamsungWindowManagerService$H;,
        Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG_HANDLER:Z = false

.field private static final MAX_APPTOKEN_WINDOWS:I = 0x28

.field private static final PACKAGE_NAME_GOOGLE_PACKAGE_INSTALLER:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static final PACKAGE_NAME_GOOGLE_PACKAGE_INSTALLER_CHN:Ljava/lang/String; = "com.samsung.android.packageinstaller"

.field static final SLOW_DISPATCH_THRESHOLD_MS:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"


# instance fields
.field private final SCREENSHOT_MDM_URI:Landroid/net/Uri;

.field mAspectRatioCtr:Lcom/android/server/wm/AspectRatioController;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBackgroundAnimationNeeded:Z

.field private mBounds:Landroid/graphics/Rect;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mClipBoardWindow:Lcom/android/server/wm/WindowState;

.field mContext:Landroid/content/Context;

.field private mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentUserId:I

.field private mFocusedDisplayId:I

.field private final mForceLocalOrientationWindow:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field final mH:Lcom/android/server/wm/SamsungWindowManagerService$H;

.field private mLastChangedDisplayDensityWm:Ljava/lang/String;

.field private mLastChangedDisplaySize:Ljava/lang/String;

.field private mLastChangedDisplaySizeWm:Ljava/lang/String;

.field private mLastFocus:Lcom/android/server/wm/WindowState;

.field mMaxLayer:I

.field mMinLayer:I

.field mNaviBarHidePolicyCtr:Lcom/android/server/wm/NaviBarHidePolicyController;

.field private mOrientationCompleted:Z

.field private mOrientationLock:Ljava/lang/Object;

.field private mSamsungActivityManagerService:Lcom/android/server/am/SamsungActivityManagerService;

.field private mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

.field mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mSettingsObserver:Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;

.field private mTmpLayer:I

.field private mVSMode:Z

.field private mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/SamsungWindowManagerService;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->SCREENSHOT_MDM_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/SamsungWindowManagerService;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->setCoverConfiguration(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/SamsungWindowManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->notifyCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wm/SamsungWindowManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->updateScreenCaptureMDMPolicy(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/wm/SamsungWindowManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SamsungWindowManagerService$H;-><init>(Lcom/android/server/wm/SamsungWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mH:Lcom/android/server/wm/SamsungWindowManagerService$H;

    iput v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mTmpLayer:I

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentUserId:I

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3/isScreenCaptureEnabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->SCREENSHOT_MDM_URI:Landroid/net/Uri;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBackgroundAnimationNeeded:Z

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mClipBoardWindow:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    new-instance v0, Lcom/android/server/wm/SamsungWindowManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SamsungWindowManagerService$1;-><init>(Lcom/android/server/wm/SamsungWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$2;

    invoke-direct {v0}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$2;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mForceLocalOrientationWindow:Ljava/util/function/Predicate;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mMinLayer:I

    iput v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mMaxLayer:I

    iput v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/NaviBarHidePolicyController;

    invoke-direct {v0}, Lcom/android/server/wm/NaviBarHidePolicyController;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mNaviBarHidePolicyCtr:Lcom/android/server/wm/NaviBarHidePolicyController;

    return-void
.end method

.method private checkSizeDensity(III)Z
    .locals 12

    const/16 v3, 0x140

    if-ge p1, p2, :cond_1

    move v4, p1

    :goto_0
    const/4 v2, 0x0

    int-to-double v6, v4

    int-to-double v8, p3

    const-wide/high16 v10, 0x4064000000000000L    # 160.0

    div-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-int v1, v6

    const/16 v5, 0x140

    if-ge v1, v5, :cond_0

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string/jumbo v5, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wrong parameter app = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " density = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " cur_sw = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    move v4, p2

    goto :goto_0
.end method

.method private convertActivityResultToComponentName(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v10

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x1a

    if-gt v8, v9, :cond_2

    :cond_1
    return-object v10

    :cond_2
    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :try_start_0
    array-length v2, v4

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_3

    aget-object v8, v4, v1

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    aget-object v8, v4, v1

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_3
    array-length v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v8, 0x0

    aget-object v5, v4, v8

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object v7

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    const/4 v8, 0x1

    aget-object v0, v4, v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v8, "SamsungWindowManager"

    const-string/jumbo v9, "package and class name\'s parsing error"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v7, 0x0

    goto :goto_2
.end method

.method private initGameManagerService()V
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "gamemanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static final isImeWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    const-string/jumbo v0, "com.sec.android.inputmethod"

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.google.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static final isVrOverlay(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f6

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "com.google.vr.vrcore"

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_13463(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_14857(ILcom/android/server/wm/WindowState;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v0, p0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_25538(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mOrientationChanging of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    :cond_1
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_32516(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mOrientationChanging of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    :cond_1
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_58153([Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_0

    aput-object p1, p0, v2

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method static synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_61276(ILjava/lang/Boolean;Lcom/android/server/wm/WindowState;)V
    .locals 2

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq p0, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_67737(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->isVrOverlay(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_68013(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->isImeWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_68224(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_82760(ZLcom/android/server/wm/WindowState;)V
    .locals 2

    :try_start_0
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p0}, Landroid/view/IWindow;->dispatchCoverStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private notifyCoverStateChanged(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$13;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$13;-><init>(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_5
    throw v5

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private setCoverConfiguration(Z)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v2

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v3, Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->rotationForOrientationLw(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return v0

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v3, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isForceHideBySViewCover()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungWindowManager"

    const-string/jumbo v4, "Force update rotation for SView Cover"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->setLastOrientation(I)V

    goto :goto_0
.end method

.method private shouldBeRedirected(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7cf

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/SamsungWindowManagerService;->isVrOverlay(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    :cond_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d6

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d8

    if-ne v1, v2, :cond_4

    :cond_3
    const-string/jumbo v1, "com.samsung.android.hmt.vrsvc"

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v4

    :cond_4
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v1, :pswitch_data_0

    return v3

    :pswitch_0
    return v4

    :pswitch_data_0
    .packed-switch 0x834
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateForcedDisplaySizeDensity(Lcom/android/server/wm/DisplayContent;)V
    .locals 10

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v6, v2

    int-to-float v7, v4

    div-float v5, v6, v7

    const-string/jumbo v6, "persist.sys.display_density"

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateForcedDisplaySizeDensity screenRatio="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateForcedDisplaySizeDensity ((float)initMaxSize / initMinSize)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-float v8, v3

    int-to-float v9, v4

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateForcedDisplaySizeDensity ((float)curMaxSize / curMinSize)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-float v8, v1

    int-to-float v9, v2

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v6, v3

    int-to-float v7, v4

    div-float/2addr v6, v7

    int-to-float v7, v1

    int-to-float v8, v2

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v6, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->updateTouchableArea(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScreenCaptureMDMPolicy(I)V
    .locals 6

    const/4 v1, 0x1

    const-string/jumbo v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, p1, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isAllowScreenCapture = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->isScreenCaptureDisabledLocked(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->updateCurrentUserPolicy(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private updateSurfaceMatrix(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$11;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$11;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method


# virtual methods
.method public adjustWindowVS(Landroid/view/WindowManager$LayoutParams;I)I
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSMode:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->shouldBeRedirected(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientDisplayId()I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    move p2, v0

    const-string/jumbo v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' redirected to display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d6

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Lcom/android/server/wm/SamsungWindowManagerService;->isImeWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->getIMEDisplayIdVS(I)I

    move-result p2

    :cond_1
    :goto_0
    return p2

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/virtualspace/VSSession;->getDisplayForWindow(I)I

    move-result p2

    goto :goto_0
.end method

.method public applyVSOverride(Lcom/android/server/wm/WindowState;Landroid/util/MergedConfiguration;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p2}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->isImeWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public cancelAppTransition()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->freeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearCocktailPendingBackgroundLocked(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/policy/EdgeWindowPolicy;->getPendingRemoveBackground()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/policy/EdgeWindowPolicy;->getBackgroundWindow()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/policy/EdgeWindowPolicy;->requestCocktailRotationAnimation(Z)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    :cond_2
    return-void
.end method

.method public clearForcedDisplaySizeDensity(I)V
    .locals 15

    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/SecurityException;

    const-string/jumbo v11, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    if-eqz p1, :cond_1

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Can only set the default display"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    const-string/jumbo v10, "SamsungWindowManager"

    const-string/jumbo v11, "clearForcedDisplaySizeDensity"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v9, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v0, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    const-string/jumbo v10, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Init Display size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " density : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "default_display_size_forced"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    const/16 v10, 0x2c

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_2

    const/16 v10, 0x2c

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-ne v10, v5, :cond_2

    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v8, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v10, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Default Forced Display size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    :try_start_3
    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "default_display_density_forced"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-lez v10, :cond_7

    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v10, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Default Forced Display density : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    iget v10, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v10, v9, :cond_3

    iget v10, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v10, v4, :cond_8

    :cond_3
    :goto_2
    iget v10, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v10, v2, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    iget v10, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v10, v2, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    invoke-virtual {v2, v9, v4, v0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    :cond_4
    new-instance v10, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k;

    invoke-direct {v10}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v2, v10, v12}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x1

    iput v12, v10, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v12, 0xb

    invoke-virtual {v10, v12}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v12, 0x7d0

    const/16 v14, 0xb

    invoke-virtual {v10, v14, v12, v13}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "display_size_forced"

    invoke-static {v10, v12, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "display_density_forced"

    const/4 v13, 0x0

    invoke-static {v10, v12, v1, v13}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->updateForcedDisplaySizeDensity(Lcom/android/server/wm/DisplayContent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6
    :try_start_7
    const-string/jumbo v8, ""

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, ""

    goto :goto_1

    :cond_8
    iget v10, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eq v10, v0, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v10

    :try_start_8
    monitor-exit v11

    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v10

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method public createSamsungCustomAnimationLocked(Landroid/graphics/Rect;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 10

    const/4 v9, 0x0

    if-eqz v9, :cond_2

    if-eqz p4, :cond_1

    const/16 v0, 0x3ea

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createSamsungAnimation(Landroid/graphics/Rect;IZZLandroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v1, "WINDOW MANAGER BRIDGE (dumpsys window bridge)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    :cond_0
    const-string/jumbo v1, "  ScreenCaptureDisabled State "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentUserId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentUserId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    const-string/jumbo v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "UserId#"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "  disabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_2

    const-string/jumbo v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "UserId#"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "  Allowed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "  Last Changed Display Size : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string/jumbo v1, "  Last Changed WmDisplay Size : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "  Last Changed WmDisplay Density : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method public ensureFocusedDisplay(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SamsungWindowManagerService;->setFocusedDisplay(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public existSamsungAnimationDisabledPackage(Landroid/util/ArraySet;Landroid/util/ArraySet;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v5

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "existSamsungAnimationDisabledPackage, openingApp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_7

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "existSamsungAnimationDisabledPackage, closingApp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_7
    return v5
.end method

.method public findForceLocalOrientationWindowLayer(Lcom/android/server/wm/DisplayContent;)I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mForceLocalOrientationWindow:Ljava/util/function/Predicate;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->getLayer()I

    move-result v1

    return v1

    :cond_3
    return v2
.end method

.method public findWallpaperLocked()Lcom/android/server/wm/WindowState;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v1, v4, [Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$3;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    aget-object v2, v1, v3

    return-object v2
.end method

.method public flushTransactions()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransactionSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public focusChanged(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    :cond_0
    iput-object p2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public freezeDisplay(IJ)V
    .locals 6

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZIILcom/android/server/wm/DisplayContent;)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, p2, p3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getActivityManagerServiceBridge()Lcom/android/server/am/IActivityManagerServiceBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungActivityManagerService:Lcom/android/server/am/SamsungActivityManagerService;

    return-object v0
.end method

.method public getClipBoardWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mClipBoardWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getCoverStateSwitch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getCoverStateSwitch()Z

    move-result v0

    return v0
.end method

.method public getCurrentAspectRatio()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getCurrentAspectRatio()F

    move-result v0

    return v0
.end method

.method public getCustomMaxAspectRatio(Ljava/lang/String;F)F
    .locals 0

    return p2
.end method

.method public getDefaultMaxAspectRatio()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getDefaultMaxAspectRatio()F

    move-result v0

    return v0
.end method

.method public getFocusedDisplayContentLocked()Lcom/android/server/wm/DisplayContent;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSMode:Z

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getFocusedTaskId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getFocusedWindowInfoForScreenShot(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mMinLayer:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mMaxLayer:I

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$10;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$10;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mMinLayer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mMaxLayer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getFreezeSurfaceLayer(Landroid/view/Display;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mTmpLayer:I

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$4;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    iget v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mTmpLayer:I

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getIMEDisplayIdVS(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getIMEDisplayId(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getInitialDisplayProperties(I)[I
    .locals 5

    const/4 v2, 0x3

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    const/4 v4, 0x0

    aput v2, v1, v4

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    const/4 v4, 0x2

    aput v2, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getNaviBarHidePolicy(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mNaviBarHidePolicyCtr:Lcom/android/server/wm/NaviBarHidePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/NaviBarHidePolicyController;->getNaviBarHidePolicy(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method public getPenState()I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, -0x1

    const/16 v4, -0x100

    const/16 v5, 0x13

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    return v7

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungWindowManager"

    const-string/jumbo v3, "getPenState(). Can\'t get PenState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public getScreenCaptureMDMPolicy(I)Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getScreenCaptureMDMPolicy userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " screenCaptureAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public getUserDisplayDensity()I
    .locals 7

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "default_display_density_forced"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v2

    :cond_0
    :try_start_2
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v3

    :cond_1
    monitor-exit v4

    const/4 v3, -0x1

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getUserDisplaySize(Landroid/graphics/Point;)V
    .locals 8

    const/4 v6, -0x1

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "default_display_size_forced"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-void

    :catch_0
    move-exception v1

    :cond_0
    :try_start_2
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v4, p1, Landroid/graphics/Point;->x:I

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v4, p1, Landroid/graphics/Point;->y:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-void

    :cond_1
    monitor-exit v5

    iput v6, p1, Landroid/graphics/Point;->y:I

    iput v6, p1, Landroid/graphics/Point;->x:I

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getVSFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSMode:Z

    if-nez v3, :cond_0

    return-object v5

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientDisplayId()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x834

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowManagerService;->getFocusedDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    return-object v5
.end method

.method public getVSPriority(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getPriority(I)I

    move-result v0

    return v0
.end method

.method public getVisibleWindowInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/DisplayContent;->getVisibleWindowInfo(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hideChangeRatioButton()V
    .locals 0

    return-void
.end method

.method public inVSMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSMode:Z

    return v0
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mNaviBarHidePolicyCtr:Lcom/android/server/wm/NaviBarHidePolicyController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/NaviBarHidePolicyController;->init(Lcom/android/server/wm/SamsungWindowManagerService;)V

    new-instance v1, Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;-><init>(Lcom/android/server/wm/SamsungWindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSettingsObserver:Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "LowEnd"

    invoke-static {v1}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->create(Ljava/lang/String;)Lcom/android/server/wm/animation/SamsungAnimationCreator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/Looper;->setSlowDispatchThresholdMs(J)V

    :cond_1
    return-void
.end method

.method public isBackgroundAnimationNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBackgroundAnimationNeeded:Z

    return v0
.end method

.method public isDesktopModeChanging()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopModeForPreparing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopModeLoadingScreenShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isGamePackage(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/SamsungWindowManagerService;->initGameManagerService()V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v3, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_0
    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method isLCDDetached()Z
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v0, "/sys/class/lcd/panel/window_type"

    const-string/jumbo v3, "/sys/class/lcd/panel/window_type"

    invoke-direct {p0, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LCD resultId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ff ff ff"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isMaxAspectComponent(Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mAspectRatioCtr:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AspectRatioController;->isMaxAspectComponent(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isMaxAspectComponentEx(Landroid/content/ComponentName;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMaxAspectPackage(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMaxAspectPackageEx(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNaviBarHidePolicy(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mNaviBarHidePolicyCtr:Lcom/android/server/wm/NaviBarHidePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/NaviBarHidePolicyController;->isNaviBarHidePolicy(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isNavigationBarHidable(Ljava/lang/String;I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getNavigationBarHideSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mNaviBarHidePolicyCtr:Lcom/android/server/wm/NaviBarHidePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/NaviBarHidePolicyController;->getNaviBarHidePolicy(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isScreenCaptureDisabledLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v1, -0x1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentUserId:I

    if-eq v2, v4, :cond_1

    iget v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentUserId:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->isScreenCaptureDisabledLocked(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->getScreenCaptureMDMPolicy(I)Z

    move-result v2

    :goto_1
    return v2

    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->getUserId()I

    move-result v1

    :cond_2
    if-ne v1, v4, :cond_0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_0

    :cond_3
    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isVSVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungActivityManagerService:Lcom/android/server/am/SamsungActivityManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungActivityManagerService:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/SamsungActivityManagerService;->isVSVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_12960(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v0

    const/16 v1, 0x967

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mTmpLayer:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_14354(Lcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SamsungWindowManagerService;->updateFixedOrientationWindowInTransactionLocked(Lcom/android/server/wm/WindowStateAnimator;)V

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/SamsungWindowManagerService;->updateSurfaceMatrix(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_51535(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTaskId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowManagerService;->getFocusedTaskId()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v1

    iget v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mMinLayer:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mMinLayer:I

    :cond_0
    iget v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mMaxLayer:I

    if-le v1, v3, :cond_1

    iput v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mMaxLayer:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$-com_android_server_wm_SamsungWindowManagerService_75675(Lcom/android/server/wm/WindowState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7df

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x8e1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public launchHomeForDesktopMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->launchHomeForDesktopMode()V

    return-void
.end method

.method public makeTransitionSurfaceVS()Landroid/view/SurfaceControl;
    .locals 7

    const/4 v3, 0x1

    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string/jumbo v2, "VSTransitionSurface"

    const/4 v5, -0x1

    const/4 v6, 0x4

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public migrateWindows(IIZZ)V
    .locals 5

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v2, "SamsungWindowManager"

    const-string/jumbo v4, "migrateWindows(): null display content!"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_2
    if-eqz p3, :cond_3

    :try_start_1
    new-instance v2, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$6;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$6;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_3
    if-eqz p4, :cond_4

    new-instance v2, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$7;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$7;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    new-instance v2, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$5;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$5;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public notifyAppOrientationUpdated(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->onAppOrientationUpdated(II)V

    :cond_0
    return-void
.end method

.method public notifyDisplayBoundsUpdated(ILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->onDisplayBoundsUpdated(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public notifyOrientationChangeComplete()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationCompleted:Z

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyUpdatedDisplayTopTask(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->onTopTaskUpdated(II)V

    :cond_0
    return-void
.end method

.method public onLockTaskModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->onLockTaskModeChanged(I)V

    return-void
.end method

.method public onShowVirtualKeyboardVS(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->onShowVirtualKeyboard(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public overridePendingAppTransitionCustomScaleDown(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->updateAppTransitionStartValues(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionCustomScaleDown(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public overridePendingAppTransitionCustomScaleUp(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->updateAppTransitionStartValues(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionCustomScaleUp(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public overridePidDisplay(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal;->overridePidDisplay(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public performLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public prepareAddWindowLw(Lcom/android/server/wm/WindowState;)I
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareAddWindowLw - exceeded windows limit 40 < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x5

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepareDesktopTaskBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->prepareDesktopTaskBar(Z)V

    return-void
.end method

.method public readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 8

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowManagerService;->isLCDDetached()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SamsungWindowManager"

    const-string/jumbo v5, "LCD detached.. skip to set high performance concept"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v4, "HIGH"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEF_PERFORMANCE_MODE"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SamsungWindowManager"

    const-string/jumbo v5, "didn\'t set high performance mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :cond_1
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    const-string/jumbo v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readForcedDisplayPropertiesLocked init size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " base size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " baseScreenRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "display_density_forced"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readForcedDisplayPropertiesLocked density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "persist.sys.display_density"

    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-double v6, v5

    mul-double/2addr v6, v2

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_0

    :cond_2
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_0
.end method

.method public restoreSizeDensityIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 14

    const/16 v13, 0x2c

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iget-object v9, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "display_size_forced"

    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const-string/jumbo v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "restoreSizeDensityIfNeeded sizeStr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-ne v9, v6, :cond_0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v7, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :cond_0
    iget-object v9, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "display_density_forced"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "restoreSizeDensityIfNeeded densityStr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    return-void

    :catch_0
    move-exception v4

    return-void

    :cond_1
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-double v10, v9

    iget v9, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v12, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-double v12, v9

    div-double v0, v10, v12

    iget v9, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-double v10, v9

    mul-double/2addr v10, v0

    double-to-int v2, v10

    iput v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    const-string/jumbo v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "density is null, currentRatio = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " density = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public saveAllMaxAspectPackages()V
    .locals 0

    return-void
.end method

.method public setActivityManagerServiceBridge(Lcom/android/server/am/SamsungActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungActivityManagerService:Lcom/android/server/am/SamsungActivityManagerService;

    return-void
.end method

.method public setAnimationFrom(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->setAnimationFrom(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAnimationFromLauncher(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->setAnimationFromLauncher(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAppEnterExitAnimationForWallpaperLocked(Lcom/android/server/wm/WindowState;Landroid/util/ArraySet;Landroid/util/ArraySet;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v11, 0x0

    const/16 v1, 0xc

    move/from16 v0, p4

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createSamsungAnimation(Landroid/graphics/Rect;IZZLandroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Landroid/view/animation/Animation;

    move-result-object v11

    :goto_1
    if-eqz v11, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    return-void

    :cond_7
    const/4 v11, 0x0

    goto :goto_1

    :cond_8
    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v14

    :goto_2
    if-ge v13, v14, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v16

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-eqz v16, :cond_9

    if-nez v15, :cond_a

    :cond_9
    return-void

    :cond_a
    iget-object v1, v15, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_9

    iget-object v1, v15, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v1, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_d
    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArraySet;->size()I

    move-result v14

    :goto_3
    if-ge v13, v14, :cond_14

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v16

    if-eqz v16, :cond_e

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->skipWallpaperAnimation(Z)V

    :cond_f
    return-void

    :cond_10
    const/4 v1, 0x1

    if-ne v14, v1, :cond_11

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_11
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createSamsungAnimation(Landroid/graphics/Rect;IZZLandroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Landroid/view/animation/Animation;

    move-result-object v11

    goto/16 :goto_1

    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public setBackgroundAnimationNeeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBackgroundAnimationNeeded:Z

    return-void
.end method

.method public setClipBoardWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mClipBoardWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    goto :goto_0
.end method

.method public setDesktopTaskBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->setDesktopTaskBar(Z)V

    return-void
.end method

.method public setDisplayRotation(IIZ)V
    .locals 5

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p2, v0, Lcom/android/server/wm/DisplayContent;->mProposedRotation:I

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationCompleted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v1

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v1

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v1

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public setDisplaySizeDensity()V
    .locals 14

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    const/4 v10, 0x0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    const-string/jumbo v7, "WQHD,FHD,HD"

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowManagerService;->isLCDDetached()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string/jumbo v7, "SamsungWindowManager"

    const-string/jumbo v8, "skip to set setting value"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "display_size_forced"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "display_density_forced"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_4

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    :cond_2
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v7, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "SamsungWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDisplaySizeDensity size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " baseDensityStr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "display_size_forced"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "display_density_forced"

    invoke-static {v7, v8, v0, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string/jumbo v7, "HIGH"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEF_PERFORMANCE_MODE"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "SamsungWindowManager"

    const-string/jumbo v8, "set vzw requirement"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-double v8, v8

    mul-double/2addr v8, v12

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v12

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v7, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-double v8, v7

    mul-double/2addr v8, v12

    double-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "default_display_size_forced"

    invoke-static {v7, v8, v1, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "default_display_density_forced"

    invoke-static {v7, v8, v0, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_4
    return-void

    :cond_5
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_0
.end method

.method public setFocusedApp(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->convertActivityResultToComponentName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->updateTopActivity(Landroid/content/ComponentName;)V

    return-void
.end method

.method public setFocusedDisplay(IZ)Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSMode:Z

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_2

    move v2, p1

    :goto_0
    iput v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v3

    return v1

    :cond_2
    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public setForcedDisplaySizeDensity(IIIIZZ)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_0

    new-instance v15, Ljava/lang/SecurityException;

    const-string/jumbo v16, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct/range {v15 .. v16}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->checkSizeDensity(III)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_1
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "input illegalArgument"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_2
    const-string/jumbo v15, "SamsungWindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setForcedDisplaySizeDensity w="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " h="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " density="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " default="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "activity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v6, 0xc8

    const/16 v5, 0xc8

    const/4 v4, 0x2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    if-eqz v10, :cond_4

    const/16 v15, 0xc8

    move/from16 v0, p2

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget v0, v10, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v15, 0xc8

    move/from16 v0, p3

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget v0, v10, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget v14, v10, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    const/4 v15, 0x0

    iget v15, v10, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v15, v10, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    iget v15, v10, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v15, v10, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    new-instance v15, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$1;

    invoke-direct {v15}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$1;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v15, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v15, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v18, 0x7d0

    const/16 v17, 0xb

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15, v10}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    if-eqz p6, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "display_size_forced"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "display_density_forced"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    if-eqz p5, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "default_display_size_forced"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "default_display_density_forced"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/wm/SamsungWindowManagerService;->updateForcedDisplaySizeDensity(Lcom/android/server/wm/DisplayContent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_5
    :try_start_3
    iget v15, v10, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    iget v0, v10, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    iget v15, v10, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    iget v0, v10, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "default_display_density_forced"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v15

    if-lez v15, :cond_3

    const/4 v8, 0x0

    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v15, "SamsungWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "previous default density : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz v8, :cond_3

    int-to-float v15, v8

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v17, v17, v18

    mul-float v15, v15, v17

    float-to-int v8, v15

    :try_start_5
    const-string/jumbo v15, "SamsungWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "current default density : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "default_display_density_forced"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    :try_start_6
    monitor-exit v16

    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v15

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15

    :cond_6
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SamsungWindowManagerService;->isDesktopModeChanging()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v15, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v15}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->updateDeskTopUiMode()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method public setInMouseStylusMode(Z)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mInMouseStylusMode:Z

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowManagerService;->mInMouseStylusMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setInTouchMode(Z)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setMaxAspectPackage(Ljava/lang/String;IZZZ)V
    .locals 0

    return-void
.end method

.method public setMaxAspectPackages(Ljava/util/List;[IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[IZ)V"
        }
    .end annotation

    return-void
.end method

.method public setNaviBarHidePolicy(Ljava/lang/String;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mNaviBarHidePolicyCtr:Lcom/android/server/wm/NaviBarHidePolicyController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/NaviBarHidePolicyController;->setNaviBarHidetPolicy(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setOverrideDisplaySize(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerInternal;->setOverrideDisplaySize(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setVSSession(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSMode:Z

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWmForcedDisplay(II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_display_size_forced"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_display_density_forced"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public shouldShowTransitionDim(Landroid/view/WindowManager$LayoutParams;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return v3

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_3

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    return v3

    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    return v3

    :cond_3
    if-eqz p1, :cond_4

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v1, :cond_4

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_4
    return v3
.end method

.method public showChangeRatioButton(IILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public stopFreezingDisplayLocked(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->clearCocktailPendingBackgroundLocked(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "display_rotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public swapLogicalDisplays(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal;->swapLogicalDisplays(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unfreezeDisplay()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateBaseDisplayMetrics(IIII)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateBoundsVS(Lcom/android/server/wm/DisplayContent;II)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    new-instance v0, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$8;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$8;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, p2, p3}, Landroid/graphics/Rect;->intersect(IIII)Z

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->notifyDisplayBoundsUpdated(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mH:Lcom/android/server/wm/SamsungWindowManagerService$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SamsungWindowManagerService$H;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mH:Lcom/android/server/wm/SamsungWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SamsungWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateCurrentUserPolicy(I)V
    .locals 5

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    iput p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->isScreenCaptureDisabledLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->getScreenCaptureMDMPolicy(I)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$12;

    invoke-direct {v3, p1, v0}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$12;-><init>(ILjava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateDimBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DimLayer$DimLayerUser;Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->needFullScreenDimBounds()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayContent;->getAppDisplayRect(Landroid/graphics/Rect;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-ne p2, v1, :cond_1

    invoke-interface {p2}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayContent;->getAppDisplayRect(Landroid/graphics/Rect;)V

    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public updateFixedOrientationFrameIfNeeded(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/view/IWindowStateBridge;->needReverseFrame(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/view/IWindowStateBridge;->reverseFrame(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateFixedOrientationWindowInTransactionLocked(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 27

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v16, v2, 0xc

    if-eqz v16, :cond_9

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isSnapTargetFullscreen()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v22, v0

    if-eqz v8, :cond_a

    iget-boolean v2, v8, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    if-eqz v2, :cond_a

    iget-object v10, v8, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    :goto_0
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    iget v2, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ge v2, v3, :cond_b

    const/16 v17, 0x1

    :goto_1
    iget v0, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v21, v0

    iget v0, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v20, v0

    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v0, v2, :cond_e

    if-eqz v17, :cond_c

    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v2, :cond_1

    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    :cond_1
    const/4 v12, 0x1

    :cond_2
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_3
    :goto_3
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    invoke-static {v2, v12}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v13

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int v24, v2, v3

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int v25, v2, v3

    packed-switch v13, :pswitch_data_0

    :goto_4
    if-eqz v22, :cond_4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_5
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_6

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v23

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v23

    :cond_7
    if-eqz v23, :cond_8

    invoke-virtual/range {v23 .. v23}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    move-object/from16 v0, v23

    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, v23

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_8
    const/16 v2, 0x9

    new-array v0, v2, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    aget v3, v18, v2

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v4

    aput v3, v18, v2

    const/4 v2, 0x4

    aget v3, v18, v2

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v4

    aput v3, v18, v2

    const/4 v2, 0x3

    aget v3, v18, v2

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v4

    aput v3, v18, v2

    const/4 v2, 0x1

    aget v3, v18, v2

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v4

    aput v3, v18, v2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v3, 0x2

    aget v3, v18, v3

    const/4 v4, 0x5

    aget v4, v18, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v3, 0x0

    aget v3, v18, v3

    const/4 v4, 0x3

    aget v4, v18, v4

    const/4 v5, 0x1

    aget v5, v18, v5

    const/4 v6, 0x4

    aget v6, v18, v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    :cond_9
    return-void

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_c
    if-nez v17, :cond_2

    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d

    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_d
    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_e
    const/16 v2, 0x8

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    if-eqz v17, :cond_11

    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_f

    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    :cond_f
    const/4 v12, 0x1

    :cond_10
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_3

    :cond_11
    if-nez v17, :cond_10

    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v2, :cond_12

    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    :cond_12
    const/4 v12, 0x1

    goto :goto_5

    :pswitch_0
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v3, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_4

    :pswitch_1
    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    sub-int v2, v9, v25

    int-to-float v2, v2

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_4

    :pswitch_2
    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    sub-int v2, v11, v24

    int-to-float v2, v2

    sub-int v3, v9, v25

    int-to-float v3, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_4

    :pswitch_3
    const/high16 v2, 0x43870000    # 270.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    move/from16 v0, v25

    int-to-float v2, v0

    sub-int v3, v11, v24

    int-to-float v3, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateSurfacesInTransactionLocked()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$9;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$9;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public waitOrientationComplete(IJ)Z
    .locals 4

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationLock:Ljava/lang/Object;

    invoke-virtual {v1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mOrientationCompleted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
