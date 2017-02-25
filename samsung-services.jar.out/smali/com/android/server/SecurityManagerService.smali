.class public Lcom/android/server/SecurityManagerService;
.super Lcom/samsung/android/service/SecurityManager/ISecurityManagerService$Stub;
.source "SecurityManagerService.java"


# static fields
.field private static final SERVICE_VERSION:Ljava/lang/String; = "v2.8.0"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/ISecurityManagerService$Stub;-><init>()V

    const/4 v0, 0x0

    sput-object p1, Lcom/android/server/SecurityManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-direct {v1, p1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->setLogState(Z)V

    invoke-direct {p0}, Lcom/android/server/SecurityManagerService;->printVersion()V

    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->isCCModeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->initCCMode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init CCMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->i(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "This device does not support the MDFPP"

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->i(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkSystemUid()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/SecurityManagerService;->printVersion()V

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Security Exception Occurred. Only SYSTEM can use the SecurityManager Service."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private printVersion()V
    .locals 1

    const-string/jumbo v0, "v2.8.0"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->i(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public enableMDFPPMode(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SecurityManagerService;->checkSystemUid()V

    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1, p1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->enableMDFPPMode(Z)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0
.end method

.method public initCCMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SecurityManagerService;->checkSystemUid()V

    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->initCCMode()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0
.end method

.method public verifyVPN()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SecurityManagerService;->checkSystemUid()V

    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->verifyVPN()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0
.end method

.method public verifyWPA()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SecurityManagerService;->checkSystemUid()V

    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->verifyWPA()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0
.end method
