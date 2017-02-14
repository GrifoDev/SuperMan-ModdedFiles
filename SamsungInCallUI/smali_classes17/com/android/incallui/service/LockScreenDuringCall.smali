.class public Lcom/android/incallui/service/LockScreenDuringCall;
.super Landroid/app/Service;
.source "LockScreenDuringCall.java"

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

.method private isTalkBackEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTalkBackEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

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
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/LockScreenDuringCall;->showLockScreen()V

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

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/LockScreenDuringCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

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
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0}, Lcom/android/incallui/service/LockScreenDuringCall;->isTalkBackEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isUniversalSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v1, 0x7f100137

    if-ne v0, v1, :cond_1

    const-string v1, "TalkBalk-ON DoubleTap event"

    invoke-direct {p0, v1}, Lcom/android/incallui/service/LockScreenDuringCall;->sendNextLockEventAndStopNow(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mDoubleTapGesture:Landroid/view/GestureDetector;

    if-eqz v1, :cond_1

    const-string v1, "event passed to DoubleTapGesture"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mDoubleTapGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public showLockScreen()V
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "showLockScreen()"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/LockScreenDuringCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMagnificationGestureEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/InCallUISystemDB;->setMagnificationGestureEnable(I)V

    iput-boolean v3, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mIsMGestureEnabled:Z

    :cond_1
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/LockScreenDuringCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v1, 0x7f040063

    invoke-virtual {v6, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    const v2, 0x7f100137

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mScreenLock:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    const v2, 0x7f100136

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mScreenLockContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mScreenLock:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mScreenLockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mNullListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mDoubleTapGesture:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mDoubleTapGesture:Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mPoint:Landroid/graphics/Point;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/LockScreenDuringCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v7, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/16 v3, 0x7d5

    const/4 v4, 0x4

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mViewGroupLockScreen:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_2

    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/LockScreenDuringCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/incallui/service/LockScreenDuringCall;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_2
    return-void
.end method
