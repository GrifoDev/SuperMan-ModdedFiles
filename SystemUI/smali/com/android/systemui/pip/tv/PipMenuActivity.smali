.class public Lcom/android/systemui/pip/tv/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/PipManager$Listener;


# instance fields
.field private mFadeInAnimation:Landroid/animation/Animator;

.field private mFadeOutAnimation:Landroid/animation/Animator;

.field private mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private mRestorePipSizeWhenClose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lcom/android/systemui/pip/tv/PipManager;->getInstance()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-void
.end method

.method private restorePipAndFinish()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->restorePipAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0d01cf

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/tv/PipManager;->addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    const v0, 0x7f0a03d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlsView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    const v0, 0x7f0100d2

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const v0, 0x7f0100d3

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "custom_actions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/tv/PipManager;->removeListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resumePipResizing(I)V

    return-void
.end method

.method public onMoveToFullscreen()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "custom_actions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->restorePipAndFinish()V

    return-void
.end method

.method public onPipActivityClosed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    return-void
.end method

.method public onPipEntered()V
    .locals 0

    return-void
.end method

.method public onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/pip/tv/PipControlsView;->setActions(Ljava/util/List;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1
.end method

.method public onPipResizeAboutToStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->suspendPipResizing(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onShowPipMenu()V
    .locals 0

    return-void
.end method
