.class final Lcom/samsung/android/authenticator/AuthenticatorService;
.super Ljava/lang/Object;
.source "AuthenticatorService.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "SemAuthnrService"

.field private static final TAG:Ljava/lang/String; = "AS"

.field private static sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-object p0
.end method

.method static deleteFile(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteFile failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static getDrkKeyHandle()[B
    .locals 6

    const/4 v3, 0x0

    new-array v1, v3, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getDrkKeyHandle()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDrkKeyHandle failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFiles failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMatchedFilePaths failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method private static getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    .locals 1

    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemAuthnrService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :cond_0
    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    return-object v0
.end method

.method static getVersion()I
    .locals 6

    const/4 v1, -0x1

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVersion failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static getWrappedObject([B)[B
    .locals 6

    const/4 v3, 0x0

    new-array v1, v3, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getWrappedObject([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getWrappedObject failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static initialize(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 9

    const/4 v7, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initialize(Landroid/os/ParcelFileDescriptor;JJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_0
    return v7

    :catch_0
    move-exception v6

    const-string/jumbo v1, "AS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialize failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static initializeDrk()Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initializeDrk()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initializeDrk failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static initializeWithPreloadedTa()Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initializeWithPreloadedTa()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initializeWithPreloadedTa failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static process([B)[B
    .locals 6

    const/4 v3, 0x0

    new-array v1, v3, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->process([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static processWithPreloadedTa([BLjava/lang/String;)[B
    .locals 6

    const/4 v3, 0x0

    new-array v1, v3, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->processWithPreloadedTa([BLjava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processWithPreloadedTa failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, ""

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readFile failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static setChallenge([B)Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->setChallenge([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setChallenge failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static terminate()Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminate failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static terminateDrk()Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminateDrk()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminateDrk failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static terminateWithPreloadedTa()Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminateWithPreloadedTa()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminateWithPreloadedTa failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method static writeFile([BLjava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->writeFile([BLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeFile failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method
