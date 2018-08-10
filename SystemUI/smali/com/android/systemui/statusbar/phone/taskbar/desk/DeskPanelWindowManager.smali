.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;
.super Ljava/lang/Object;
.source "DeskPanelWindowManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

.field private mDeskPanelViewNotification:Landroid/view/View;

.field private mDeskPanelViewQuickSetting:Landroid/view/View;

.field private mNotiPanelLp:Landroid/view/WindowManager$LayoutParams;

.field private mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mQuickPanelLp:Landroid/view/WindowManager$LayoutParams;

.field private mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->applyGravityFlag(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mDeskPanelViewNotification:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mDeskPanelViewQuickSetting:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V
    .locals 4

    const/high16 v3, 0x20000

    const v2, -0x20001

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_REMOTE_INPUT:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;->remoteInputActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string/jumbo v0, "DeskPanelWindowManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "DeskPanelWindowManager"

    const-string/jumbo v1, "No Error!(1)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;->focusable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string/jumbo v0, "DeskPanelWindowManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "DeskPanelWindowManager"

    const-string/jumbo v1, "No Error!(2)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private applyGravityFlag(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V
    .locals 2

    iget v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;->position:I

    const v1, 0x100001

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, -0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;->position:I

    const v1, 0x100003

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, -0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private makePanelLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    const/4 v1, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d9

    const v4, 0x860128

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_3

    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    return-object v0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DeskPanelNotificationView"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->makePanelLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mDeskPanelViewNotification:Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DeskPanelQuickSettingView"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->makePanelLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mDeskPanelViewQuickSetting:Landroid/view/View;

    goto :goto_0
.end method

.method public onRemoteInputActive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;->remoteInputActive:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->apply(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V

    return-void
.end method

.method public setDeskPanelPositionX(Landroid/view/View;I)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->apply(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method

.method public setPanelFocusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;->focusable:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;->focusable:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->apply(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V

    return-void
.end method

.method public setPanelPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;->position:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;->position:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->apply(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V

    return-void
.end method

.method public updateDeskPanelWindowLayout(Landroid/view/View;)V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    const/16 v0, 0x50

    if-eqz v1, :cond_2

    const/4 v4, 0x3

    :goto_1
    or-int/lit8 v0, v4, 0x50

    const v4, 0x10502c0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f07015b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v3, v4, v5

    instance-of v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mNotiPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mDeskPanelViewNotification:Landroid/view/View;

    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->apply(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    goto :goto_1

    :cond_3
    instance-of v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mQuickPanelLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->mDeskPanelViewQuickSetting:Landroid/view/View;

    goto :goto_2
.end method
