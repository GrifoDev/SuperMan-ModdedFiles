.class public abstract Landroid/bluetooth/IBluetoothHeadset$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadset.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadset"

.field static final TRANSACTION_acceptIncomingConnect:I = 0xd

.field static final TRANSACTION_bindResponse:I = 0x1a

.field static final TRANSACTION_bindResponseOnDevice:I = 0x25

.field static final TRANSACTION_clccResponse:I = 0x17

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x1b

.field static final TRANSACTION_disableWBS:I = 0x19

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x11

.field static final TRANSACTION_enableWBS:I = 0x18

.field static final TRANSACTION_getAudioRouteAllowed:I = 0x13

.field static final TRANSACTION_getAudioState:I = 0xf

.field static final TRANSACTION_getBatteryUsageHint:I = 0xc

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getFeatureSettings:I = 0x27

.field static final TRANSACTION_getHeadsetSettings:I = 0x29

.field static final TRANSACTION_getHighPriorityDevice:I = 0x24

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_getSamsungHandsfreeDeviceType:I = 0x1e

.field static final TRANSACTION_isAudioConnected:I = 0xa

.field static final TRANSACTION_isAudioOn:I = 0x10

.field static final TRANSACTION_isDualHfConnected:I = 0x1f

.field static final TRANSACTION_phoneStateChanged:I = 0x16

.field static final TRANSACTION_registerMessageListener:I = 0x22

.field static final TRANSACTION_rejectIncomingConnect:I = 0xe

.field static final TRANSACTION_roamChanged:I = 0x1c

.field static final TRANSACTION_sendMessageToHeadset:I = 0x21

.field static final TRANSACTION_sendVendorSpecificResponse:I = 0x1d

.field static final TRANSACTION_sendVendorSpecificResultCode:I = 0xb

.field static final TRANSACTION_setAudioRouteAllowed:I = 0x12

.field static final TRANSACTION_setFeatureSettings:I = 0x26

.field static final TRANSACTION_setHeadsetSettings:I = 0x28

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_startScoUsingVirtualVoiceCall:I = 0x14

.field static final TRANSACTION_startVoiceRecognition:I = 0x8

.field static final TRANSACTION_stopScoUsingVirtualVoiceCall:I = 0x15

.field static final TRANSACTION_stopVoiceRecognition:I = 0x9

.field static final TRANSACTION_switchAudio:I = 0x20

