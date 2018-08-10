.class Landroid/widget/PopupWindow$PopupDecorView;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupDecorView$1;
    }
.end annotation


# instance fields
.field private mCleanupAfterExit:Ljava/lang/Runnable;

.field private mIsPenSelectionMode:Z

.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mSpenUspLevel:I

.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method static synthetic -get0(Landroid/widget/PopupWindow$PopupDecorView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow$PopupDecorView;->startEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mSpenUspLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$PopupDecorView$1;-><init>(Landroid/widget/PopupWindow$PopupDecorView;)V

    iput-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method private startEnterTransition(Landroid/transition/Transition;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelTransitions()V
    .locals 1

    invoke-static {p0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    return v3

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->mSpenUspLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v1}, Landroid/widget/PopupWindow;->-get3(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v1}, Landroid/widget/PopupWindow;->-get3(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    const/16 v1, 0xd3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xd5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xd4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2
    iput-boolean v3, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$-android_widget_PopupWindow$PopupDecorView_106237(Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iput-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getWidth()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    return v4

    :cond_1
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    return v4

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public requestEnterTransition(Landroid/transition/Transition;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView$2;

    invoke-direct {v2, p0, v0}, Landroid/widget/PopupWindow$PopupDecorView$2;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public requestKeyboardShortcuts(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v1}, Landroid/widget/PopupWindow;->-get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v1}, Landroid/widget/PopupWindow;->-get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v4, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p2, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    new-instance v4, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$4;

    invoke-direct {v4, p0, p4, p1, p2}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v2

    new-instance v4, Landroid/widget/PopupWindow$PopupDecorView$3;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$PopupDecorView$3;-><init>(Landroid/widget/PopupWindow$PopupDecorView;)V

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    new-instance v4, Landroid/widget/PopupWindow$PopupDecorView$4;

    invoke-direct {v4, p0, p3}, Landroid/widget/PopupWindow$PopupDecorView$4;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
