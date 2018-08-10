.class public abstract Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

.field mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mState:I

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

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    const-class v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    return-void
.end method


# virtual methods
.method public collapsePanel(ZZF)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->resetViews()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return v0
.end method

.method public go(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;I)V

    return-void
.end method

.method public isClosed()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTracking()Z
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " PanelBar mTracking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return v0
.end method

.method public onClosingFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    const-string/jumbo v1, "onClosingFinished"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method public onExpandingFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    const-string/jumbo v1, "onExpandingFinished"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onPanelCollapsed()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    const-string/jumbo v1, "onPanelCollapsed"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    const-string/jumbo v1, "onPanelFullyOpened"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method public onPanelPeeked()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    const-string/jumbo v1, "onPanelPeeked"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_3

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    return v8

    :cond_3
    if-ne v0, v6, :cond_1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez v2, :cond_5

    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onTouch: no panel for touch at (%d,%d)"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    return v3

    :cond_5
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    return v3

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v4, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_7
    return v3
.end method

.method public onTrackingStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    const-string/jumbo v1, "onTrackingStarted"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrackingStopped("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

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
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez p2, :cond_0

    const-string/jumbo v4, "KEEPLOCK"

    const-string/jumbo v6, "KEEPLOCK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->isFlingOnKeyguard()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    if-eqz p2, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_5

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v4, 0x4

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v4, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    goto :goto_2
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
