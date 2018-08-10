.class Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;
.super Ljava/lang/Object;
.source "PlaybackOverlaySupportFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iget v1, v1, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->mBgAlpha:I

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->enableVerticalGridAnimations(Z)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->startFadeTimer()V

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$OnFadeCompleteListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$OnFadeCompleteListener;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$OnFadeCompleteListener;->onFadeInComplete()V

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iput v3, v1, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->mFadingStatus:I

    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->resetControlsToPrimaryActions(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$OnFadeCompleteListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$OnFadeCompleteListener;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$OnFadeCompleteListener;->onFadeOutComplete()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->enableVerticalGridAnimations(Z)V

    return-void
.end method
