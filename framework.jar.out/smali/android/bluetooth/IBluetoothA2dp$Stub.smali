.class public abstract Landroid/bluetooth/IBluetoothA2dp$Stub;
.super Landroid/os/Binder;
.source "IBluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothA2dp"

.field static final TRANSACTION_adjustAvrcpAbsoluteVolume:I = 0x12

.field static final TRANSACTION_changeCodec:I = 0x1f

.field static final TRANSACTION_commandForMonitoring:I = 0x9

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disableOptionalCodecs:I = 0x18

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_enableOptionalCodecs:I = 0x17

.field static final TRANSACTION_getActiveStreamDevice:I = 0x4

.field static final TRANSACTION_getCodecEnabled:I = 0x1d

.field static final TRANSACTION_getCodecStatus:I = 0x15

.field static final TRANSACTION_getConnectedDevices:I = 0xb

.field static final TRANSACTION_getConnectionState:I = 0xd

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0xc

.field static final TRANSACTION_getOptionalCodecsEnabled:I = 0x1a

.field static final TRANSACTION_getPriority:I = 0xf

.field static final TRANSACTION_getSupportCodec:I = 0x1c

.field static final TRANSACTION_isA2dpPlaying:I = 0x14

.field static final TRANSACTION_isAbsoluteVolumeControl:I = 0x8

.field static final TRANSACTION_isAvrcpAbsoluteVolumeDeviceActive:I = 0xa

.field static final TRANSACTION_isAvrcpAbsoluteVolumeSupported:I = 0x11

.field static final TRANSACTION_isDualPlayEnabled:I = 0x6

.field static final TRANSACTION_registerA2dpDevCallBack:I = 0x21

.field static final TRANSACTION_selectstream:I = 0x3

.field static final TRANSACTION_setAbsoluteVolumeControl:I = 0x7

.field static final TRANSACTION_setAvrcpAbsoluteVolume:I = 0x13

.field static final TRANSACTION_setCodecConfigPreference:I = 0x16

.field static final TRANSACTION_setCodecEnabled:I = 0x1e

.field static final TRANSACTION_setContentProtectionValue:I = 0x10

.field static final TRANSACTION_setDualPlayMode:I = 0x5

.field static final TRANSACTION_setEnableLdacMode:I = 0x20

.field static final TRANSACTION_setOptionalCodecsEnabled:I = 0x1b

.field static final TRANSACTION_setPriority:I = 0xe

.field static final TRANSACTION_supportsOptionalCodecs:I = 0x19

