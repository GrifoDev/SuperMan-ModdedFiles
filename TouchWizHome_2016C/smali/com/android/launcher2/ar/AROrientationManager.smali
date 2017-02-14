.class public Lcom/android/launcher2/ar/AROrientationManager;
.super Landroid/view/OrientationEventListener;
.source "AROrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;
    }
.end annotation


# static fields
.field private static final CONFIGURATION_WAITING_TIME:I = 0x118

.field private static final ORIENTATION_CHANGE:I = 0x64

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_REVERSE_LANDSCAPE:I = 0x3

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final RELEAE_WAITING_FLAG:I = 0x384

.field private static final SHOW_STATUS_BAR:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field public static final WINDOW_ROTATION_ANIMATION_TYPE:I = 0x2

.field private static mCurrentDeviceOrientation:I

.field private static mInstance:Lcom/android/launcher2/ar/AROrientationManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsWaitingConfigurationChanged:Z

.field private mListner:Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;

.field private mPrevFlags:I

.field private mPrevRotationAnimation:I

.field private mRequestedDeviceOrientation:I

.field private mRotatingDeviceOrientation:I

.field private mhandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher2/ar/AROrientationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ar/AROrientationManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/launcher2/ar/AROrientationManager;->mRotatingDeviceOrientation:I

    iput v1, p0, Lcom/android/launcher2/ar/AROrientationManager;->mRequestedDeviceOrientation:I

    iput v1, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevFlags:I

    iput v1, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevRotationAnimation:I

    new-instance v0, Lcom/android/launcher2/ar/AROrientationManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ar/AROrientationManager$1;-><init>(Lcom/android/launcher2/ar/AROrientationManager;)V

    iput-object v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mhandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/launcher2/ar/AROrientationManager;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/launcher2/ar/AROrientationManager;->mIsWaitingConfigurationChanged:Z

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/ar/AROrientationManager;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mRotatingDeviceOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/ar/AROrientationManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ar/AROrientationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/ar/AROrientationManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mIsWaitingConfigurationChanged:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/ar/AROrientationManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/ar/AROrientationManager;->mIsWaitingConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/ar/AROrientationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/ar/AROrientationManager;->setWindowParamsForRotation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/ar/AROrientationManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/ar/AROrientationManager;)Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mListner:Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/launcher2/ar/AROrientationManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/ar/AROrientationManager;->mRequestedDeviceOrientation:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/launcher2/ar/AROrientationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/ar/AROrientationManager;->restoreWindowParams()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher2/ar/AROrientationManager;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ar/AROrientationManager;->mInstance:Lcom/android/launcher2/ar/AROrientationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/ar/AROrientationManager;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ar/AROrientationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/ar/AROrientationManager;->mInstance:Lcom/android/launcher2/ar/AROrientationManager;

    :cond_0
    sget-object v0, Lcom/android/launcher2/ar/AROrientationManager;->mInstance:Lcom/android/launcher2/ar/AROrientationManager;

    return-object v0
.end method

.method public static getOrientation()I
    .locals 1

    sget v0, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    return v0
.end method

.method private restoreWindowParams()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->isBlurredByWindowsManager()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevFlags:I

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevFlags:I

    and-int/lit16 v3, v3, 0x800

    or-int/2addr v0, v3

    iget v3, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevFlags:I

    and-int/lit8 v3, v3, 0x2

    or-int/2addr v0, v3

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    iput v4, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevFlags:I

    :cond_3
    iget v3, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevRotationAnimation:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevRotationAnimation:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput v4, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevRotationAnimation:I

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public static setOrientation(I)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/android/launcher2/ar/AROrientationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p0, v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setWindowParamsForRotation()V
    .locals 4

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->isBlurredByWindowsManager()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevFlags:I

    if-nez v2, :cond_2

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevFlags:I

    :cond_2
    iget v2, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevRotationAnimation:I

    if-nez v2, :cond_3

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput v2, p0, Lcom/android/launcher2/ar/AROrientationManager;->mPrevRotationAnimation:I

    :cond_3
    const/16 v2, 0x802

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0
.end method


# virtual methods
.method public notifyAnimaEnd()V
    .locals 4

    const/16 v1, 0xc8

    iget-object v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mListner:Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mhandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mListner:Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mListner:Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;

    invoke-interface {v0}, Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/launcher2/ar/AROrientationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged : configOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestedDeviceOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/ar/AROrientationManager;->mRequestedDeviceOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mRequestedDeviceOrientation:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    iget v1, p0, Lcom/android/launcher2/ar/AROrientationManager;->mRequestedDeviceOrientation:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/ar/ARManager;->getInstance()Lcom/android/launcher2/ar/ARManager;

    move-result-object v0

    sget v1, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    iget v2, p0, Lcom/android/launcher2/ar/AROrientationManager;->mRequestedDeviceOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ar/ARManager;->onConfigurationChanged(II)V

    iget v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mRequestedDeviceOrientation:I

    sput v0, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    iput v3, p0, Lcom/android/launcher2/ar/AROrientationManager;->mRequestedDeviceOrientation:I

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/ar/AROrientationManager;->mhandler:Landroid/os/Handler;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/android/launcher2/ar/AROrientationManager;->mIsWaitingConfigurationChanged:Z

    return-void

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 7

    const/16 v6, 0x64

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    sget v2, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    if-eq v2, v3, :cond_2

    sget v2, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    if-ne v2, v4, :cond_7

    :cond_2
    const/16 v0, -0xf

    :goto_1
    rsub-int v2, v0, 0x13b

    if-ge p1, v2, :cond_3

    add-int/lit8 v2, v0, 0x2d

    if-le v2, p1, :cond_8

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_2
    sget v2, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    if-eq v2, v1, :cond_0

    sget v2, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    if-eq v2, v3, :cond_5

    sget v2, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    if-ne v2, v4, :cond_b

    :cond_5
    if-eq v1, v3, :cond_6

    if-ne v1, v4, :cond_b

    :cond_6
    invoke-static {v1}, Lcom/android/launcher2/ar/AROrientationManager;->setOrientation(I)V

    sput v1, Lcom/android/launcher2/ar/AROrientationManager;->mCurrentDeviceOrientation:I

    goto :goto_0

    :cond_7
    const/16 v0, 0xf

    goto :goto_1

    :cond_8
    add-int/lit8 v2, v0, 0x2d

    if-lt p1, v2, :cond_9

    rsub-int v2, v0, 0x87

    if-le v2, p1, :cond_9

    const/4 v1, 0x3

    goto :goto_2

    :cond_9
    rsub-int v2, v0, 0x87

    if-lt p1, v2, :cond_a

    add-int/lit16 v2, v0, 0xe1

    if-le v2, p1, :cond_a

    const/4 v1, 0x1

    goto :goto_2

    :cond_a
    add-int/lit16 v2, v0, 0xe1

    if-lt p1, v2, :cond_4

    rsub-int v2, v0, 0x13b

    if-le v2, p1, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :cond_b
    iput v1, p0, Lcom/android/launcher2/ar/AROrientationManager;->mRotatingDeviceOrientation:I

    invoke-direct {p0}, Lcom/android/launcher2/ar/AROrientationManager;->setWindowParamsForRotation()V

    iget-object v2, p0, Lcom/android/launcher2/ar/AROrientationManager;->mhandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/launcher2/ar/AROrientationManager;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/launcher2/ar/AROrientationManager;->mhandler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setOrientationChangedListener(Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/ar/AROrientationManager;->enable()V

    iput-object p1, p0, Lcom/android/launcher2/ar/AROrientationManager;->mListner:Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;

    return-void
.end method
