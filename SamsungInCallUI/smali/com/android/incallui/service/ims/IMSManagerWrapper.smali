.class public Lcom/android/incallui/service/ims/IMSManagerWrapper;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "IMSManagerWrapper"


# instance fields
.field mContext:Landroid/content/Context;

.field mImsManager:Lcom/sec/ims/ImsManager;

.field mIsConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mIsConnected:Z

    iput-object p1, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->connectService()V

    return-void
.end method

.method private connectService()V
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "connectService"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/incallui/service/ims/IMSManagerWrapper$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/ims/IMSManagerWrapper$1;-><init>(Lcom/android/incallui/service/ims/IMSManagerWrapper;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    return-void
.end method


# virtual methods
.method public getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "getConfigValues"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getLastDialogEvent()Lcom/sec/ims/DialogEvent;
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "getLastDialogEvent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->getLastDialogEvent()Lcom/sec/ims/DialogEvent;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "getRegistrationInfo"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->isIMSReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    goto :goto_0
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "getRegistrationInfo"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->isIMSReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    goto :goto_0
.end method

.method public isForbidden()Z
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "isForbidden"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->isForbidden()Z

    move-result v0

    return v0
.end method

.method public isIMSReady()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v2, :cond_0

    const-string v2, "IMSManagerWrapper"

    const-string v3, "ImsManager = null"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mIsConnected:Z

    if-nez v2, :cond_1

    const-string v2, "IMSManagerWrapper"

    const-string v3, "ImsManager isn\'t connected yet"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isServiceAvailable(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "registerDialogEventListener"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->isIMSReady()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsManager;->registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    goto :goto_0
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "registerImsRegistrationListener"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->isIMSReady()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    goto :goto_0
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "transferCall"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ims/ImsManager;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "unregisterDialogEventListener"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->isIMSReady()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsManager;->unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    goto :goto_0
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "unregisterImsRegistrationListener"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->isIMSReady()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    goto :goto_0
.end method
