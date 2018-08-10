.class Landroid/support/v17/leanback/app/BackgroundManager$2;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BackgroundManager;


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$2;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$2;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$2;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget v2, v2, Landroid/support/v17/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->setWrapperAlpha(II)V

    :cond_0
    return-void
.end method
