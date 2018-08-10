.class Landroid/support/v17/leanback/app/PlaybackOverlayFragment$8;
.super Ljava/lang/Object;
.source "PlaybackOverlayFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadControlRowAnimator()V
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

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getControlRowView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    iget v2, v2, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mAnimationTranslateY:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