.field static final TRANSACTION_unRegisterMessageListener:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothHeadset"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothHeadset;

    return-object v0

    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_1

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_3

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :sswitch_3
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v3, 0x1

    return v3

    :sswitch_4
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v3, 0x1

    return v3

    :sswitch_5
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_4
    const/16 v18, 0x0

    goto :goto_4

    :sswitch_6
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_6

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_5
    const/16 v18, 0x0

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    :sswitch_7
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_7
    const/16 v18, 0x0

    goto :goto_7

    :sswitch_8
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_9

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_8
    const/16 v18, 0x0

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    goto :goto_9

    :sswitch_9
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_b

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_a
    const/16 v18, 0x0

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    goto :goto_b

    :sswitch_a
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_d

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_c
    const/16 v18, 0x0

    goto :goto_c

    :cond_d
    const/4 v3, 0x0

    goto :goto_d

    :sswitch_b
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v12}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_f

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_e
    const/16 v18, 0x0

    goto :goto_e

    :cond_f
    const/4 v3, 0x0

    goto :goto_f

    :sswitch_c
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_10
    const/16 v18, 0x0

    goto :goto_10

    :sswitch_d
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_12

    const/4 v3, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_11
    const/16 v18, 0x0

    goto :goto_11

    :cond_12
    const/4 v3, 0x0

    goto :goto_12

    :sswitch_e
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_14

    const/4 v3, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_13
    const/16 v18, 0x0

    goto :goto_13

    :cond_14
    const/4 v3, 0x0

    goto :goto_14

    :sswitch_f
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_15
    const/16 v18, 0x0

    goto :goto_15

    :sswitch_10
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioOn()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_16

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_16
    const/4 v3, 0x0

    goto :goto_16

    :sswitch_11
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectAudio()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_17

    const/4 v3, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_17

    :sswitch_12
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    const/16 v24, 0x1

    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setAudioRouteAllowed(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_18
    const/16 v24, 0x0

    goto :goto_18

    :sswitch_13
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getAudioRouteAllowed()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_19

    const/4 v3, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_19
    const/4 v3, 0x0

    goto :goto_19

    :sswitch_14
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_1b

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_1a
    const/16 v18, 0x0

    goto :goto_1a

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1b

    :sswitch_15
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_1d

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_1c
    const/16 v18, 0x0

    goto :goto_1c

    :cond_1d
    const/4 v3, 0x0

    goto :goto_1d

    :sswitch_16
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/IBluetoothHeadset$Stub;->phoneStateChanged(IIILjava/lang/String;I)V

    const/4 v3, 0x1

    return v3

    :sswitch_17
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v14, 0x1

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v9, p0

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v9 .. v16}, Landroid/bluetooth/IBluetoothHeadset$Stub;->clccResponse(IIIIZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_1e
    const/4 v14, 0x0

    goto :goto_1e

    :sswitch_18
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->enableWBS()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_1f

    const/4 v3, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_1f

    :sswitch_19
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disableWBS()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_20

    const/4 v3, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_20
    const/4 v3, 0x0

    goto :goto_20

    :sswitch_1a
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    const/16 v28, 0x1

    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->bindResponse(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_21
    const/16 v28, 0x0

    goto :goto_21

    :sswitch_1b
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_23

    const/4 v3, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_22
    const/16 v18, 0x0

    goto :goto_22

    :cond_23
    const/4 v3, 0x0

    goto :goto_23

    :sswitch_1c
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    const/16 v24, 0x1

    :goto_24
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->roamChanged(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_24
    const/16 v24, 0x0

    goto :goto_24

    :sswitch_1d
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendVendorSpecificResponse(ILjava/lang/String;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_25

    const/4 v3, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_25
    const/4 v3, 0x0

    goto :goto_25

    :sswitch_1e
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_26
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :cond_26
    const/16 v18, 0x0

    goto :goto_26

    :sswitch_1f
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isDualHfConnected()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_27

    const/4 v3, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_27
    const/4 v3, 0x0

    goto :goto_27

    :sswitch_20
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->switchAudio()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_28

    const/4 v3, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_28
    const/4 v3, 0x0

    goto :goto_28

    :sswitch_21
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v12}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendMessageToHeadset(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_2a

    const/4 v3, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_29
    const/16 v18, 0x0

    goto :goto_29

    :cond_2a
    const/4 v3, 0x0

    goto :goto_2a

    :sswitch_22
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/bt/hfp/IMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/bt/hfp/IMessageListener;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->registerMessageListener(ILcom/samsung/bt/hfp/IMessageListener;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_2b

    const/4 v3, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_2b
    const/4 v3, 0x0

    goto :goto_2b

    :sswitch_23
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothHeadset$Stub;->unRegisterMessageListener(I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_2c

    const/4 v3, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_2c
    const/4 v3, 0x0

    goto :goto_2c

    :sswitch_24
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getHighPriorityDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v31

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_2d

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2d
    const/4 v3, 0x1

    return v3

    :cond_2d
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    :sswitch_25
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    const/16 v29, 0x1

    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v29

    invoke-virtual {v0, v1, v5, v2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->bindResponseOnDevice(Landroid/bluetooth/BluetoothDevice;IZ)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_30

    const/4 v3, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_2e
    const/16 v18, 0x0

    goto :goto_2e

    :cond_2f
    const/16 v29, 0x0

    goto :goto_2f

    :cond_30
    const/4 v3, 0x0

    goto :goto_30

    :sswitch_26
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    const/4 v14, 0x1

    :goto_31
    move-object/from16 v9, p0

    move v10, v4

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setFeatureSettings(IILjava/lang/String;IZ)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_32

    const/4 v3, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_31
    const/4 v14, 0x0

    goto :goto_31

    :cond_32
    const/4 v3, 0x0

    goto :goto_32

    :sswitch_27
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getFeatureSettings(I)I

    move-result v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_28
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    const/16 v23, 0x1

    :goto_34
    move-object/from16 v17, p0

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    invoke-virtual/range {v17 .. v23}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setHeadsetSettings(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;IZ)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_35

    const/4 v3, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_33
    const/16 v18, 0x0

    goto :goto_33

    :cond_34
    const/16 v23, 0x0

    goto :goto_34

    :cond_35
    const/4 v3, 0x0

    goto :goto_35

    :sswitch_29
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getHeadsetSettings(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_36
    const/16 v18, 0x0

    goto :goto_36

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
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
