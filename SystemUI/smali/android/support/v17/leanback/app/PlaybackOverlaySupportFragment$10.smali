.class Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$10;
.super Ljava/lang/Object;
.source "PlaybackOverlaySupportFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->loadOtherRowAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

.field final synthetic val$listener:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$AnimatorListener;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$10;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iput-object p2, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$10;->val$listener:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$10;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$10;->val$listener:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$AnimatorListener;

    iget-object v3, v3, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$AnimatorListener;->mViews:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$10;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildPosition(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$10;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iget v3, v3, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->mAnimationTranslateY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    return-void
.end method
