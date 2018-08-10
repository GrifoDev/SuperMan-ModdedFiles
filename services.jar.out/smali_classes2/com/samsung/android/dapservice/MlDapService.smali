.class public Lcom/samsung/android/dapservice/MlDapService;
.super Lcom/samsung/android/dapmanager/IMlDapService$Stub;
.source "MlDapService.java"


# static fields
.field private static final SYSTEM_UID_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final TAG:Ljava/lang/String; = "MlDapService"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private omldap:Lcom/samsung/android/dapservice/MlDap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/dapservice/MlDapService;->DEBUG:Z

    new-instance v0, Lcom/samsung/android/dapservice/MlDap;

    invoke-direct {v0}, Lcom/samsung/android/dapservice/MlDap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    iput-object p1, p0, Lcom/samsung/android/dapservice/MlDapService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "context not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private isCallerNotPermitted()Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, "android.uid.system:1000"

    iget-object v2, p0, Lcom/samsung/android/dapservice/MlDapService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkDeviceCertificate()I
    .locals 2

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "checkDeviceCert enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/dapservice/MlDapService;->isCallerNotPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jcheckDeviceCert()I

    move-result v0

    return v0
.end method

.method public deleteDeviceKey()I
    .locals 2

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "deleteDeviceKey enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/dapservice/MlDapService;->isCallerNotPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jdeleteDeviceKey()I

    move-result v0

    return v0
.end method

.method public finalizeOta()I
    .locals 2

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "MlOta_DeInitialize enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/dapservice/MlDapService;->isCallerNotPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jotaDeInitialize()I

    move-result v0

    return v0
.end method

.method public generateSignature([BI)Lcom/samsung/android/dapmanager/BufferData;
    .locals 2

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "generateSignature enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/dapservice/MlDapService;->isCallerNotPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/dapservice/MlDap;->jgenerateSignature([BI)Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificate(I[B)[B
    .locals 4

    const-string/jumbo v1, "MlDapService"

    const-string/jumbo v2, "getCACertificate enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/dapservice/MlDapService;->isCallerNotPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MlDapService"

    const-string/jumbo v2, "dapservice was accessed by non privileged user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "dapservice was accessed by non privileged user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/dapservice/MlDap;->jgetCACertificate(I[B)[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/dapservice/MlDapService;->DEBUG:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v1, "MlDapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public getDeviceCertificate()Lcom/samsung/android/dapmanager/BufferData;
    .locals 2

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "getDeviceCertificate enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/dapservice/MlDapService;->isCallerNotPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jgetDeviceCertificate()Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public getExtendPcr([BI)Lcom/samsung/android/dapmanager/BufferData;
    .locals 2

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "getExtendPCR enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/dapservice/MlDapService;->isCallerNotPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/dapservice/MlDap;->jgetExtendPCR([BI)Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerCertificate()Lcom/samsung/android/dapmanager/IoBufferData;
    .locals 2

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "getManufacturerCertificate enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/dapservice/MlDapService;->isCallerNotPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jgetManufacturerCertificate()Lcom/samsung/android/dapmanager/IoBufferData;

    move-result-object v0

    return-object v0
.end method

.method public getPcr()Lcom/samsung/android/dapmanager/BufferData;
    .locals 2

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "getPCR enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/dapservice/MlDapService;->isCallerNotPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jgetPCR()Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public initializeOta()I
    .locals 2

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "MlOta_Initialize enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/dapservice/MlDapService;->isCallerNotPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jotaInitialize()I

    move-result v0

    return v0
.end method

.method public storeDeviceCertificate([B[B[BIII)I
    .locals 7

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "saveDeviceCert enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/dapservice/MlDapService;->isCallerNotPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MlDapService"

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/dapservice/MlDap;->jsaveDeviceCert([B[B[BIII)I

    move-result v0

    return v0
.end method
