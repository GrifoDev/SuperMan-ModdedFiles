.class Landroid/support/v17/leanback/app/BackgroundManager$1;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BackgroundManager$1$1;
    }
.end annotation


# instance fields
.field final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v17/leanback/app/BackgroundManager;


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v1, Landroid/support/v17/leanback/R$id;->background_imageout:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->clearDrawable(ILandroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
