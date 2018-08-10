.class public final Landroid/support/v17/leanback/app/BackgroundManager;
.super Ljava/lang/Object;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BackgroundManager$1;,
        Landroid/support/v17/leanback/app/BackgroundManager$2;,
        Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;,
        Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;,
        Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;,
        Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;,
        Landroid/support/v17/leanback/app/BackgroundManager$EmptyDrawable;,
        Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field final mAnimator:Landroid/animation/ValueAnimator;

.field private mAttached:Z

.field private mAutoReleaseOnStop:Z

.field mBackgroundColor:I

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBgView:Landroid/view/View;

.field mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

.field private mChangeRunnablePending:Z

.field mContext:Landroid/app/Activity;

.field private mFragmentState:Landroid/support/v17/leanback/app/BackgroundFragment;

.field mHandler:Landroid/os/Handler;

.field mImageInWrapperIndex:I

.field mImageOutWrapperIndex:I

.field private mLastSetTime:J

.field mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

.field private mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

.field private mThemeDrawableResourceId:I


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/app/BackgroundManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAttached:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/BackgroundManager;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method static createEmptyDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/app/BackgroundManager$EmptyDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/app/BackgroundManager$EmptyDrawable;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method private getRunnableDelay()J
    .locals 6

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLastSetTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getThemeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mThemeDrawableResourceId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    iget v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mThemeDrawableResourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->getThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v17/leanback/app/BackgroundManager;->createEmptyDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private lazyInit()V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    sget v2, Landroid/support/v17/leanback/R$drawable;->lb_background:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager;->createTranslucentLayerDrawable(Landroid/graphics/drawable/LayerDrawable;)Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imagein:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->findWrapperIndexById(I)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imageout:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->findWrapperIndexById(I)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mImageOutWrapperIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBgView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/widget/BackgroundHelper;->setBackgroundPreservingAlpha(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateImmediate()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->lazyInit()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v1, Landroid/support/v17/leanback/R$id;->background_imagein:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->getDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v1, Landroid/support/v17/leanback/R$id;->background_imageout:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->clearDrawable(ILandroid/content/Context;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v1, Landroid/support/v17/leanback/R$id;->background_imagein:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    goto :goto_0
.end method


# virtual methods
.method createTranslucentLayerDrawable(Landroid/graphics/drawable/LayerDrawable;)Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    invoke-direct {v3, p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;-><init>(Landroid/support/v17/leanback/app/BackgroundManager;[Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->setId(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method detach()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->release()V

    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBgView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAttached:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->unref()V

    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    :cond_0
    return-void
.end method

.method getDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundColor:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundColor:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->getThemeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getImageInWrapper()Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    iget v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public isAutoReleaseOnStop()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAutoReleaseOnStop:Z

    return v0
.end method

.method onActivityStart()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->updateImmediate()V

    return-void
.end method

.method onResume()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->postChangeRunnable()V

    return-void
.end method

.method onStop()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->isAutoReleaseOnStop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->release()V

    :cond_0
    return-void
.end method

.method postChangeRunnable()V
    .locals 4

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnablePending:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mFragmentState:Landroid/support/v17/leanback/app/BackgroundFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BackgroundFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->getRunnableDelay()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLastSetTime:J

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnablePending:Z

    goto :goto_0
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v1, Landroid/support/v17/leanback/R$id;->background_imagein:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->clearDrawable(ILandroid/content/Context;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v1, Landroid/support/v17/leanback/R$id;->background_imageout:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->clearDrawable(ILandroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    :cond_2
    iput-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method sameDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v3

    :cond_1
    if-ne p1, p2, :cond_2

    return v2

    :cond_2
    instance-of v0, p1, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;

    if-eqz v0, :cond_3

    instance-of v0, p2, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_4

    instance-of v0, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-ne v0, v1, :cond_4

    return v2

    :cond_4
    return v3
.end method
