.class public Lcom/android/systemui/tv/pip/PipOverlayActivity;
.super Landroid/app/Activity;
.source "PipOverlayActivity.java"

# interfaces
.implements Lcom/android/systemui/tv/pip/PipManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipOverlayActivity$1;
    }
.end annotation


# static fields
.field private static sActivityCreated:Z


# instance fields
.field private mFadeInAnimation:Landroid/animation/Animator;

.field private mFadeOutAnimation:Landroid/animation/Animator;

.field private mGuideOverlayView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mHideGuideOverlayRunnable:Ljava/lang/Runnable;

.field private final mPipManager:Lcom/android/systemui/tv/pip/PipManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tv/pip/PipOverlayActivity;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/tv/pip/PipOverlayActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipOverlayActivity$1;-><init>(Lcom/android/systemui/tv/pip/PipOverlayActivity;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mHideGuideOverlayRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static showPipOverlay(Landroid/content/Context;)V
    .locals 3

    sget-boolean v2, Lcom/android/systemui/tv/pip/PipOverlayActivity;->sActivityCreated:Z

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/systemui/tv/pip/PipOverlayActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->sActivityCreated:Z

    const v0, 0x7f04016f

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipOverlayActivity;->setContentView(I)V

    const v0, 0x7f130404

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mGuideOverlayView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tv/pip/PipManager;->addListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    const v0, 0x7f0500de

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mFadeInAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mFadeInAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mGuideOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const v0, 0x7f0500df

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mGuideOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->sActivityCreated:Z

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tv/pip/PipManager;->removeListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resumePipResizing(I)V

    return-void
.end method

.method public onMoveToFullscreen()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipOverlayActivity;->finish()V

    return-void
.end method

.method public onPipActivityClosed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipOverlayActivity;->finish()V

    return-void
.end method

.method public onPipEntered()V
    .locals 0

    return-void
.end method

.method public onPipResizeAboutToStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipOverlayActivity;->finish()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->suspendPipResizing(I)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mFadeInAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mHideGuideOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mHideGuideOverlayRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onShowPipMenu()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipOverlayActivity;->finish()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity;->mHideGuideOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipOverlayActivity;->finish()V

    return-void
.end method
