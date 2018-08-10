.class public final Lcom/android/systemui/KnoxStateMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/KnoxStateMonitor$1;,
        Lcom/android/systemui/KnoxStateMonitor$2;,
        Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/KnoxStateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

.field private mContext:Landroid/content/Context;

.field private mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

.field private mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

.field private final mHandler:Landroid/os/Handler;

.field private mSdpMonitor:Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

.field private mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

.field private mUcmMonitor:Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/KnoxStateMonitor;)Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mUcmMonitor:Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleDPMPasswordChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleDisableDeviceWhenReachMaxFailed()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateLockTypeOverride()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateLockscreenHiddenItems()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateNavigationBarHidden()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelButtonUsers()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelButtons()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelEdit()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelItems()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarBatteryColour()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarHidden()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarIcons()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/KnoxStateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;->handleDoKeyguard(I)V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarText()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleEnableMDMWallpaper()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleEnableUCMLock()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/KnoxStateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;->handlePersonaLaunch(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handlePersonaStateChange()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleRCPPolicyChange()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateContainerKioskmode()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/KnoxStateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateKnoxKeyguardState(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor;->DEBUG:Z

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/KnoxStateMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/KnoxStateMonitor$1;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/KnoxStateMonitor$2;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/KnoxStateMonitor$2;-><init>(Lcom/android/systemui/KnoxStateMonitor;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/-$Lambda$BfYdx8DwOjb9sdr07ZBJoBkrLNM;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$Lambda$BfYdx8DwOjb9sdr07ZBJoBkrLNM;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handleDPMPasswordChanged()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleDPMPasswordChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onDPMPasswordChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDisableDeviceWhenReachMaxFailed()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleDisableDeviceWhenReachMaxFailed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onDisableDeviceWhenReachMaxFailed()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDoKeyguard(I)V
    .locals 5

    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDoKeyguard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onDoKeyguard(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEnableMDMWallpaper()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleEnableMDMWallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onEnableMDMWallpaper()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEnableUCMLock()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleEnableUCMLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onEnableUCMLock()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlePersonaLaunch(I)V
    .locals 5

    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handlePersonaLaunch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onPersonaLaunch(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlePersonaStateChange()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handlePersonaStateChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onPersonaStateChange()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleRCPPolicyChange()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleRCPPolicyChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onRCPPolicyChange()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateContainerKioskmode()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateContainerKioskmode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateContainerKioskmode()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateKnoxKeyguardState(Z)V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateKnoxKeyguardState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateKnoxKeyguardState(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateLockTypeOverride()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateLockTypeOverride"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateLockTypeOverride()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateLockscreenHiddenItems()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateLockscreenHiddenItems"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateLockscreenHiddenItems()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateNavigationBarHidden()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateNavigationBarHidden"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateNavigationBarHidden()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelButtonUsers()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateQuickPanelButtonUsers"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelButtonUsers()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelButtons()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateQuickPanelButtons"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelButtons()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelEdit()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateQuickPanelEdit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelEdit()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelItems()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateQuickPanelItems"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelItems()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarBatteryColour()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateStatusBarBatteryColour"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarBatteryColour()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarHidden()V
    .locals 5

    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUpdateStatusBarHidden() - mCallbacks.size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarHidden()V

    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "         -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarIcons()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateStatusBarIcons"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarIcons()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarText()V
    .locals 4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateStatusBarText"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarText()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setUpIntentReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.knox.keyguard.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setUpKnoxClass()V
    .locals 1

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSdpMonitor:Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mUcmMonitor:Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;

    return-void
.end method


# virtual methods
.method public checkSdpCondition(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSdpMonitor:Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isPwdChangeRequested()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "CustomSdkMonitor state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "-mKnoxCustomLockScreenHiddenItems="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get5(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mKnoxCustomLockScreenOverrideMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get6(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mKnoxCustomUnlockSimOnBootState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get10(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mUnlockSimPin="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get19(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "-mKnoxCustomQuickPanelButtons="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get8(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mKnoxCustomQuickPanelButtonUsers="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get7(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mKnoxCustomQuickPanelEditMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get9(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mQuickPanelItems="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get11(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "-mKnoxCustomDoubleTapState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get4(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mStatusBarText="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get15(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "-mStatusBarMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get13(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mStatusBarTextStyle="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get17(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mStatusBarTextSize="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get16(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mStatusBarTextWidth="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get18(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mStatusBarIconsState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get12(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "-mBatteryLevelColourItem="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v2, "-mHideNotificationMessages="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get2(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mStatusBarNotificationsState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get14(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mChargerConnectionSoundEnabledState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mVolumePanelEnabledState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get20(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mIsCustomSdkStatusBarHidden="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->-get3(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "ContainerMonitor state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "-mIsContainerKioskMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get3(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "EdmMonitor state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "-mIsStatusBarHidden="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get9(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mIsNavigationBarHidden="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get8(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mIsMDMKioskMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get7(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mWipeExcludeExternalStorage="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get22(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mLockDelay="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get11(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mMaxNumFailedAttemptForDisable="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get12(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mIsDeviceDisableForMaxFailedAttempt="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get4(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mPwdChangeRequest="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get16(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "-mSettingsChangesAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get17(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mStatusBarExpandAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get18(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mAirplaneModeAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mCellularDataAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get2(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mNFCAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get14(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mWifiTetheringAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get21(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mBluetoothAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mNFCStateChangeAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get15(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mWifiStateChangeAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get20(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mWifiAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get19(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mLocationProviderAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get10(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v2, "-mGPSStateChangeAllowed="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get3(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mIsLockscreenInvisibleOverlayConfigured="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get5(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mIsLockscreenWallpaperConfigured="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get6(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "-mMultiFactorAuthEnabled="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->-get13(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "SharedDeviceMonitor state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "-getSharedDeviceStatus()="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "mCallback size="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "   -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "-mBatteryLevelColourItem=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public filterOutForKnoxContainer(ILjava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->filterOutForKnoxContainer(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0

    return-object v0
.end method

.method public getKnoxName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap4(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockDelay()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->getLockDelay()I

    move-result v0

    return v0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getQuickPanelItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarTextSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextSize()I

    move-result v0

    return v0
.end method

.method public getStatusBarTextStyle()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextStyle()I

    move-result v0

    return v0
.end method

.method public getStatusBarTextWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextWidth()I

    move-result v0

    return v0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getUnlockSimPin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAirplaneModeTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isAirplaneModeTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isBatteryNotificationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isBatteryNotificationEnabled()Z

    move-result v0

    return v0
.end method

.method public isBlockedEdmSettingsChange()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isBlueLightFilterTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isBluetoothTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBluetoothTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isBrightnessBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBrightnessBlocked()Z

    move-result v0

    return v0
.end method

.method public isBrightnessControllerEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isBrightnessControllerEnabled()Z

    move-result v0

    return v0
.end method

.method public isCarrierTextEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isCarrierTextEnabled()Z

    move-result v0

    return v0
.end method

.method public isCellularDataAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isCellularDataAllowed()Z

    move-result v0

    return v0
.end method

.method public isChargerConnectionSoundEnabledState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isChargerConnectionSoundEnabledState()Z

    move-result v0

    return v0
.end method

.method public isContainerKioskMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap0(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v0

    return v0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method public isDisableDeviceByMultifactor()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDisableDeviceByMultifactor( = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricsOptionEnabledforMultiFactor()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricsOptionEnabledforMultiFactor()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDndTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isDndTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isEbookTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isEbookTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isFlashlightTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isFlashlightTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public isLegacyContainer(Landroid/content/pm/UserInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMyKnox()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLocationTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isLocationTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockScreenDisabledbyKNOXForBoot()Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/SystemManager;->getLockScreenOverrideMode()I

    move-result v4

    if-ne v4, v8, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    return v7

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "shared_device_status"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_4

    if-ne v3, v8, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public isLockscreenAllDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenAllDisabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenBatteryInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenBatteryInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenClockEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenDateEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenDateEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenHelpTextEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenHelpTextEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenOwnerInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isMDMWallpaperEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMDMWallpaperEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMobileDataTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isMultiUserSwitchBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMultiUserSwitchBlocked()Z

    move-result v0

    return v0
.end method

.method public isMultifactorAuthEnforced()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLock2StepVerificationEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNavigationBarHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isNavigationBarHidden()Z

    move-result v0

    return v0
.end method

.method public isNeedtoSetupAirplaneModeTileDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotificationRowHide()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanelExpandEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isPanelExpandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isPanelExpandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isStatusBarHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasswordVisibilityEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isPasswordVisibilityEnabled()Z

    move-result v0

    return v0
.end method

.method public isPersona(I)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap1(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result v0

    goto :goto_0
.end method

.method public isPwdChangeRequested()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->getPwdChangeRequest()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isQuickConnectEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isQuickConnectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isQuickConnectEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickSettingEditEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isQuickSettingEditEnabled()Z

    move-result v0

    return v0
.end method

.method public isRotationLockTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isRotationLockTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isSafetyWarningDialogEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isSafetyWarningDialogEnabled()Z

    move-result v0

    return v0
.end method

.method public isSetToSwipeLock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isSetToSwipeLock()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedDeviceEnabled()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSoundModeTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isSoundModeTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isStatusBarDoubleTapEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarDoubleTapEnabled()Z

    move-result v0

    return v0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isStatusBarHidden()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStatusBarIconsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarIconsEnabled()Z

    move-result v0

    return v0
.end method

.method public isSubIdLockedByMDM()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isSubIdLockedByAdmin()Z

    move-result v0

    return v0
.end method

.method public isUnlockSimOnBootState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isUnlockSimOnBootState()Z

    move-result v0

    return v0
.end method

.method public isUsersEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isUsersEnabled()Z

    move-result v0

    return v0
.end method

.method public isVoLteTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isVoLteTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isVolumeDialogEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isVolumePanelEnabledState()Z

    move-result v0

    return v0
.end method

.method public isWifiCallingTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isWifiCallingTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isWifiHotspotTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isWifiTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isWifiTileBlocked()Z

    move-result v0

    return v0
.end method

.method public knoxContainerInSuperLockMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap3(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_KnoxStateMonitor_5732()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->setUpKnoxClass()V

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->setUpIntentReceiver()V

    return-void
.end method

.method public lockSdp()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "lockSdp :: Device Owner has been locked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->onDeviceOwnerLocked(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lockSdp :: Maybe keyguard shown as user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V
    .locals 4

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCallback() callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string/jumbo v1, "KnoxStateMonitor"

    const-string/jumbo v2, "removeCallback() mCallbacks has same callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V
    .locals 4

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeCallback() callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string/jumbo v1, "KnoxStateMonitor"

    const-string/jumbo v2, "removeCallback() mCallbacks has same callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unlockSdp(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "unlockSdp :: Device Owner has been authenticated with biometrics"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->onBiometricsAuthenticated(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlockSdp :: Maybe keyguard hidden as user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    return-void
.end method
