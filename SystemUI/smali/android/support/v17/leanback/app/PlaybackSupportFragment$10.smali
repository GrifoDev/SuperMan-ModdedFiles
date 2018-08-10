.class Landroid/support/v17/leanback/app/PlaybackSupportFragment$10;
.super Ljava/lang/Object;
.source "PlaybackSupportFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadControlRowAnimator()V
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

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget v3, v3, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAnimationTranslateY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method
