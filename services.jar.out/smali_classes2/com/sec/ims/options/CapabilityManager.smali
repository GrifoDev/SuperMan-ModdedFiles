.class public Lcom/sec/ims/options/CapabilityManager;
.super Ljava/lang/Object;
.source "CapabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;,
        Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;,
        Lcom/sec/ims/options/CapabilityManager$ConnectionListener;
    }
.end annotation


# static fields
.field private static mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final LOG_TAG_BASE:Ljava/lang/String;

.field private mCapabilityListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sec/ims/options/CapabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field mEventProxy:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

.field private mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

.field mNeedRegisterListener:Z

.field private mPhoneId:I

.field private mQueuedCapabilityListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sec/ims/options/CapabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

.field private mRestartReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;
    .locals 0

    sput-object p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "CapabilityManager"

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG_BASE:Ljava/lang/String;

    iput v3, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CapabilityManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mCapabilityListener:Ljava/util/Set;

    iput-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    iput-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    iput-boolean v3, p0, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    iput-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/ims/options/CapabilityManager;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "CapabilityManager"

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG_BASE:Ljava/lang/String;

    iput v3, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CapabilityManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mCapabilityListener:Ljava/util/Set;

    iput-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    iput-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    iput-boolean v3, p0, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    iput-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-direct {p0}, Lcom/sec/ims/options/CapabilityManager;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    new-instance v1, Lcom/sec/ims/options/CapabilityManager$1;

    invoke-direct {v1, p0}, Lcom/sec/ims/options/CapabilityManager$1;-><init>(Lcom/sec/ims/options/CapabilityManager;)V

    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.ims.imsmanager.RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/ims/options/CapabilityManager;->connect()V

    return-void
.end method


# virtual methods
.method public addFakeCapabilityInfo(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/options/ICapabilityService;->addFakeCapabilityInfo(Ljava/util/List;ZI)V

    :cond_0
    return-void
.end method

.method public connect()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Not recommended in main thread."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Already connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Connecting to CapabilityDiscoveryService..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/ims/options/CapabilityManager$2;

    invoke-direct {v1, p0}, Lcom/sec/ims/options/CapabilityManager$2;-><init>(Lcom/sec/ims/options/CapabilityManager;)V

    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.imsservice"

    const-string/jumbo v2, "com.sec.internal.ims.imsservice.CapabilityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public disconnect()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    invoke-interface {v1}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disconnect: IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllCapabilities()[Lcom/sec/ims/options/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/options/ICapabilityService;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getCapabilities(Landroid/net/Uri;I)Lcom/sec/ims/options/Capabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1, p2, v2}, Lcom/sec/ims/options/ICapabilityService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getCapabilitiesByContactId(Ljava/lang/String;I)[Lcom/sec/ims/options/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getCapabilitiesById(I)Lcom/sec/ims/options/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesById(II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getCapabilitiesByNumber(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesByNumber(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getCapabilitiesWithDelay(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithDelay(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getCapabilitiesWithFeature(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithFeature(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getCapabilitiesWithFeatureByUriList(Ljava/util/List;II)[Lcom/sec/ims/options/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;II)[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getOwnCapabilities()Lcom/sec/ims/options/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/options/ICapabilityService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public isConnected()Z
    .locals 1

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListener(Lcom/sec/ims/options/CapabilityListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListener: not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mCapabilityListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget-object v1, p1, Lcom/sec/ims/options/CapabilityListener;->callback:Lcom/sec/ims/options/ICapabilityServiceEventListener;

    iget v2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/ims/options/ICapabilityService;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    return-void
.end method

.method public registerListener(Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mEventProxy:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;-><init>(Lcom/sec/ims/options/CapabilityManager;Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;)V

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mEventProxy:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mEventProxy:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

    iget v2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/ims/options/ICapabilityService;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    :cond_1
    return-void
.end method

.method public setConnectionListener(Lcom/sec/ims/options/CapabilityManager$ConnectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    return-void
.end method

.method public unregisterListener(Lcom/sec/ims/options/CapabilityListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterListener: not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget-object v1, p1, Lcom/sec/ims/options/CapabilityListener;->callback:Lcom/sec/ims/options/ICapabilityServiceEventListener;

    iget v2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/ims/options/ICapabilityService;->unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    return-void
.end method

.method public unregisterListener(Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mEventProxy:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

    iget v2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/ims/options/ICapabilityService;->unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    iput-object v3, p0, Lcom/sec/ims/options/CapabilityManager;->mEventProxy:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

    :cond_0
    return-void
.end method
