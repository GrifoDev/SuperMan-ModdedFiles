.class public abstract Landroid/net/IEthernetManager$Stub;
.super Landroid/os/Binder;
.source "IEthernetManager.java"

# interfaces
.implements Landroid/net/IEthernetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IEthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IEthernetManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IEthernetManager"

.field static final TRANSACTION_UpdateEthDevInfo:I = 0xc

.field static final TRANSACTION_addListener:I = 0x4

.field static final TRANSACTION_getConfiguration:I = 0x1

.field static final TRANSACTION_getEthernetServiceMessenger:I = 0xd

.field static final TRANSACTION_getSavedEthConfig:I = 0x9

.field static final TRANSACTION_getSavedProxyInfo:I = 0xb

.field static final TRANSACTION_getSavedProxySettings:I = 0xa

.field static final TRANSACTION_getUserDisabled:I = 0x7

.field static final TRANSACTION_isAvailable:I = 0x3

.field static final TRANSACTION_isEthConnected:I = 0x8

.field static final TRANSACTION_removeListener:I = 0x5

.field static final TRANSACTION_setConfiguration:I = 0x2

.field static final TRANSACTION_setUserDisabled:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.IEthernetManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IEthernetManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.net.IEthernetManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IEthernetManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/IEthernetManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/net/IEthernetManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IEthernetManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    :sswitch_0
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_1
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getConfiguration()Landroid/net/IpConfiguration;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_0

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v13}, Landroid/net/IpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v13, 0x1

    return v13

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1

    sget-object v13, Landroid/net/IpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpConfiguration;

    :goto_1
    invoke-virtual {p0, v3}, Landroid/net/IEthernetManager$Stub;->setConfiguration(Landroid/net/IpConfiguration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->isAvailable()Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_2

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :sswitch_4
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/IEthernetManager$Stub;->addListener(Landroid/net/IEthernetServiceListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_5
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/IEthernetManager$Stub;->removeListener(Landroid/net/IEthernetServiceListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_6
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p0, v4}, Landroid/net/IEthernetManager$Stub;->setUserDisabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :sswitch_7
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getUserDisabled()Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_4

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    :sswitch_8
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->isEthConnected()Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_5

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    :sswitch_9
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getSavedEthConfig()Landroid/net/EthernetDevInfo;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_6

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v13}, Landroid/net/EthernetDevInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/4 v13, 0x1

    return v13

    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :sswitch_a
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getSavedProxySettings()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :sswitch_b
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getSavedProxyInfo()Landroid/net/ProxyInfo;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_7

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v13}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/4 v13, 0x1

    return v13

    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :sswitch_c
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_8

    sget-object v13, Landroid/net/EthernetDevInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/EthernetDevInfo;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_9

    sget-object v13, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ProxyInfo;

    :goto_9
    invoke-virtual {p0, v1, v5, v6}, Landroid/net/IEthernetManager$Stub;->UpdateEthDevInfo(Landroid/net/EthernetDevInfo;ILandroid/net/ProxyInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_8
    const/4 v1, 0x0

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    goto :goto_9

    :sswitch_d
    const-string/jumbo v13, "android.net.IEthernetManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getEthernetServiceMessenger()Landroid/os/Messenger;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_a

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v13}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/4 v13, 0x1

    return v13

    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
