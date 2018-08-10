.class public abstract Landroid/bluetooth/IBluetoothHeadsetClient$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetClient.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetClient"

.field static final TRANSACTION_acceptCall:I = 0xc

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x16

.field static final TRANSACTION_dial:I = 0x12

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x17

.field static final TRANSACTION_enterPrivateMode:I = 0x10

.field static final TRANSACTION_explicitCallTransfer:I = 0x11

.field static final TRANSACTION_getAudioRouteAllowed:I = 0x19

.field static final TRANSACTION_getAudioState:I = 0x15

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getCurrentAgEvents:I = 0xb

.field static final TRANSACTION_getCurrentAgFeatures:I = 0x1a

.field static final TRANSACTION_getCurrentCalls:I = 0xa

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getLastVoiceTagNumber:I = 0x14

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_holdCall:I = 0xd

.field static final TRANSACTION_rejectCall:I = 0xe

.field static final TRANSACTION_sendDTMF:I = 0x13

.field static final TRANSACTION_setAudioRouteAllowed:I = 0x18

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_startVoiceRecognition:I = 0x8

.field static final TRANSACTION_stopVoiceRecognition:I = 0x9

.field static final TRANSACTION_terminateCall:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    return-object v0

    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    :sswitch_0
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_0

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_1

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_2
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_3

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    :sswitch_3
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    :sswitch_4
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    :sswitch_5
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_4

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_4
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :sswitch_6
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_5

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_6

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    goto :goto_6

    :sswitch_7
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_7

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_7
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_7
    const/4 v1, 0x0

    goto :goto_7

    :sswitch_8
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_8

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_8
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_9

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_8
    const/4 v1, 0x0

    goto :goto_8

    :cond_9
    const/4 v14, 0x0

    goto :goto_9

    :sswitch_9
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_a

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_a
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_b

    const/4 v14, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    :cond_b
    const/4 v14, 0x0

    goto :goto_b

    :sswitch_a
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_c

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_c
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    :cond_c
    const/4 v1, 0x0

    goto :goto_c

    :sswitch_b
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_d

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_d
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_e

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    const/4 v14, 0x1

    return v14

    :cond_d
    const/4 v1, 0x0

    goto :goto_d

    :cond_e
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    :sswitch_c
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_f

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_10

    const/4 v14, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_f
    const/4 v1, 0x0

    goto :goto_f

    :cond_10
    const/4 v14, 0x0

    goto :goto_10

    :sswitch_d
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_11

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_11
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_12

    const/4 v14, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_11
    const/4 v1, 0x0

    goto :goto_11

    :cond_12
    const/4 v14, 0x0

    goto :goto_12

    :sswitch_e
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_13

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_13
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_14

    const/4 v14, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_13
    const/4 v1, 0x0

    goto :goto_13

    :cond_14
    const/4 v14, 0x0

    goto :goto_14

    :sswitch_f
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_15

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_16

    sget-object v14, Landroid/bluetooth/BluetoothHeadsetClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothHeadsetClientCall;

    :goto_16
    invoke-virtual {p0, v1, v5}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_17

    const/4 v14, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_15
    const/4 v1, 0x0

    goto :goto_15

    :cond_16
    const/4 v5, 0x0

    goto :goto_16

    :cond_17
    const/4 v14, 0x0

    goto :goto_17

    :sswitch_10
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_18

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_19

    const/4 v14, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_18
    const/4 v1, 0x0

    goto :goto_18

    :cond_19
    const/4 v14, 0x0

    goto :goto_19

    :sswitch_11
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1a

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_1a
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_1b

    const/4 v14, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_1a
    const/4 v1, 0x0

    goto :goto_1a

    :cond_1b
    const/4 v14, 0x0

    goto :goto_1b

    :sswitch_12
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1c

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_1d

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v14}, Landroid/bluetooth/BluetoothHeadsetClientCall;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1d
    const/4 v14, 0x1

    return v14

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1c

    :cond_1d
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    :sswitch_13
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1e

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_1f

    const/4 v14, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1f
    const/4 v14, 0x0

    goto :goto_1f

    :sswitch_14
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_20

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_20
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_21

    const/4 v14, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_20
    const/4 v1, 0x0

    goto :goto_20

    :cond_21
    const/4 v14, 0x0

    goto :goto_21

    :sswitch_15
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_22

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_22
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_22
    const/4 v1, 0x0

    goto :goto_22

    :sswitch_16
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_23

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_23
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_24

    const/4 v14, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_23
    const/4 v1, 0x0

    goto :goto_23

    :cond_24
    const/4 v14, 0x0

    goto :goto_24

    :sswitch_17
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_25

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_25
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_26

    const/4 v14, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_25
    const/4 v1, 0x0

    goto :goto_25

    :cond_26
    const/4 v14, 0x0

    goto :goto_26

    :sswitch_18
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_27

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_28

    const/4 v7, 0x1

    :goto_28
    invoke-virtual {p0, v1, v7}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    :cond_27
    const/4 v1, 0x0

    goto :goto_27

    :cond_28
    const/4 v7, 0x0

    goto :goto_28

    :sswitch_19
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_29

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_29
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_2a

    const/4 v14, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_29
    const/4 v1, 0x0

    goto :goto_29

    :cond_2a
    const/4 v14, 0x0

    goto :goto_2a

    :sswitch_1a
    const-string/jumbo v14, "android.bluetooth.IBluetoothHeadsetClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2b

    sget-object v14, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_2b
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_2c

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2c
    const/4 v14, 0x1

    return v14

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2b

    :cond_2c
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
