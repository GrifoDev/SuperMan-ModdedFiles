.class public final Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;
.super Ljava/lang/Object;
.source "SemMirrorLinkDapManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemMirrorLinkDapManager"


# instance fields
.field public final BUFFER_TOO_SMALL:I

.field public final DECODE_ERROR:I

.field public final NO_ERROR:I

.field public final PCR_ERROR:I

.field public final READ_KEY_ERROR:I

.field public final RSA_ERROR:I

.field public final UNDEFINED_ERROR:I

.field private mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->NO_ERROR:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->BUFFER_TOO_SMALL:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->PCR_ERROR:I

    const/4 v0, -0x3

    iput v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->DECODE_ERROR:I

    iput v1, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->RSA_ERROR:I

    iput v1, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->READ_KEY_ERROR:I

    const/16 v0, -0x80

    iput v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->UNDEFINED_ERROR:I

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "Creating SemMirrorLinkDapManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SemMLDAPService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/dapmanager/IMlDapService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "MlDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public checkDeviceCertificate()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "MlDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    invoke-interface {v0}, Lcom/samsung/android/dapmanager/IMlDapService;->checkDeviceCertificate()I

    move-result v0

    return v0
.end method

.method public deleteDeviceKey()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "SemMLDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    invoke-interface {v0}, Lcom/samsung/android/dapmanager/IMlDapService;->deleteDeviceKey()I

    move-result v0

    return v0
.end method

.method public finalizeOta()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "SemMLDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    invoke-interface {v0}, Lcom/samsung/android/dapmanager/IMlDapService;->finalizeOta()I

    move-result v0

    return v0
.end method

.method public generateSignature([BI)Lcom/samsung/android/dapmanager/BufferData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "SemMLDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/dapmanager/IMlDapService;->generateSignature([BI)Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificate(I[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "MlDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/dapmanager/IMlDapService;->getCaCertificate(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCertificate()Lcom/samsung/android/dapmanager/BufferData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "SemMLDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    invoke-interface {v0}, Lcom/samsung/android/dapmanager/IMlDapService;->getDeviceCertificate()Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public getExtendPcr([BI)Lcom/samsung/android/dapmanager/BufferData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "SemMLDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/dapmanager/IMlDapService;->getExtendPcr([BI)Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerCertificate()Lcom/samsung/android/dapmanager/IoBufferData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "SemMLDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    invoke-interface {v0}, Lcom/samsung/android/dapmanager/IMlDapService;->getManufacturerCertificate()Lcom/samsung/android/dapmanager/IoBufferData;

    move-result-object v0

    return-object v0
.end method

.method public getPcr()Lcom/samsung/android/dapmanager/BufferData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "SemMLDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    invoke-interface {v0}, Lcom/samsung/android/dapmanager/IMlDapService;->getPcr()Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0
.end method

.method public initializeOta()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "SemMLDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    invoke-interface {v0}, Lcom/samsung/android/dapmanager/IMlDapService;->initializeOta()I

    move-result v0

    return v0
.end method

.method public storeDeviceCertificate([B[B[BIII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemMirrorLinkDapManager"

    const-string/jumbo v1, "MlDapService is not exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dapmanager/SemMirrorLinkDapManager;->mlDapService:Lcom/samsung/android/dapmanager/IMlDapService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/dapmanager/IMlDapService;->storeDeviceCertificate([B[B[BIII)I

    move-result v0

    return v0
.end method
