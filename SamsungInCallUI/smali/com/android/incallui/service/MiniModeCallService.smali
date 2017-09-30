.class public Lcom/android/incallui/service/MiniModeCallService;
.super Landroid/app/Service;


# static fields
.field private static final EVENT_LONG_CLICK:I = 0xa

.field private static final EVENT_LONG_CLICK_DELAY:I = 0x1f4

.field protected static final LOG_TAG:Ljava/lang/String; = "MiniModeCallService"


# instance fields
.field protected final MOVE_LIMITATION_VALUE:I

.field protected final MOVE_THRESHOLD:I

.field private PREV_X:I

.field private PREV_Y:I

.field private START_X:F

.field private START_Y:F

.field protected final TOUCH_THRESHOLD:I

.field protected mBlockTouchEvent:Z

.field private final mBtnClickListener:Landroid/view/View$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsOverMoveThreshold:Z

.field private mLastDownEventTime:J

.field private mMiniModeView:Lcom/android/incallui/service/MiniModeView;

.field private mViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mWindow:Landroid/view/Window;

.field protected mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0xc8

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v1, p0, Lcom/android/incallui/service/MiniModeCallService;->TOUCH_THRESHOLD:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/incallui/service/MiniModeCallService;->MOVE_THRESHOLD:I

    iput v1, p0, Lcom/android/incallui/service/MiniModeCallService;->MOVE_LIMITATION_VALUE:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mBlockTouchEvent:Z

    new-instance v0, Lcom/android/incallui/service/MiniModeCallService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/MiniModeCallService$1;-><init>(Lcom/android/incallui/service/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/incallui/service/MiniModeCallService$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/MiniModeCallService$2;-><init>(Lcom/android/incallui/service/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/MiniModeCallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->stopLongClickCheck()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/MiniModeCallService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mIsOverMoveThreshold:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/service/MiniModeCallService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/service/MiniModeCallService;->mIsOverMoveThreshold:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/service/MiniModeCallService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mLastDownEventTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/incallui/service/MiniModeCallService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/incallui/service/MiniModeCallService;->mLastDownEventTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/incallui/service/MiniModeCallService;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/MiniModeCallService;->START_X:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/service/MiniModeCallService;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/MiniModeCallService;->START_X:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/service/MiniModeCallService;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/MiniModeCallService;->START_Y:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/service/MiniModeCallService;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/MiniModeCallService;->START_Y:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/service/MiniModeCallService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/MiniModeCallService;->PREV_X:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/incallui/service/MiniModeCallService;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/MiniModeCallService;->PREV_X:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/service/MiniModeCallService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/MiniModeCallService;->PREV_Y:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/incallui/service/MiniModeCallService;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/MiniModeCallService;->PREV_Y:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/incallui/service/MiniModeCallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->startLongClickCheck()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/service/MiniModeCallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->updateViewLayout()V

    return-void
.end method

.method private initLayout()V
    .locals 2

    new-instance v0, Lcom/android/incallui/service/MiniModeView;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/MiniModeView;-><init>(Lcom/android/incallui/service/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    iget-boolean v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mBlockTouchEvent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/MiniModeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/MiniModeCallService;->initCustomLayout(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->setDefaultPosition()V

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->show()V

    return-void
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showMiniMode()V
    .locals 3

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/MiniModeCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    iget-object v2, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showMiniModeDialog()V
    .locals 2

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startLongClickCheck()V
    .locals 4

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->stopLongClickCheck()V

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private stopLongClickCheck()V
    .locals 2

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateViewLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    iget-object v2, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    const/4 v4, -0x2

    const/16 v0, 0x7d2

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->supportOverLockScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x7da

    :cond_0
    const v1, 0x1040068

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->supportEntireScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x1040168

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->supportScreenOutSide()Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit16 v1, v1, 0x200

    :cond_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    invoke-direct {v2, v0, v1, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x33

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x20

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const v0, 0x7f0b001a

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getMaxX()I
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/MiniModeCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getMaxY()I
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/MiniModeCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040104

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "MiniModeCallService"

    const-string v1, "onConfigurationChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {v0}, Lcom/android/incallui/service/MiniModeView;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/MiniModeCallService;->initCustomLayout(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->setDefaultPosition()V

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->updateViewLayout()V

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    const-string v0, "MiniModeCallService"

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/incallui/service/MiniModeCallService$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/MiniModeCallService$3;-><init>(Lcom/android/incallui/service/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->initLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->onCustomCreate()V

    return-void
.end method

.method protected onCustomCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MiniModeCallService"

    const-string v1, "onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/MiniModeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {v0}, Lcom/android/incallui/service/MiniModeView;->removeAllViews()V

    :cond_2
    iput-object v2, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->stopLongClickCheck()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onFocus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "MiniModeCallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->updateViewLayout()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method protected onLongTouchEvent()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected onTouchEvent()V
    .locals 0

    return-void
.end method

.method protected onTouchEventDown()V
    .locals 0

    return-void
.end method

.method protected setDefaultPosition()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->supportEntireScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getStatusBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method public show()V
    .locals 2

    const-string v0, "MiniModeCallService"

    const-string v1, "show "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->showMiniMode()V

    return-void
.end method

.method protected supportEntireScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected supportOverLockScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected supportScreenOutSide()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
