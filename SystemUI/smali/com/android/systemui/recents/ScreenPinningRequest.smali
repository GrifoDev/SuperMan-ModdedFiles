.class public Lcom/android/systemui/recents/ScreenPinningRequest;
.super Ljava/lang/Object;
.source "ScreenPinningRequest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
    }
.end annotation


# instance fields
.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private taskId:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x1000108

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string/jumbo v1, "ScreenPinningConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0
.end method


# virtual methods
.method public clearPrompt()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    :cond_0
    return-void
.end method

.method public getRequestLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    const/4 v2, -0x2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 v0, 0x13

    :goto_0
    invoke-direct {v1, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x15

    goto :goto_0

    :cond_1
    const/16 v0, 0x51

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0459

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-ne v1, p1, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->taskId:I

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showPrompt(IZ)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->taskId:I

    new-instance v2, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object v3, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
