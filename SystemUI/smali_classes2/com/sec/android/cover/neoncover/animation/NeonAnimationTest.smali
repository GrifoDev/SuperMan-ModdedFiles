.class public Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;
.super Lcom/sec/android/cover/neoncover/animation/NeonAnimation;
.source "NeonAnimationTest.java"


# instance fields
.field private mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

.field private mHandler:Landroid/os/Handler;

.field private mTestModeAnimRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;-><init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mView:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->clear()V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    iput-object v2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    return-void
.end method

.method public getAnimationView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public startAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->isPlaying:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->isPrepared:Z

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mTestModeAnimRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest$1;-><init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mTestModeAnimRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mTestModeAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mTestModeAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mTestModeAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->isPlaying:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->isPlaying:Z

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->mNeonController:Lcom/sec/android/cover/neoncover/NeonControllerCallback;

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->TEST_MODE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/neoncover/NeonControllerCallback;->onAnimationEnd(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    :cond_1
    return-void
.end method
