.class public Lcom/android/systemui/tv/pip/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"

# interfaces
.implements Lcom/android/systemui/tv/pip/PipManager$Listener;


# instance fields
.field private mFadeInAnimation:Landroid/animation/Animator;

.field private mFadeOutAnimation:Landroid/animation/Animator;

.field private mPipControlsView:Landroid/view/View;

.field private final mPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private mRestorePipSizeWhenClose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    return-void
.end method

.method private restorePipAndFinish()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->restorePipAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04016a

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tv/pip/PipManager;->addListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    const v0, 0x7f1303fd

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipControlsView;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipControlsView:Landroid/view/View;

    const v0, 0x7f0500d7

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipControlsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const v0, 0x7f0500d8

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipControlsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tv/pip/PipManager;->removeListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resumePipResizing(I)V

    return-void
.end method

.method public onMoveToFullscreen()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->restorePipAndFinish()V

    return-void
.end method

.method public onPipActivityClosed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->finish()V

    return-void
.end method

.method public onPipEntered()V
    .locals 0

    return-void
.end method

.method public onPipResizeAboutToStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->finish()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->suspendPipResizing(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onShowPipMenu()V
    .locals 0

    return-void
.end method