.field static final TRANSACTION_unregisterA2dpDevCallBack:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothA2dp"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothA2dp;

    return-object v0

    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v17

    return v17

    :sswitch_0
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :sswitch_1
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_0

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_2

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_3

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    :sswitch_3
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_4

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_5

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    goto :goto_5

    :sswitch_4
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_6

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/16 v17, 0x1

    return v17

    :cond_6
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :sswitch_5
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_7

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setDualPlayMode(Z)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_8

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_7
    const/4 v7, 0x0

    goto :goto_7

    :cond_8
    const/16 v17, 0x0

    goto :goto_8

    :sswitch_6
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isDualPlayEnabled()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_9

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_9
    const/16 v17, 0x0

    goto :goto_9

    :sswitch_7
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_a

    const/4 v7, 0x1

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setAbsoluteVolumeControl(Z)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_b

    const/16 v17, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_a
    const/4 v7, 0x0

    goto :goto_a

    :cond_b
    const/16 v17, 0x0

    goto :goto_b

    :sswitch_8
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isAbsoluteVolumeControl()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_c

    const/16 v17, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_c
    const/16 v17, 0x0

    goto :goto_c

    :sswitch_9
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/bluetooth/IBluetoothA2dp$Stub;->commandForMonitoring(Ljava/lang/String;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_d

    const/16 v17, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_d
    const/16 v17, 0x0

    goto :goto_d

    :sswitch_a
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isAvrcpAbsoluteVolumeDeviceActive()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_e

    const/16 v17, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_e
    const/16 v17, 0x0

    goto :goto_e

    :sswitch_b
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v17, 0x1

    return v17

    :sswitch_c
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v17, 0x1

    return v17

    :sswitch_d
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_f

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    :sswitch_e
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_10

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_11

    const/16 v17, 0x1

    :goto_11
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_10
    const/4 v4, 0x0

    goto :goto_10

    :cond_11
    const/16 v17, 0x0

    goto :goto_11

    :sswitch_f
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_12

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_12
    const/4 v4, 0x0

    goto :goto_12

    :sswitch_10
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setContentProtectionValue(I)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_13

    const/16 v17, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_13
    const/16 v17, 0x0

    goto :goto_13

    :sswitch_11
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_14

    const/16 v17, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_14
    const/16 v17, 0x0

    goto :goto_14

    :sswitch_12
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->adjustAvrcpAbsoluteVolume(I)V

    const/16 v17, 0x1

    return v17

    :sswitch_13
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setAvrcpAbsoluteVolume(I)V

    const/16 v17, 0x1

    return v17

    :sswitch_14
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_15

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_16

    const/16 v17, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    :cond_16
    const/16 v17, 0x0

    goto :goto_16

    :sswitch_15
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_17

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/bluetooth/BluetoothCodecStatus;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17
    const/16 v17, 0x1

    return v17

    :cond_17
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    :sswitch_16
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_18

    sget-object v17, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothCodecConfig;

    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setCodecConfigPreference(Landroid/bluetooth/BluetoothCodecConfig;)V

    const/16 v17, 0x1

    return v17

    :cond_18
    const/4 v3, 0x0

    goto :goto_18

    :sswitch_17
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->enableOptionalCodecs()V

    const/16 v17, 0x1

    return v17

    :sswitch_18
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disableOptionalCodecs()V

    const/16 v17, 0x1

    return v17

    :sswitch_19
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_19

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_19
    const/4 v4, 0x0

    goto :goto_19

    :sswitch_1a
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1a

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    :sswitch_1b
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1b

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    const/16 v17, 0x1

    return v17

    :cond_1b
    const/4 v4, 0x0

    goto :goto_1b

    :sswitch_1c
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1c

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getSupportCodec(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_1c
    const/4 v4, 0x0

    goto :goto_1c

    :sswitch_1d
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1d

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getCodecEnabled(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_1d
    const/4 v4, 0x0

    goto :goto_1d

    :sswitch_1e
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1e

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v11}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setCodecEnabled(Landroid/bluetooth/BluetoothDevice;II)V

    const/16 v17, 0x1

    return v17

    :cond_1e
    const/4 v4, 0x0

    goto :goto_1e

    :sswitch_1f
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1f

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/bluetooth/IBluetoothA2dp$Stub;->changeCodec(Landroid/bluetooth/BluetoothDevice;I)V

    const/16 v17, 0x1

    return v17

    :cond_1f
    const/4 v4, 0x0

    goto :goto_1f

    :sswitch_20
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_20

    sget-object v17, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_21

    const/4 v10, 0x1

    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setEnableLdacMode(Landroid/bluetooth/BluetoothDevice;Z)V

    const/16 v17, 0x1

    return v17

    :cond_20
    const/4 v4, 0x0

    goto :goto_20

    :cond_21
    const/4 v10, 0x0

    goto :goto_21

    :sswitch_21
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothA2dpDevCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dpDevCallBack;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothA2dp$Stub;->registerA2dpDevCallBack(Landroid/bluetooth/IBluetoothA2dpDevCallBack;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_22

    const/16 v17, 0x1

    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_22
    const/16 v17, 0x0

    goto :goto_22

    :sswitch_22
    const-string/jumbo v17, "android.bluetooth.IBluetoothA2dp"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->unregisterA2dpDevCallBack()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_23

    const/16 v17, 0x1

    :goto_23
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_23
    const/16 v17, 0x0

    goto :goto_23

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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
