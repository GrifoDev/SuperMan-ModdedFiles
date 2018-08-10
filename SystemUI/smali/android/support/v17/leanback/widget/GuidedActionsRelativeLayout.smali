.class Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "GuidedActionsRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;
    }
.end annotation


# instance fields
.field private mInOverride:Z

.field private mInterceptKeyEventListener:Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;

.field private mKeyLinePercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInOverride:Z

    invoke-static {p1}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getKeyLinePercent(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mKeyLinePercent:F

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInterceptKeyEventListener:Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInterceptKeyEventListener:Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;->onInterceptKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInOverride:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-lez v0, :cond_1

    sget v3, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInOverride:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInOverride:Z

    :cond_0
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInOverride:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mKeyLinePercent:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public setInterceptKeyEventListener(Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInterceptKeyEventListener:Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;

    return-void
.end method
