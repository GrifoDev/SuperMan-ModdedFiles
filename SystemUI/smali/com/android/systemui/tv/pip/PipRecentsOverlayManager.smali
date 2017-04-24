.class public Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;
.super Ljava/lang/Object;
.source "PipRecentsOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;,
        Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

.field private mIsPipFocusedInRecent:Z

.field private mIsPipRecentsOverlayShown:Z

.field private mIsRecentsShown:Z

.field private final mOverlayView:Landroid/view/View;

.field private final mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

.field private mPipControlsViewListener:Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

.field private final mPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private final mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mPipRecentsControlsViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mRecentsView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v3, 0x7d8

    const/4 v5, -0x3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    new-instance v0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;-><init>(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsViewListener:Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v0, 0x7f04016f

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    const v2, 0x7f1303ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    const v2, 0x7f130405

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;-><init>(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x18

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method addPipRecentsOverlayView()V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->reset()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearFocus()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->startFocusLoseAnimation()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    invoke-interface {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;->onRecentsFocused()V

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method isRecentsShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    return v0
.end method

.method public onRecentsPaused()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->removePipRecentsOverlayView()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    :cond_0
    return-void
.end method

.method public onRecentsResumed()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    return-void
.end method

.method public removePipRecentsOverlayView()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    return-void
.end method

.method public requestFocus(Z)V
    .locals 4

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->startFocusGainAnimation()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCallback(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsViewListener:Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->setListener(Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;)V

    return-void
.end method
