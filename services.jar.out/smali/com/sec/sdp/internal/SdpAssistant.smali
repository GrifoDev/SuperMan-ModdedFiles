.class public Lcom/sec/sdp/internal/SdpAssistant;
.super Ljava/lang/Object;
.source "SdpAssistant.java"


# static fields
.field private static final SDK_NOT_SUPPORTED:D = 0.0

.field private static final TAG:Ljava/lang/String; = "SdpAssistant"

.field private static _instance:Lcom/sec/sdp/internal/SdpAssistant;


# instance fields
.field private mSdpService:Landroid/os/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/sdp/internal/SdpAssistant;->_instance:Lcom/sec/sdp/internal/SdpAssistant;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Landroid/os/ISdpManagerService;

    return-void
.end method

.method public static getInstance()Lcom/sec/sdp/internal/SdpAssistant;
    .locals 1

    sget-object v0, Lcom/sec/sdp/internal/SdpAssistant;->_instance:Lcom/sec/sdp/internal/SdpAssistant;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/sdp/internal/SdpAssistant;

    invoke-direct {v0}, Lcom/sec/sdp/internal/SdpAssistant;-><init>()V

    sput-object v0, Lcom/sec/sdp/internal/SdpAssistant;->_instance:Lcom/sec/sdp/internal/SdpAssistant;

    :cond_0
    sget-object v0, Lcom/sec/sdp/internal/SdpAssistant;->_instance:Lcom/sec/sdp/internal/SdpAssistant;

    return-object v0
.end method


# virtual methods
.method public deleteToeknFromTrusted(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v2, p1}, Landroid/os/ISdpManagerService;->deleteToeknFromTrusted(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "SdpAssistant"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteToeknFromTrusted failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SdpAssistant"

    const-string/jumbo v3, "Failed to call save token to the trusted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public getSupportedSDKVersion()Ljava/lang/String;
    .locals 5

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1}, Landroid/os/ISdpManagerService;->getSupportedSDKVersion()D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SdpAssistant"

    const-string/jumbo v4, "Failed to connect sdp service..."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Landroid/os/ISdpManagerService;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "SdpAssistant"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveTokenIntoTrusted failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SdpAssistant"

    const-string/jumbo v3, "Failed to call save token to the trusted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;
        }
    .end annotation

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Landroid/os/ISdpManagerService;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "SdpAssistant"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlockViaTrusted failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SdpAssistant"

    const-string/jumbo v3, "Failed to call save token to the trusted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;-><init>()V

    throw v2

    :pswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;-><init>()V

    throw v2

    :pswitch_3
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
