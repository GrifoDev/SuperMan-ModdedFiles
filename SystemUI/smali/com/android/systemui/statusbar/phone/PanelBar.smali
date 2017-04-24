.class public abstract Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mState:I

.field private mStatusBarState:I

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mStatusBarState:I

    return-void
.end method


# virtual methods
.method public collapsePanel(ZZF)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->resetViews()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    :goto_0
    if-nez v1, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public go(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;I)V

    return-void
.end method

.method public onClosingFinished()V
    .locals 1

    const-string/jumbo v0, "onClosingFinished"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    const-string/jumbo v0, "onExpandingFinished"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onPanelCollapsed()V
    .locals 1

    const-string/jumbo v0, "onPanelCollapsed"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 1

    const-string/jumbo v0, "onPanelFullyOpened"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method public onPanelPeeked()V
    .locals 1

    const-string/jumbo v0, "onPanelPeeked"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez v1, :cond_2

    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch: no panel for touch at (%d,%d)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_4
    return v2
.end method

.method public onTrackingStarted()V
    .locals 1

    const-string/jumbo v0, "onTrackingStarted"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTrackingStopped("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public panelEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez p2, :cond_8

    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-nez v5, :cond_8

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mStatusBarState:I

    const/4 v8, 0x5

    if-eq v5, v8, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mStatusBarState:I

    const/16 v8, 0xa

    if-ne v5, v8, :cond_7

    :cond_0
    move v5, v6

    :goto_0
    move v3, v5

    :goto_1
    if-eqz v3, :cond_1

    sget-object v5, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "SHOULD SHOW"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p2, :cond_2

    if-eqz v3, :cond_9

    :cond_2
    move v5, v7

    :goto_2
    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    if-eqz p2, :cond_4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v5, :cond_3

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_a

    const/4 v1, 0x1

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-eqz v5, :cond_b

    :cond_5
    if-eqz v0, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-eqz v5, :cond_c

    :cond_6
    :goto_4
    return-void

    :cond_7
    move v5, v7

    goto :goto_0

    :cond_8
    move v3, v7

    goto :goto_1

    :cond_9
    const/4 v5, 0x4

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    goto :goto_4

    :cond_c
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v5, :cond_6

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    goto :goto_4
.end method

.method public abstract panelScrimMinFractionChanged(F)V
.end method

.method public setBouncerShowing(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setImportantForAccessibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mStatusBarState:I

    return-void
.end method
