.class public Lcom/sec/sdp/internal/SdpAuthenticator;
.super Ljava/lang/Object;
.source "SdpAuthenticator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpAuthenticator"

.field private static _instance:Lcom/sec/sdp/internal/SdpAuthenticator;


# instance fields
.field private mSdpService:Landroid/os/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/sdp/internal/SdpAuthenticator;->_instance:Lcom/sec/sdp/internal/SdpAuthenticator;

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

    iput-object v0, p0, Lcom/sec/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    return-void
.end method

.method public static getInstance()Lcom/sec/sdp/internal/SdpAuthenticator;
    .locals 1

    sget-object v0, Lcom/sec/sdp/internal/SdpAuthenticator;->_instance:Lcom/sec/sdp/internal/SdpAuthenticator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/sdp/internal/SdpAuthenticator;

    invoke-direct {v0}, Lcom/sec/sdp/internal/SdpAuthenticator;-><init>()V

    sput-object v0, Lcom/sec/sdp/internal/SdpAuthenticator;->_instance:Lcom/sec/sdp/internal/SdpAuthenticator;

    :cond_0
    sget-object v0, Lcom/sec/sdp/internal/SdpAuthenticator;->_instance:Lcom/sec/sdp/internal/SdpAuthenticator;

    return-object v0
.end method


# virtual methods
.method public enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/ISdpManagerService;->enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "SdpAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enroll failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v2, v1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SdpAuthenticator"

    const-string/jumbo v3, "Failed to call enroll"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v1, -0xf

    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/ISdpManagerService;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "SdpAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verify failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v2, v1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SdpAuthenticator"

    const-string/jumbo v3, "Failed to call verify"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method
