.class public Lcom/android/server/enterprise/auditlog/IptablesLogging;
.super Ljava/lang/Object;
.source "IptablesLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;,
        Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEL_FORWARD_LOG:Ljava/lang/String; = "/system/bin/iptables -D FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final DEL_INPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -D INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final DEL_OUTPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -D OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final FORWARD_LOG:Ljava/lang/String; = "/system/bin/iptables -I FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final INPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -I INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final OUTPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -I OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final TAG:Ljava/lang/String; = "IptablesLogging"

.field private static mNetdService:Landroid/net/INetd;


# instance fields
.field private mIsLogging:Z

.field private mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;


# direct methods
.method static synthetic -get0()Landroid/net/INetd;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    return-object v0
.end method

.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->connectNativeNetdService()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    new-instance v0, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->start()V

    return-void
.end method

.method private static connectNativeNetdService()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "netd"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    sget-object v2, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2}, Landroid/net/INetd;->isAlive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    sget-boolean v2, Lcom/android/server/enterprise/auditlog/IptablesLogging;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "IptablesLogging"

    const-string/jumbo v3, "Can\'t connect to NativeNetdService netd"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sput-object v3, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    goto :goto_0
.end method


# virtual methods
.method public isNetworkLogOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    return v0
.end method

.method turnNetworkLogOff()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "input"

    const-string/jumbo v3, "/system/bin/iptables -D INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "output"

    const-string/jumbo v3, "/system/bin/iptables -D OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "forward"

    const-string/jumbo v3, "/system/bin/iptables -D FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    :cond_0
    return-void
.end method

.method turnNetworkLogOn()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    if-nez v2, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "input"

    const-string/jumbo v3, "/system/bin/iptables -I INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "output"

    const-string/jumbo v3, "/system/bin/iptables -I OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "forward"

    const-string/jumbo v3, "/system/bin/iptables -I FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    :cond_0
    return-void
.end method
