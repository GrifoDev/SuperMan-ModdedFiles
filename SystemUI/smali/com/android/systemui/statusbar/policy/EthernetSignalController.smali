.class public Lcom/android/systemui/statusbar/policy/EthernetSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "EthernetSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/SignalController$State;",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mEthernetChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/EthernetSignalController;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 12

    const/4 v11, 0x0

    const-string/jumbo v1, "EthernetSignalController"

    const/4 v3, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    const-string/jumbo v1, "Ethernet Icons"

    sget-object v2, Lcom/android/systemui/statusbar/policy/EthernetIcons;->ETHERNET_ICONS:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    aget v9, v3, v11

    const/4 v3, 0x0

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, v10, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    return-void
.end method


# virtual methods
.method public cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-object v0
.end method

.method getActivityIcon()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v1, :cond_1

    const v0, 0x7f02068c

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v1, :cond_2

    const v0, 0x7f020684

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v1, :cond_3

    const v0, 0x7f020699

    goto :goto_0

    :cond_3
    const v0, 0x7f020692

    goto :goto_0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "net.smart_switch.disabled"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "notifyListeners : invisible by smart_switch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getContentDescription()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getCurrentIconId()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getActivityIcon()I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    return-void
.end method

.method setActivity(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    if-eq p1, v4, :cond_1

    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    if-eq p1, v4, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    :cond_0
    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListenersIfNecessary()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mTransportType:I

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v3, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;-><init>(Lcom/android/systemui/statusbar/policy/EthernetSignalController;Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;)V

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "ethernet"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getEthernetServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    return-void
.end method
