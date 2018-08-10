.class public abstract Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;
.super Landroid/os/Binder;
.source "IGateKeeperServiceMDFPP.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperServiceMDFPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.gatekeeper.IGateKeeperService"

.field static final TRANSACTION_clearSecureUserId:I = 0x5

.field static final TRANSACTION_enroll:I = 0x1

.field static final TRANSACTION_getSecureUserId:I = 0x4

.field static final TRANSACTION_verify:I = 0x2

.field static final TRANSACTION_verifyChallenge:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p0, p0, v0}, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/gatekeeper/IGateKeeperService;

    return-object v0

    :cond_1
    new-instance v1, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v1, v6, v4, v5}, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v1, v6, v4}, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_4
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;->getSecureUserId(I)J

    move-result-wide v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    return v0

    :sswitch_5
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;->clearSecureUserId(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
