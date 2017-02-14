.class public Lcom/samsung/android/knox/util/SemKeyStoreManager;
.super Ljava/lang/Object;
.source "SemKeyStoreManager.java"


# static fields
.field public static final KEYSTORE_STATUS_LOCKED:I = 0x2

.field public static final KEYSTORE_STATUS_UNINITIALIZED:I = 0x3

.field public static final KEYSTORE_STATUS_UNKNOWN:I = 0x0

.field public static final KEYSTORE_STATUS_UNLOCKED:I = 0x1


# instance fields
.field private mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/util/ISemKeyStoreService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/util/SemKeyStoreManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/util/SemKeyStoreManager;

    const-string/jumbo v1, "emailksproxy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/util/SemKeyStoreManager;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public getKeystoreStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->getKeystoreStatus()I

    move-result v0

    return v0
.end method

.method public grantAccess(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->grantAccessForAKS(ILjava/lang/String;)V

    return-void
.end method

.method public hasAlias(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->isAliasExists(Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public installCaCert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I

    move-result v0

    return v0
.end method

.method public installCertInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CZI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CZI)I

    move-result v0

    return v0
.end method
