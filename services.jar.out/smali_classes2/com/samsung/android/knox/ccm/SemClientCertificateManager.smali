.class public Lcom/samsung/android/knox/ccm/SemClientCertificateManager;
.super Ljava/lang/Object;
.source "SemClientCertificateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemClientCertificateManager"


# instance fields
.field private mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "SemClientCertificateManager"

    const-string/jumbo v2, "CCMServiceManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "knox_ccm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemClientCertificateManager"

    const-string/jumbo v2, "failed to get CCM Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultCertificateAlias()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "SemClientCertificateManager"

    const-string/jumbo v3, "getDefaultCertificateAlias"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemClientCertificateManager"

    const-string/jumbo v3, "failed to get CCM Service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-interface {v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SemClientCertificateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_1
    move-exception v0

    const-string/jumbo v2, "SemClientCertificateManager"

    const-string/jumbo v3, "Failed at ClientCertificateManager API getDefaultCertificateAlias-Exception "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public setDefaultClientCertificateManagerProfile()Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "SemClientCertificateManager"

    const-string/jumbo v3, "setDefaultClientCertificateManagerProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemClientCertificateManager"

    const-string/jumbo v3, "failed to get CCM Service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-interface {v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->setDefaultCCMProfile()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SemClientCertificateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_1
    move-exception v0

    const-string/jumbo v2, "SemClientCertificateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method
