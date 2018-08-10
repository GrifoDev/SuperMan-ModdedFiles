.class Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGateKeeperServiceMDFPP.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearSecureUserId(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string/jumbo v2, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    if-eqz p3, :cond_0

    array-length v5, p3

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    :cond_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    if-eqz p4, :cond_1

    array-length v5, p4

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    :cond_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v5, p0, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v1, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/gatekeeper/GateKeeperResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-lez v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    array-length v5, p3

    new-array v5, v5, [B

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_2
    if-lez v4, :cond_3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    array-length v5, p4

    new-array v5, v5, [B

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-gtz v3, :cond_4

    if-lez v4, :cond_5

    :cond_4
    iget-object v5, p0, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const-string/jumbo v6, "android.service.gatekeeper.IGateKeeperService"

    const/16 v7, 0x65

    const/16 v8, 0x10

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/security/MemoryWipeUtils;->clear(Landroid/os/IBinder;Ljava/lang/String;II)V

    :cond_5
    return-object v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-lez v3, :cond_7

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    array-length v6, p3

    new-array v6, v6, [B

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_7
    if-lez v4, :cond_8

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    array-length v6, p4

    new-array v6, v6, [B

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    return-object v0
.end method

.method public getSecureUserId(I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string/jumbo v4, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    if-eqz p3, :cond_0

    array-length v4, p3

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    :cond_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v4, p0, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/gatekeeper/GateKeeperResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-lez v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    array-length v4, p3

    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-lez v3, :cond_2

    iget-object v4, p0, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const-string/jumbo v5, "android.service.gatekeeper.IGateKeeperService"

    const/16 v6, 0x65

    const/16 v7, 0x10

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/security/MemoryWipeUtils;->clear(Landroid/os/IBinder;Ljava/lang/String;II)V

    :cond_2
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-lez v3, :cond_4

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    array-length v5, p3

    new-array v5, v5, [B

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    if-eqz p5, :cond_0

    array-length v4, p5

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    :cond_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v4, p0, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/gatekeeper/GateKeeperResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-lez v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    array-length v4, p5

    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-lez v3, :cond_2

    iget-object v4, p0, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const-string/jumbo v5, "android.service.gatekeeper.IGateKeeperService"

    const/16 v6, 0x65

    const/16 v7, 0x10

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/security/MemoryWipeUtils;->clear(Landroid/os/IBinder;Ljava/lang/String;II)V

    :cond_2
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-lez v3, :cond_4

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    array-length v5, p5

    new-array v5, v5, [B

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method
