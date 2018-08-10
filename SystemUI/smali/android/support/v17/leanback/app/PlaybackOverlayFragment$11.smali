.class Landroid/support/v17/leanback/app/PlaybackOverlayFragment$11;
.super Ljava/lang/Object;
.source "PlaybackOverlayFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadDescriptionAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v1, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method
