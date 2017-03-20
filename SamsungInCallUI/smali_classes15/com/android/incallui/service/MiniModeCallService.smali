.class public Lcom/android/incallui/service/MiniModeCallService;
.super Landroid/app/Service;
.source "MiniModeCallService.java"


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

.field private mButtonTouchListener:Landroid/view/View$OnTouchListener;

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

    .prologue
    const/16 v1, 0xc8

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    iput v1, p0, Lcom/android/incallui/service/MiniModeCallService;->TOUCH_THRESHOLD:I

    .line 54
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/incallui/service/MiniModeCallService;->MOVE_THRESHOLD:I

    .line 56
    iput v1, p0, Lcom/android/incallui/service/MiniModeCallService;->MOVE_LIMITATION_VALUE:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mBlockTouchEvent:Z

    .line 87
    new-instance v0, Lcom/android/incallui/service/MiniModeCallService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/MiniModeCallService$1;-><init>(Lcom/android/incallui/service/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 153
    new-instance v0, Lcom/android/incallui/service/MiniModeCallService$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/MiniModeCallService$2;-><init>(Lcom/android/incallui/service/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 171
    new-instance v0, Lcom/android/incallui/service/MiniModeCallService$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/MiniModeCallService$3;-><init>(Lcom/android/incallui/service/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/MiniModeCallService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->stopLongClickCheck()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/MiniModeCallService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mIsOverMoveThreshold:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/service/MiniModeCallService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/incallui/service/MiniModeCallService;->mIsOverMoveThreshold:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/service/MiniModeCallService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mLastDownEventTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/incallui/service/MiniModeCallService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;
    .param p1, "x1"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/android/incallui/service/MiniModeCallService;->mLastDownEventTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/incallui/service/MiniModeCallService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/incallui/service/MiniModeCallService;->START_X:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/service/MiniModeCallService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;
    .param p1, "x1"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/android/incallui/service/MiniModeCallService;->START_X:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/service/MiniModeCallService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/incallui/service/MiniModeCallService;->START_Y:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/service/MiniModeCallService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;
    .param p1, "x1"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/android/incallui/service/MiniModeCallService;->START_Y:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/service/MiniModeCallService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/incallui/service/MiniModeCallService;->PREV_X:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/incallui/service/MiniModeCallService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/incallui/service/MiniModeCallService;->PREV_X:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/service/MiniModeCallService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/incallui/service/MiniModeCallService;->PREV_Y:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/incallui/service/MiniModeCallService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/incallui/service/MiniModeCallService;->PREV_Y:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/incallui/service/MiniModeCallService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->startLongClickCheck()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/service/MiniModeCallService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/MiniModeCallService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->updateViewLayout()V

    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/android/incallui/service/MiniModeView;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/MiniModeView;-><init>(Lcom/android/incallui/service/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    .line 264
    iget-boolean v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mBlockTouchEvent:Z

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/MiniModeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 267
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/MiniModeCallService;->initCustomLayout(Landroid/view/ViewGroup;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->setDefaultPosition()V

    .line 269
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->show()V

    .line 270
    return-void
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 436
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
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 431
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

    .prologue
    .line 349
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/MiniModeCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    .line 350
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    iget-object v2, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    return-void
.end method

.method private showMiniModeDialog()V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    .line 355
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    .line 356
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 357
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 358
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 359
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 361
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 362
    return-void
.end method

.method private startLongClickCheck()V
    .locals 4

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->stopLongClickCheck()V

    .line 245
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 247
    return-void
.end method

.method private stopLongClickCheck()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 238
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    :cond_0
    return-void
.end method

.method private updateViewLayout()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    iget-object v2, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    :cond_1
    return-void
.end method


# virtual methods
.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 365
    const/16 v2, 0x7d2

    .line 367
    .local v2, "windowType":I
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->supportOverLockScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    const/16 v2, 0x7da

    .line 373
    :cond_0
    const v0, 0x1040068

    .line 378
    .local v0, "layoutFlag":I
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->supportEntireScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    or-int/lit16 v0, v0, 0x100

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->supportScreenOutSide()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    or-int/lit16 v0, v0, 0x200

    .line 387
    :cond_2
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    invoke-direct {v1, v2, v0, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 389
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 390
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 393
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 394
    const/16 v3, 0x20

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 395
    const v3, 0x7f0b001a

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 396
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 398
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getMaxX()I
    .locals 3

    .prologue
    .line 406
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 407
    .local v0, "matrix":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/incallui/service/MiniModeCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 408
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 409
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method public getMaxY()I
    .locals 3

    .prologue
    .line 413
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 414
    .local v0, "matrix":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/incallui/service/MiniModeCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 415
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 416
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method public getStatusBarHeight()I
    .locals 6

    .prologue
    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 423
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 427
    :cond_0
    return v1
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 278
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0400ea

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 279
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 252
    const-string v0, "MiniModeCallService"

    const-string v1, "onConfigurationChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {v0}, Lcom/android/incallui/service/MiniModeView;->removeAllViews()V

    .line 255
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 256
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/MiniModeCallService;->initCustomLayout(Landroid/view/ViewGroup;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->setDefaultPosition()V

    .line 258
    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->updateViewLayout()V

    .line 259
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 182
    iput-object p0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    .line 183
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 184
    const-string v0, "MiniModeCallService"

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Lcom/android/incallui/service/MiniModeCallService$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/MiniModeCallService$4;-><init>(Lcom/android/incallui/service/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mHandler:Landroid/os/Handler;

    .line 198
    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->initLayout()V

    .line 199
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->onCustomCreate()V

    .line 200
    return-void
.end method

.method protected onCustomCreate()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    const-string v0, "MiniModeCallService"

    const-string v1, "onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 218
    iput-object v2, p0, Lcom/android/incallui/service/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/MiniModeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 227
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    invoke-virtual {v0}, Lcom/android/incallui/service/MiniModeView;->removeAllViews()V

    .line 230
    :cond_2
    iput-object v2, p0, Lcom/android/incallui/service/MiniModeCallService;->mMiniModeView:Lcom/android/incallui/service/MiniModeView;

    .line 232
    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->stopLongClickCheck()V

    .line 234
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 235
    return-void
.end method

.method public onFocus(Z)V
    .locals 3
    .param p1, "focus"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 326
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

    .line 328
    if-eqz p1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 336
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->updateViewLayout()V

    goto :goto_0

    .line 332
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

    .prologue
    .line 309
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 204
    const/4 v0, 0x2

    return v0
.end method

.method protected onTouchEvent()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method protected onTouchEventDown()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method protected setDefaultPosition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "popupHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->supportEntireScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getStatusBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 316
    const-string v0, "MiniModeCallService"

    const-string v1, "show "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;->showMiniMode()V

    .line 319
    return-void
.end method

.method protected supportEntireScreen()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method protected supportOverLockScreen()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method protected supportScreenOutSide()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method
