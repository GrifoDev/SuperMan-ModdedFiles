.class public Lcom/android/incallui/service/LockScreenDuringCall;
.super Landroid/app/Service;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mDoubleTapGesture:Landroid/view/GestureDetector;

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mIsMGestureEnabled:Z

.field private mNullListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mPoint:Landroid/graphics/Point;

.field private mScreenLock:Landroid/widget/LinearLayout;

.field private mScreenLockContainer:Landroid/widget/LinearLayout;

.field private mViewGroupLockScreen:Landroid/view/ViewGroup;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mIsMGestureEnabled:Z

    new-instance v0, Lcom/android/incallui/service/LockScreenDuringCall$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/LockScreenDuringCall$1;-><init>(Lcom/android/incallui/service/LockScreenDuringCall;)V

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mNullListener:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v0, Lcom/android/incallui/service/LockScreenDuringCall$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/LockScreenDuringCall$2;-><init>(Lcom/android/incallui/service/LockScreenDuringCall;)V

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/LockScreenDuringCall;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/LockScreenDuringCall;->sendNextLockEventAndStopNow(Ljava/lang/String;)V

    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/LockScreenDuringCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mPoint:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/16 v3, 0x7de

    const/4 v4, 0x4

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0
.end method

.method private isTalkBackEnabled()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTalkBackEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    return v0
.end method

.method private sendNextLockEventAndStopNow(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendNextLockEventAndStopNow reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->sendLockScreenEvent()V

    invoke-virtual {p0}, Lcom/android/incallui/service/LockScreenDuringCall;->stopSelf()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/LockScreenDuringCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/LockScreenDuringCall;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "onCreate()"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/android/incallui/service/LockScreenDuringCall;->showLockScreen()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "onDestroy()"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mIsMGestureEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/android/incallui/InCallUISystemDB;->setMagnificationGestureEnable(I)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch(View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0}, Lcom/android/incallui/service/LockScreenDuringCall;->isTalkBackEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isUniversalSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v1, 0x7f1001af

    if-ne v0, v1, :cond_1

    const-string v0, "TalkBalk-ON DoubleTap event"

    invoke-direct {p0, v0}, Lcom/android/incallui/service/LockScreenDuringCall;->sendNextLockEventAndStopNow(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mDoubleTapGesture:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    const-string v0, "event passed to DoubleTapGesture"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mDoubleTapGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public showLockScreen()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "showLockScreen()"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/LockScreenDuringCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMagnificationGestureEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUISystemDB;->setMagnificationGestureEnable(I)V

    iput-boolean v2, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mIsMGestureEnabled:Z

    :cond_1
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/LockScreenDuringCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040074

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    const v1, 0x7f1001af

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mScreenLock:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    const v1, 0x7f1001ae

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mScreenLockContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mScreenLock:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mScreenLockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mNullListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mDoubleTapGesture:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mDoubleTapGesture:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    invoke-direct {p0}, Lcom/android/incallui/service/LockScreenDuringCall;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_2

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/LockScreenDuringCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_2
    return-void
.end method
