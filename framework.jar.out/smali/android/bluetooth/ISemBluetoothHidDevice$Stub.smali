.class public abstract Landroid/bluetooth/ISemBluetoothHidDevice$Stub;
.super Landroid/os/Binder;
.source "ISemBluetoothHidDevice.java"

# interfaces
.implements Landroid/bluetooth/ISemBluetoothHidDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/ISemBluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/ISemBluetoothHidDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.ISemBluetoothHidDevice"

.field static final TRANSACTION_connect:I = 0x8

.field static final TRANSACTION_connect_to:I = 0x9

.field static final TRANSACTION_disconnect:I = 0xa

.field static final TRANSACTION_isPreoccupied:I = 0x2

.field static final TRANSACTION_registerApp:I = 0x1

.field static final TRANSACTION_replyReport:I = 0x5

.field static final TRANSACTION_reportError:I = 0x6

.field static final TRANSACTION_sendReport:I = 0x4

.field static final TRANSACTION_unplug:I = 0x7

.field static final TRANSACTION_unregisterApp:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.bluetooth.ISemBluetoothHidDevice"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/ISemBluetoothHidDevice;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/bluetooth/ISemBluetoothHidDevice;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/ISemBluetoothHidDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 183
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 43
    :sswitch_0
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x1

    return v1

    .line 48
    :sswitch_1
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    .line 57
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    sget-object v1, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;

    .line 64
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    sget-object v1, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;

    .line 71
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    sget-object v1, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;

    .line 78
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v6

    .local v6, "_arg4":Landroid/bluetooth/ISemBluetoothHidDeviceCallback;
    move-object v1, p0

    .line 79
    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;->registerApp(Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;Landroid/bluetooth/ISemBluetoothHidDeviceCallback;)Z

    move-result v13

    .line 80
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v1, 0x1

    return v1

    .line 54
    .end local v6    # "_arg4":Landroid/bluetooth/ISemBluetoothHidDeviceCallback;
    .end local v13    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
    goto :goto_0

    .line 61
    .end local v2    # "_arg0":Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg1":Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;
    goto :goto_1

    .line 68
    .end local v3    # "_arg1":Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;
    :cond_2
    const/4 v4, 0x0

    .local v4, "_arg2":Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;
    goto :goto_2

    .line 75
    .end local v4    # "_arg2":Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;
    :cond_3
    const/4 v5, 0x0

    .local v5, "_arg3":Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;
    goto :goto_3

    .line 81
    .end local v5    # "_arg3":Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;
    .restart local v6    # "_arg4":Landroid/bluetooth/ISemBluetoothHidDeviceCallback;
    .restart local v13    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 86
    .end local v6    # "_arg4":Landroid/bluetooth/ISemBluetoothHidDeviceCallback;
    .end local v13    # "_result":Z
    :sswitch_2
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;->isPreoccupied()Z

    move-result v13

    .line 88
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v13, :cond_5

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v1, 0x1

    return v1

    .line 89
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 94
    .end local v13    # "_result":Z
    :sswitch_3
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    sget-object v1, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    .line 102
    :goto_6
    invoke-virtual {p0, v2}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;->unregisterApp(Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;)Z

    move-result v13

    .line 103
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v13, :cond_7

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v1, 0x1

    return v1

    .line 100
    .end local v13    # "_result":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
    goto :goto_6

    .line 104
    .end local v2    # "_arg0":Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
    .restart local v13    # "_result":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_7

    .line 109
    .end local v13    # "_result":Z
    :sswitch_4
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 113
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 114
    .local v11, "_arg1":[B
    invoke-virtual {p0, v8, v11}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;->sendReport(I[B)Z

    move-result v13

    .line 115
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v13, :cond_8

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v1, 0x1

    return v1

    .line 116
    :cond_8
    const/4 v1, 0x0

    goto :goto_8

    .line 121
    .end local v8    # "_arg0":I
    .end local v11    # "_arg1":[B
    .end local v13    # "_result":Z
    :sswitch_5
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 125
    .local v7, "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v10

    .line 127
    .local v10, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 128
    .local v12, "_arg2":[B
    invoke-virtual {p0, v7, v10, v12}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;->replyReport(BB[B)Z

    move-result v13

    .line 129
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v13, :cond_9

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v1, 0x1

    return v1

    .line 130
    :cond_9
    const/4 v1, 0x0

    goto :goto_9

    .line 135
    .end local v7    # "_arg0":B
    .end local v10    # "_arg1":B
    .end local v12    # "_arg2":[B
    .end local v13    # "_result":Z
    :sswitch_6
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 138
    .restart local v7    # "_arg0":B
    invoke-virtual {p0, v7}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;->reportError(B)Z

    move-result v13

    .line 139
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v13, :cond_a

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v1, 0x1

    return v1

    .line 140
    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    .line 145
    .end local v7    # "_arg0":B
    .end local v13    # "_result":Z
    :sswitch_7
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;->unplug()Z

    move-result v13

    .line 147
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v13, :cond_b

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v1, 0x1

    return v1

    .line 148
    :cond_b
    const/4 v1, 0x0

    goto :goto_b

    .line 153
    .end local v13    # "_result":Z
    :sswitch_8
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;->connect()Z

    move-result v13

    .line 155
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v13, :cond_c

    const/4 v1, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v1, 0x1

    return v1

    .line 156
    :cond_c
    const/4 v1, 0x0

    goto :goto_c

    .line 161
    .end local v13    # "_result":Z
    :sswitch_9
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 164
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 169
    :goto_d
    invoke-virtual {p0, v9}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;->connect_to(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    .line 170
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v13, :cond_e

    const/4 v1, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v1, 0x1

    return v1

    .line 167
    .end local v13    # "_result":Z
    :cond_d
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 171
    .end local v9    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v13    # "_result":Z
    :cond_e
    const/4 v1, 0x0

    goto :goto_e

    .line 176
    .end local v13    # "_result":Z
    :sswitch_a
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;->disconnect()Z

    move-result v13

    .line 178
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v13, :cond_f

    const/4 v1, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v1, 0x1

    return v1

    .line 179
    :cond_f
    const/4 v1, 0x0

    goto :goto_f

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
