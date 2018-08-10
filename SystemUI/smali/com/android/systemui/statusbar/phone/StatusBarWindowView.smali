.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;
    }
.end annotation


# instance fields
.field private mBrightnessMirror:Landroid/view/View;

.field private mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

.field private mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field private mFakeWindow:Landroid/view/Window;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mLeftInset:I

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mRightInset:I

.field private mService:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mTouchActive:Z

.field private mTouchCancelled:Z

.field private final mTransparentSrcPaint:Landroid/graphics/Paint;

.field touchedOnEmptyArea:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->touchedOnEmptyArea:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFakeWindow:Landroid/view/Window;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setMotionEventSplittingEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$N_OtJ8HKQ17eyDg8Dp9cEYfCWls;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/-$Lambda$N_OtJ8HKQ17eyDg8Dp9cEYfCWls;-><init>()V

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$N_OtJ8HKQ17eyDg8Dp9cEYfCWls$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$N_OtJ8HKQ17eyDg8Dp9cEYfCWls$1;-><init>(Ljava/lang/Object;)V

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    const-class v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    return-void
.end method

.method private applyMargins()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->ignoreRightInset:Z

    if-nez v4, :cond_1

    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-ne v4, v5, :cond_0

    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->leftMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eq v4, v5, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    iput v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->rightMargin:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    iput v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->leftMargin:I

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cleanupFloatingActionModeViews()V

    new-instance v1, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFakeWindow:Landroid/view/Window;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method private isTouchableArea(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTouchableArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarWindowView_4273(Z)V
    .locals 0

    return-void
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 3

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode$Callback;)V

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelCurrentTouch()V
    .locals 9

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    :cond_0
    return-void
.end method

.method public cancelExpandHelper()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelExpandHelper()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTheRestKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "StatusBarWindowView"

    const-string/jumbo v2, "interceptTheRestKey return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_3
    return v2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    :cond_6
    return v3

    :sswitch_1
    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMenuPressed()Z

    move-result v1

    return v1

    :cond_7
    :sswitch_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSpacePressed()Z

    move-result v1

    return v1

    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    return v3

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x3e -> :sswitch_2
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startExpandLatencyTracking()V

    :cond_0
    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    if-eqz v1, :cond_5

    return v4

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/systemui/classifier/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    return v4

    :cond_6
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getFitsSystemWindows()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v3

    if-eq v2, v3, :cond_4

    const/4 v1, 0x1

    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eq v2, v3, :cond_1

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->applyMargins()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setPadding(IIII)V

    :cond_2
    iput v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    return v4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eqz v2, :cond_7

    :cond_6
    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->applyMargins()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_9

    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setPadding(IIII)V

    :cond_9
    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarWindowView_4287()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScrimSrcModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScrimSrcModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v2

    sub-int v6, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v2

    sub-int v7, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_1

    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v0

    if-eqz v0, :cond_3

    int-to-float v1, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v0, 0x7f0a03a1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v0, 0x7f0a009d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldBlockStatusBar()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->isTouchableArea(Landroid/view/MotionEvent;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    if-ne v0, v6, :cond_3

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    return v6

    :cond_3
    if-ne v0, v7, :cond_2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_5

    const-string/jumbo v3, "KEEPLOCK"

    const-string/jumbo v4, "KEEPLOCK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInContentBounds(FF)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->touchedOnEmptyArea:Z

    :cond_5
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "KEEPLOCK"

    const-string/jumbo v4, "KEEPLOCK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v3

    if-ne v3, v6, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->touchedOnEmptyArea:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_7
    if-nez v2, :cond_8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_8
    if-eqz v2, :cond_9

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    return v2

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTouchOnEmptyArea(FF)Z

    move-result v3

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldBlockStatusBar()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->isTouchableArea(Landroid/view/MotionEvent;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_a

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v2, 0x1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v3

    if-ne v3, v4, :cond_4

    xor-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_6
    if-nez v2, :cond_7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v2, :cond_9

    if-eq v0, v4, :cond_8

    if-ne v0, v6, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    :cond_9
    return v2

    :cond_a
    if-ne v1, v6, :cond_2

    goto :goto_0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a009d

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onWindowFocusChanged(Z)V

    return-void
.end method

.method setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
