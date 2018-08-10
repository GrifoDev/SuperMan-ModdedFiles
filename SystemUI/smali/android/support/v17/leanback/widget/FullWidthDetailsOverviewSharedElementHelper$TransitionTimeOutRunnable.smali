.class Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;
.super Ljava/lang/Object;
.source "FullWidthDetailsOverviewSharedElementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionTimeOutRunnable"
.end annotation


# instance fields
.field mHelperRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;->mHelperRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->startPostponedEnterTransition()V

    return-void
.end method
