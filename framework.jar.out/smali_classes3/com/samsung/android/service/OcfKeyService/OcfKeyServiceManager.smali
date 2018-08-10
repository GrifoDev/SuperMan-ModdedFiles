.class public Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager;
.super Ljava/lang/Object;
.source "OcfKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;
    }
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OcfKeyServiceManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager;->SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finalizeTA()I
    .locals 4

    const-string/jumbo v2, "OcfKeyServiceManager"

    const-string/jumbo v3, "finalize Ocf TA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager;->getOcfKeyServiceInterface()Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;->finalizeTA()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->EXCEPTION_OCCUR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "OcfKeyServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_SERVICE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2
.end method

.method public static getCertificateChain(I[B)I
    .locals 5

    const-string/jumbo v2, "OcfKeyServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCertificateChain. type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager;->getOcfKeyServiceInterface()Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;->getCertificateChain(I[B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->EXCEPTION_OCCUR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "OcfKeyServiceManager"

    const-string/jumbo v3, "Failed to connect service or Invalid null parameter used"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_SERVICE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2
.end method

.method public static getInstalledKeyStatus(I)I
    .locals 5

    const-string/jumbo v2, "OcfKeyServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getInstalledKeyStatus keyType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager;->getOcfKeyServiceInterface()Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;->getInstalledKeyStatus(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->EXCEPTION_OCCUR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "OcfKeyServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_SERVICE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2
.end method

.method private static getOcfKeyServiceInterface()Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;
    .locals 4

    const-string/jumbo v1, "OcfKeyService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to find OcfKeyService by name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public static initializeTA()I
    .locals 4

    const-string/jumbo v2, "OcfKeyServiceManager"

    const-string/jumbo v3, "initialize Ocf TA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager;->getOcfKeyServiceInterface()Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;->initializeTA()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->EXCEPTION_OCCUR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "OcfKeyServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_SERVICE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2
.end method

.method public static installCertificateChain([B)I
    .locals 5

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "OcfKeyServiceManager"

    const-string/jumbo v3, "installCertificateChain failed, Invalid wrappedCertificateChain"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->INVALID_PARAMETER:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2

    :cond_1
    const-string/jumbo v2, "OcfKeyServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Install Certificate chain. wrapped length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager;->getOcfKeyServiceInterface()Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;->installCertificateChain([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->EXCEPTION_OCCUR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "OcfKeyServiceManager"

    const-string/jumbo v3, "Failed to connect service or Invalid null parameter used"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_SERVICE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2
.end method

.method public static sign(II[B[B)I
    .locals 5

    const-string/jumbo v2, "OcfKeyServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sign. hash : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " message length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager;->getOcfKeyServiceInterface()Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;

    move-result-object v2

    invoke-interface {v2, p0, p1, p2, p3}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;->sign(II[B[B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->EXCEPTION_OCCUR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "OcfKeyServiceManager"

    const-string/jumbo v3, "Failed to connect service or Invalid null parameter used"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_SERVICE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-virtual {v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->getCode()I

    move-result v2

    return v2
.end method
