.class final Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChangeBackgroundRunnable"
.end annotation


# instance fields
.field final mDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroid/support/v17/leanback/app/BackgroundManager;


# direct methods
.method private runTask()V
    .locals 4

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BackgroundManager;->getImageInWrapper()Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager;->sameDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imagein:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->clearDrawable(ILandroid/content/Context;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imageout:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->applyBackgroundChanges()V

    return-void
.end method


# virtual methods
.method applyBackgroundChanges()V
    .locals 4

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-static {v1}, Landroid/support/v17/leanback/app/BackgroundManager;->-get0(Landroid/support/v17/leanback/app/BackgroundManager;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BackgroundManager;->getImageInWrapper()Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imagein:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget v2, v2, Landroid/support/v17/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->setWrapperAlpha(II)V

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public run()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->runTask()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    return-void
.end method
