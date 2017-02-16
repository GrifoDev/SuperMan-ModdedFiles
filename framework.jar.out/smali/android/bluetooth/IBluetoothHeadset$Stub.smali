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

.field static final TRANSACTION_bindResponse:I = 0x1c

.field static final TRANSACTION_bindResponseOnDevice:I = 0x25

.field static final TRANSACTION_clccResponse:I = 0x19

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x11

.field static final TRANSACTION_disableWBS:I = 0x1b

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x12

.field static final TRANSACTION_enableWBS:I = 0x1a

.field static final TRANSACTION_getAudioRouteAllowed:I = 0x14

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

.field static final TRANSACTION_phoneStateChanged:I = 0x17

.field static final TRANSACTION_registerMessageListener:I = 0x22

.field static final TRANSACTION_rejectIncomingConnect:I = 0xe

.field static final TRANSACTION_roamChanged:I = 0x18

.field static final TRANSACTION_sendMessageToHeadset:I = 0x21

.field static final TRANSACTION_sendVendorSpecificResponse:I = 0x1d

.field static final TRANSACTION_sendVendorSpecificResultCode:I = 0xb

.field static final TRANSACTION_setAudioRouteAllowed:I = 0x13

.field static final TRANSACTION_setFeatureSettings:I = 0x26

.field static final TRANSACTION_setHeadsetSettings:I = 0x28

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_startScoUsingVirtualVoiceCall:I = 0x15

.field static final TRANSACTION_startVoiceRecognition:I = 0x8

.field static final TRANSACTION_stopScoUsingVirtualVoiceCall:I = 0x16

.field static final TRANSACTION_stopVoiceRecognition:I = 0x9

.field static final TRANSACTION_switchAudio:I = 0x20

