.class public final Lcom/android/systemui/statusbar/PanelStateNotifier;
.super Ljava/lang/Object;
.source "PanelStateNotifier.java"


# static fields
.field private static mBarState:I

.field private static mPanelExpandState:Z

.field private static mState:I

.field private static mStatusBarManager:Landroid/app/SemStatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    sput v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    sput-boolean v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mPanelExpandState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isKeyguardState(I)Z
    .locals 2

    const/4 v0, 0x1

    and-int/lit8 v1, p0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShadeLockedState(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShadeState(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static notify(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static notify(Landroid/content/Context;IZ)V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v0, ""

    const/4 v3, 0x0

    sget v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    if-ne v4, p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    if-ne p1, v5, :cond_6

    const-string/jumbo v0, "com.samsung.systemui.statusbar.ANIMATING"

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eq p1, v5, :cond_5

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_PANEL_STATE_NOTIFIER_FOR_KDDI:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeState(I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.kddi.agent.action.STATUS_BAR_CONDITION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    sget-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v4, :cond_3

    const-string/jumbo v4, "sem_statusbar"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SemStatusBarManager;

    sput-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    :cond_3
    sget-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v4, v3}, Landroid/app/SemStatusBarManager;->setPanelExpandState(Z)V

    :cond_4
    sput-boolean v3, Lcom/android/systemui/statusbar/PanelStateNotifier;->mPanelExpandState:Z

    :cond_5
    return-void

    :cond_6
    const/4 v4, 0x2

    if-ne p1, v4, :cond_7

    const-string/jumbo v0, "com.samsung.systemui.statusbar.EXPANDED"

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    const-string/jumbo v0, "com.samsung.systemui.statusbar.COLLAPSED"

    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "PanelStateNotifier"

    const-string/jumbo v5, "Invalid panel open state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setQsExpanded(Landroid/content/Context;Z)V
    .locals 2

    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setStatusBarState(Landroid/content/Context;I)V
    .locals 3

    sget v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    sget v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    goto :goto_0
.end method
