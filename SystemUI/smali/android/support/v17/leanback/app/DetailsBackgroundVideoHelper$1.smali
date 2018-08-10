.class Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;
.super Landroid/support/v17/leanback/widget/ParallaxTarget;
.source "DetailsBackgroundVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;


# virtual methods
.method public update(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->-wrap1(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->-wrap1(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;I)V

    goto :goto_0
.end method
