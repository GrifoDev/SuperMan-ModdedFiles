.class public Landroid/widget/AdapterViewFlipper;
.super Landroid/widget/AdapterViewAnimator;
.source "AdapterViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewFlipper$1;,
        Landroid/widget/AdapterViewFlipper$2;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x2710

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private mAdvancedByHost:Z

.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mFlipRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunning:Z

.field private mStarted:Z

.field private mUserPresent:Z

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Landroid/widget/AdapterViewFlipper;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    return v0
.end method

.method static synthetic -set0(Landroid/widget/AdapterViewFlipper;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/AdapterViewFlipper;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/AdapterViewFlipper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x2710

    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    new-instance v0, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/widget/AdapterViewFlipper$2;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v4, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    iput-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    new-instance v1, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/widget/AdapterViewFlipper$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    iput-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mLoopViews:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateRunning()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method private updateRunning(Z)V
    .locals 4

    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_3

    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mWhichChild:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/AdapterViewFlipper;->showOnly(IZ)V

    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method


# virtual methods
.method public fyiWillBeAdvancedByHostKThx()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/AdapterViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlipInterval()I
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    return v0
.end method

.method public isAutoStart()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public isFlipping()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onAttachedToWindow()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->startFlipping()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    invoke-direct {p0, v1}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method public setAutoStart(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    return-void
.end method

.method public showNext()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    return-void
.end method

.method public showPrevious()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    return-void
.end method

.method public startFlipping()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method public stopFlipping()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method
