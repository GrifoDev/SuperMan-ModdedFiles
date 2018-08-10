.class Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;
.super Ljava/lang/Object;
.source "PlaybackSupportFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

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

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget v2, v2, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgAlpha:I

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->-wrap1(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Z)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;->onFadeInComplete()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onReappear(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;->onFadeOutComplete()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->-wrap1(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Z)V

    return-void
.end method