.field static final TRANSACTION_unRegisterMessageListener:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothHeadset"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothHeadset;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 35
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 609
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 47
    :sswitch_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x1

    return v3

    .line 52
    :sswitch_1
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 60
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    .line 61
    .local v34, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v34, :cond_1

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v3, 0x1

    return v3

    .line 58
    .end local v34    # "_result":Z
    :cond_0
    const/16 v18, 0x0

    .local v18, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 62
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v34    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 67
    .end local v34    # "_result":Z
    :sswitch_2
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 75
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    .line 76
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v34, :cond_3

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v3, 0x1

    return v3

    .line 73
    .end local v34    # "_result":Z
    :cond_2
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 77
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v34    # "_result":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 82
    .end local v34    # "_result":Z
    :sswitch_3
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v33

    .line 84
    .local v33, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 86
    const/4 v3, 0x1

    return v3

    .line 90
    .end local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_4
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v25

    .line 93
    .local v25, "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v33

    .line 94
    .restart local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 96
    const/4 v3, 0x1

    return v3

    .line 100
    .end local v25    # "_arg0":[I
    .end local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_5
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 108
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v30

    .line 109
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v3, 0x1

    return v3

    .line 106
    .end local v30    # "_result":I
    :cond_4
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 115
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 124
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 125
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v34

    .line 126
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v34, :cond_6

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v3, 0x1

    return v3

    .line 121
    .end local v5    # "_arg1":I
    .end local v34    # "_result":Z
    :cond_5
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 127
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "_arg1":I
    .restart local v34    # "_result":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    .line 132
    .end local v5    # "_arg1":I
    .end local v34    # "_result":Z
    :sswitch_7
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 135
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 140
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v30

    .line 141
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v3, 0x1

    return v3

    .line 138
    .end local v30    # "_result":I
    :cond_7
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 147
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 150
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 155
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    .line 156
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v34, :cond_9

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v3, 0x1

    return v3

    .line 153
    .end local v34    # "_result":Z
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .line 157
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v34    # "_result":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_9

    .line 162
    .end local v34    # "_result":Z
    :sswitch_9
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 165
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 170
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    .line 171
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v34, :cond_b

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v3, 0x1

    return v3

    .line 168
    .end local v34    # "_result":Z
    :cond_a
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 172
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v34    # "_result":Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_b

    .line 177
    .end local v34    # "_result":Z
    :sswitch_a
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 180
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 185
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    .line 186
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v34, :cond_d

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v3, 0x1

    return v3

    .line 183
    .end local v34    # "_result":Z
    :cond_c
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 187
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v34    # "_result":Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_d

    .line 192
    .end local v34    # "_result":Z
    :sswitch_b
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 195
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 201
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 203
    .local v27, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 204
    .local v12, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v12}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v34

    .line 205
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v34, :cond_f

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v3, 0x1

    return v3

    .line 198
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v27    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :cond_e
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .line 206
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v12    # "_arg2":Ljava/lang/String;
    .restart local v27    # "_arg1":Ljava/lang/String;
    .restart local v34    # "_result":Z
    :cond_f
    const/4 v3, 0x0

    goto :goto_f

    .line 211
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v27    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_c
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 214
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 219
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v30

    .line 220
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v3, 0x1

    return v3

    .line 217
    .end local v30    # "_result":I
    :cond_10
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .line 226
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_d
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 229
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 234
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    .line 235
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v34, :cond_12

    const/4 v3, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v3, 0x1

    return v3

    .line 232
    .end local v34    # "_result":Z
    :cond_11
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    .line 236
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v34    # "_result":Z
    :cond_12
    const/4 v3, 0x0

    goto :goto_12

    .line 241
    .end local v34    # "_result":Z
    :sswitch_e
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 244
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 249
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    .line 250
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v34, :cond_14

    const/4 v3, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v3, 0x1

    return v3

    .line 247
    .end local v34    # "_result":Z
    :cond_13
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .line 251
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v34    # "_result":Z
    :cond_14
    const/4 v3, 0x0

    goto :goto_14

    .line 256
    .end local v34    # "_result":Z
    :sswitch_f
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 259
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 264
    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v30

    .line 265
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v3, 0x1

    return v3

    .line 262
    .end local v30    # "_result":I
    :cond_15
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    .line 271
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_10
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioOn()Z

    move-result v34

    .line 273
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v34, :cond_16

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/4 v3, 0x1

    return v3

    .line 274
    :cond_16
    const/4 v3, 0x0

    goto :goto_16

    .line 279
    .end local v34    # "_result":Z
    :sswitch_11
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 282
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 287
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    .line 288
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v34, :cond_18

    const/4 v3, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v3, 0x1

    return v3

    .line 285
    .end local v34    # "_result":Z
    :cond_17
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    .line 289
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v34    # "_result":Z
    :cond_18
    const/4 v3, 0x0

    goto :goto_18

    .line 294
    .end local v34    # "_result":Z
    :sswitch_12
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectAudio()Z

    move-result v34

    .line 296
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v34, :cond_19

    const/4 v3, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v3, 0x1

    return v3

    .line 297
    :cond_19
    const/4 v3, 0x0

    goto :goto_19

    .line 302
    .end local v34    # "_result":Z
    :sswitch_13
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    const/16 v24, 0x1

    .line 305
    .local v24, "_arg0":Z
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setAudioRouteAllowed(Z)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v3, 0x1

    return v3

    .line 304
    .end local v24    # "_arg0":Z
    :cond_1a
    const/16 v24, 0x0

    goto :goto_1a

    .line 311
    :sswitch_14
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getAudioRouteAllowed()Z

    move-result v34

    .line 313
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v34, :cond_1b

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v3, 0x1

    return v3

    .line 314
    :cond_1b
    const/4 v3, 0x0

    goto :goto_1b

    .line 319
    .end local v34    # "_result":Z
    :sswitch_15
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 322
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 327
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    .line 328
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v34, :cond_1d

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v3, 0x1

    return v3

    .line 325
    .end local v34    # "_result":Z
    :cond_1c
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1c

    .line 329
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v34    # "_result":Z
    :cond_1d
    const/4 v3, 0x0

    goto :goto_1d

    .line 334
    .end local v34    # "_result":Z
    :sswitch_16
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 337
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 342
    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    .line 343
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v34, :cond_1f

    const/4 v3, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v3, 0x1

    return v3

    .line 340
    .end local v34    # "_result":Z
    :cond_1e
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1e

    .line 344
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v34    # "_result":Z
    :cond_1f
    const/4 v3, 0x0

    goto :goto_1f

    .line 349
    .end local v34    # "_result":Z
    :sswitch_17
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 353
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 355
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 357
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg4":I
    move-object/from16 v3, p0

    .line 360
    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/IBluetoothHeadset$Stub;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    const/4 v3, 0x1

    return v3

    .line 366
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":I
    :sswitch_18
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    const/16 v24, 0x1

    .line 369
    .restart local v24    # "_arg0":Z
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->roamChanged(Z)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    const/4 v3, 0x1

    return v3

    .line 368
    .end local v24    # "_arg0":Z
    :cond_20
    const/16 v24, 0x0

    goto :goto_20

    .line 375
    :sswitch_19
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 379
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 381
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 383
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 385
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    const/4 v14, 0x1

    .line 387
    .local v14, "_arg4":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 389
    .local v15, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "_arg6":I
    move-object/from16 v9, p0

    move v10, v4

    move v11, v5

    move v12, v6

    .line 390
    invoke-virtual/range {v9 .. v16}, Landroid/bluetooth/IBluetoothHeadset$Stub;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    const/4 v3, 0x1

    return v3

    .line 385
    .end local v14    # "_arg4":Z
    .end local v15    # "_arg5":Ljava/lang/String;
    .end local v16    # "_arg6":I
    :cond_21
    const/4 v14, 0x0

    .restart local v14    # "_arg4":Z
    goto :goto_21

    .line 396
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":Z
    :sswitch_1a
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->enableWBS()Z

    move-result v34

    .line 398
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    if-eqz v34, :cond_22

    const/4 v3, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    const/4 v3, 0x1

    return v3

    .line 399
    :cond_22
    const/4 v3, 0x0

    goto :goto_22

    .line 404
    .end local v34    # "_result":Z
    :sswitch_1b
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disableWBS()Z

    move-result v34

    .line 406
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-eqz v34, :cond_23

    const/4 v3, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    const/4 v3, 0x1

    return v3

    .line 407
    :cond_23
    const/4 v3, 0x0

    goto :goto_23

    .line 412
    .end local v34    # "_result":Z
    :sswitch_1c
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 416
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    const/16 v28, 0x1

    .line 417
    .local v28, "_arg1":Z
    :goto_24
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->bindResponse(IZ)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/4 v3, 0x1

    return v3

    .line 416
    .end local v28    # "_arg1":Z
    :cond_24
    const/16 v28, 0x0

    goto :goto_24

    .line 423
    .end local v4    # "_arg0":I
    :sswitch_1d
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 427
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 428
    .restart local v27    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendVendorSpecificResponse(ILjava/lang/String;)Z

    move-result v34

    .line 429
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    if-eqz v34, :cond_25

    const/4 v3, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    const/4 v3, 0x1

    return v3

    .line 430
    :cond_25
    const/4 v3, 0x0

    goto :goto_25

    .line 435
    .end local v4    # "_arg0":I
    .end local v27    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_1e
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    .line 438
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 443
    :goto_26
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v32

    .line 444
    .local v32, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    const/4 v3, 0x1

    return v3

    .line 441
    .end local v32    # "_result":Ljava/lang/String;
    :cond_26
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_26

    .line 450
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1f
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isDualHfConnected()Z

    move-result v34

    .line 452
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v34, :cond_27

    const/4 v3, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    const/4 v3, 0x1

    return v3

    .line 453
    :cond_27
    const/4 v3, 0x0

    goto :goto_27

    .line 458
    .end local v34    # "_result":Z
    :sswitch_20
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->switchAudio()Z

    move-result v34

    .line 460
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v34, :cond_28

    const/4 v3, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/4 v3, 0x1

    return v3

    .line 461
    :cond_28
    const/4 v3, 0x0

    goto :goto_28

    .line 466
    .end local v34    # "_result":Z
    :sswitch_21
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    .line 469
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 475
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 477
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 478
    .restart local v12    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v12}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendMessageToHeadset(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z

    move-result v34

    .line 479
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v34, :cond_2a

    const/4 v3, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    const/4 v3, 0x1

    return v3

    .line 472
    .end local v5    # "_arg1":I
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v34    # "_result":Z
    :cond_29
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_29

    .line 480
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "_arg1":I
    .restart local v12    # "_arg2":Ljava/lang/String;
    .restart local v34    # "_result":Z
    :cond_2a
    const/4 v3, 0x0

    goto :goto_2a

    .line 485
    .end local v5    # "_arg1":I
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_22
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 489
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/bt/hfp/IMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/bt/hfp/IMessageListener;

    move-result-object v26

    .line 490
    .local v26, "_arg1":Lcom/samsung/bt/hfp/IMessageListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->registerMessageListener(ILcom/samsung/bt/hfp/IMessageListener;)Z

    move-result v34

    .line 491
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v34, :cond_2b

    const/4 v3, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/4 v3, 0x1

    return v3

    .line 492
    :cond_2b
    const/4 v3, 0x0

    goto :goto_2b

    .line 497
    .end local v4    # "_arg0":I
    .end local v26    # "_arg1":Lcom/samsung/bt/hfp/IMessageListener;
    .end local v34    # "_result":Z
    :sswitch_23
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 500
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothHeadset$Stub;->unRegisterMessageListener(I)Z

    move-result v34

    .line 501
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v34, :cond_2c

    const/4 v3, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    const/4 v3, 0x1

    return v3

    .line 502
    :cond_2c
    const/4 v3, 0x0

    goto :goto_2c

    .line 507
    .end local v4    # "_arg0":I
    .end local v34    # "_result":Z
    :sswitch_24
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getHighPriorityDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v31

    .line 509
    .local v31, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v31, :cond_2d

    .line 511
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v3, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 517
    :goto_2d
    const/4 v3, 0x1

    return v3

    .line 515
    :cond_2d
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 521
    .end local v31    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_25
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    .line 524
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 530
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 532
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    const/16 v29, 0x1

    .line 533
    .local v29, "_arg2":Z
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v29

    invoke-virtual {v0, v1, v5, v2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->bindResponseOnDevice(Landroid/bluetooth/BluetoothDevice;IZ)Z

    move-result v34

    .line 534
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    if-eqz v34, :cond_30

    const/4 v3, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    const/4 v3, 0x1

    return v3

    .line 527
    .end local v5    # "_arg1":I
    .end local v29    # "_arg2":Z
    .end local v34    # "_result":Z
    :cond_2e
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2e

    .line 532
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "_arg1":I
    :cond_2f
    const/16 v29, 0x0

    goto :goto_2f

    .line 535
    .restart local v29    # "_arg2":Z
    .restart local v34    # "_result":Z
    :cond_30
    const/4 v3, 0x0

    goto :goto_30

    .line 540
    .end local v5    # "_arg1":I
    .end local v29    # "_arg2":Z
    .end local v34    # "_result":Z
    :sswitch_26
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 544
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 546
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 548
    .restart local v12    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 550
    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    const/4 v14, 0x1

    .local v14, "_arg4":Z
    :goto_31
    move-object/from16 v9, p0

    move v10, v4

    move v11, v5

    .line 551
    invoke-virtual/range {v9 .. v14}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setFeatureSettings(IILjava/lang/String;IZ)Z

    move-result v34

    .line 552
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    if-eqz v34, :cond_32

    const/4 v3, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    const/4 v3, 0x1

    return v3

    .line 550
    .end local v14    # "_arg4":Z
    .end local v34    # "_result":Z
    :cond_31
    const/4 v14, 0x0

    goto :goto_31

    .line 553
    .restart local v14    # "_arg4":Z
    .restart local v34    # "_result":Z
    :cond_32
    const/4 v3, 0x0

    goto :goto_32

    .line 558
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":Z
    .end local v34    # "_result":Z
    :sswitch_27
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 561
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getFeatureSettings(I)I

    move-result v30

    .line 562
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v3, 0x1

    return v3

    .line 568
    .end local v4    # "_arg0":I
    .end local v30    # "_result":I
    :sswitch_28
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    .line 571
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 577
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 579
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 581
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 583
    .restart local v7    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 585
    .restart local v8    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    const/16 v23, 0x1

    .local v23, "_arg5":Z
    :goto_34
    move-object/from16 v17, p0

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    .line 586
    invoke-virtual/range {v17 .. v23}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setHeadsetSettings(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;IZ)Z

    move-result v34

    .line 587
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    if-eqz v34, :cond_35

    const/4 v3, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    const/4 v3, 0x1

    return v3

    .line 574
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":I
    .end local v23    # "_arg5":Z
    .end local v34    # "_result":Z
    :cond_33
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_33

    .line 585
    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "_arg1":I
    .restart local v6    # "_arg2":I
    .restart local v7    # "_arg3":Ljava/lang/String;
    .restart local v8    # "_arg4":I
    :cond_34
    const/16 v23, 0x0

    goto :goto_34

    .line 588
    .restart local v23    # "_arg5":Z
    .restart local v34    # "_result":Z
    :cond_35
    const/4 v3, 0x0

    goto :goto_35

    .line 593
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":I
    .end local v23    # "_arg5":Z
    .end local v34    # "_result":Z
    :sswitch_29
    const-string/jumbo v3, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    .line 596
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 602
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 603
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getHeadsetSettings(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v30

    .line 604
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/4 v3, 0x1

    return v3

    .line 599
    .end local v5    # "_arg1":I
    .end local v30    # "_result":I
    :cond_36
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_36

    .line 43
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
