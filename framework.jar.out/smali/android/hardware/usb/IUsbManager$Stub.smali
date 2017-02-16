.class public abstract Landroid/hardware/usb/IUsbManager$Stub;
.super Landroid/os/Binder;
.source "IUsbManager.java"

# interfaces
.implements Landroid/hardware/usb/IUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field static final TRANSACTION_allowUsbDebugging:I = 0x12

.field static final TRANSACTION_clearDefaults:I = 0xe

.field static final TRANSACTION_clearUsbDebuggingKeys:I = 0x14

.field static final TRANSACTION_countKeyBoardConnectedviaUsbHost:I = 0x1e

.field static final TRANSACTION_countMouseConnectedviaUsbHost:I = 0x1f

.field static final TRANSACTION_denyUsbDebugging:I = 0x13

.field static final TRANSACTION_getCurrentAccessory:I = 0x3

.field static final TRANSACTION_getCurrentFunctions:I = 0x19

.field static final TRANSACTION_getDeviceList:I = 0x1

.field static final TRANSACTION_getPortStatus:I = 0x16

.field static final TRANSACTION_getPorts:I = 0x15

.field static final TRANSACTION_grantAccessoryPermission:I = 0xc

.field static final TRANSACTION_grantDevicePermission:I = 0xb

.field static final TRANSACTION_hasAccessoryPermission:I = 0x8

.field static final TRANSACTION_hasDefaults:I = 0xd

.field static final TRANSACTION_hasDevicePermission:I = 0x7

.field static final TRANSACTION_isFunctionEnabled:I = 0xf

.field static final TRANSACTION_isUsb30Available:I = 0x1d

.field static final TRANSACTION_isUsb30Enabled:I = 0x1c

.field static final TRANSACTION_isUsbBlocked:I = 0x1a

.field static final TRANSACTION_openAccessory:I = 0x4

.field static final TRANSACTION_openDevice:I = 0x2

.field static final TRANSACTION_requestAccessoryPermission:I = 0xa

.field static final TRANSACTION_requestDevicePermission:I = 0x9

.field static final TRANSACTION_semSetMode:I = 0x18

.field static final TRANSACTION_setAccessoryPackage:I = 0x6

.field static final TRANSACTION_setCurrentFunction:I = 0x10

.field static final TRANSACTION_setDevicePackage:I = 0x5

.field static final TRANSACTION_setPortRoles:I = 0x17

.field static final TRANSACTION_setUsb30Mode:I = 0x1b

.field static final TRANSACTION_setUsbDataUnlocked:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.hardware.usb.IUsbManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;
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
    const-string/jumbo v1, "android.hardware.usb.IUsbManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/usb/IUsbManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/usb/IUsbManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/usb/IUsbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 21
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

    .line 437
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v20

    return v20

    .line 43
    :sswitch_0
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v20, 0x1

    return v20

    .line 48
    :sswitch_1
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v6, "_arg0":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/usb/IUsbManager$Stub;->getDeviceList(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v6, :cond_0

    .line 54
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    :goto_0
    const/16 v20, 0x1

    return v20

    .line 58
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v6    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/usb/IUsbManager$Stub;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 68
    .local v16, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v16, :cond_1

    .line 70
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    :goto_1
    const/16 v20, 0x1

    return v20

    .line 74
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 80
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v14

    .line 82
    .local v14, "_result":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v14, :cond_2

    .line 84
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/hardware/usb/UsbAccessory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    :goto_2
    const/16 v20, 0x1

    return v20

    .line 88
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 94
    .end local v14    # "_result":Landroid/hardware/usb/UsbAccessory;
    :sswitch_4
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_3

    .line 97
    sget-object v20, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbAccessory;

    .line 102
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 103
    .restart local v16    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v16, :cond_4

    .line 105
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    :goto_4
    const/16 v20, 0x1

    return v20

    .line 100
    .end local v16    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_3

    .line 109
    .end local v4    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .restart local v16    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 115
    .end local v16    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_5

    .line 118
    sget-object v20, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    .line 124
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 127
    .local v11, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v11}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/16 v20, 0x1

    return v20

    .line 121
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg2":I
    :cond_5
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_5

    .line 133
    .end local v5    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :sswitch_6
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_6

    .line 136
    sget-object v20, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbAccessory;

    .line 142
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 144
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 145
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v11}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/16 v20, 0x1

    return v20

    .line 139
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg2":I
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_6

    .line 151
    .end local v4    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :sswitch_7
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_7

    .line 154
    sget-object v20, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    .line 159
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v18

    .line 160
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v18, :cond_8

    const/16 v20, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/16 v20, 0x1

    return v20

    .line 157
    .end local v18    # "_result":Z
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_7

    .line 161
    .end local v5    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .restart local v18    # "_result":Z
    :cond_8
    const/16 v20, 0x0

    goto :goto_8

    .line 166
    .end local v18    # "_result":Z
    :sswitch_8
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_9

    .line 169
    sget-object v20, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbAccessory;

    .line 174
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v18

    .line 175
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v18, :cond_a

    const/16 v20, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/16 v20, 0x1

    return v20

    .line 172
    .end local v18    # "_result":Z
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_9

    .line 176
    .end local v4    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .restart local v18    # "_result":Z
    :cond_a
    const/16 v20, 0x0

    goto :goto_a

    .line 181
    .end local v18    # "_result":Z
    :sswitch_9
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_b

    .line 184
    sget-object v20, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    .line 190
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 192
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_c

    .line 193
    sget-object v20, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .line 198
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v12}, Landroid/hardware/usb/IUsbManager$Stub;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/16 v20, 0x1

    return v20

    .line 187
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_b

    .line 196
    .end local v5    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .restart local v10    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v12, 0x0

    .local v12, "_arg2":Landroid/app/PendingIntent;
    goto :goto_c

    .line 204
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_a
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_d

    .line 207
    sget-object v20, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbAccessory;

    .line 213
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 215
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_e

    .line 216
    sget-object v20, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .line 221
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v12}, Landroid/hardware/usb/IUsbManager$Stub;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/16 v20, 0x1

    return v20

    .line 210
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_d

    .line 219
    .end local v4    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .restart local v10    # "_arg1":Ljava/lang/String;
    :cond_e
    const/4 v12, 0x0

    .restart local v12    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_e

    .line 227
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_b
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_f

    .line 230
    sget-object v20, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    .line 236
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 237
    .local v9, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    const/16 v20, 0x1

    return v20

    .line 233
    .end local v9    # "_arg1":I
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_f

    .line 243
    .end local v5    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :sswitch_c
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_10

    .line 246
    sget-object v20, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbAccessory;

    .line 252
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 253
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/16 v20, 0x1

    return v20

    .line 249
    .end local v9    # "_arg1":I
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_10

    .line 259
    .end local v4    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :sswitch_d
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 263
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 264
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Landroid/hardware/usb/IUsbManager$Stub;->hasDefaults(Ljava/lang/String;I)Z

    move-result v18

    .line 265
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v18, :cond_11

    const/16 v20, 0x1

    :goto_11
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/16 v20, 0x1

    return v20

    .line 266
    :cond_11
    const/16 v20, 0x0

    goto :goto_11

    .line 271
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v18    # "_result":Z
    :sswitch_e
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 275
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 276
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Landroid/hardware/usb/IUsbManager$Stub;->clearDefaults(Ljava/lang/String;I)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    const/16 v20, 0x1

    return v20

    .line 282
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    :sswitch_f
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 285
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/usb/IUsbManager$Stub;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v18

    .line 286
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v18, :cond_12

    const/16 v20, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/16 v20, 0x1

    return v20

    .line 287
    :cond_12
    const/16 v20, 0x0

    goto :goto_12

    .line 292
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":Z
    :sswitch_10
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 295
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunction(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    const/16 v20, 0x1

    return v20

    .line 301
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_13

    const/4 v8, 0x1

    .line 304
    .local v8, "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/hardware/usb/IUsbManager$Stub;->setUsbDataUnlocked(Z)V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/16 v20, 0x1

    return v20

    .line 303
    .end local v8    # "_arg0":Z
    :cond_13
    const/4 v8, 0x0

    goto :goto_13

    .line 310
    :sswitch_12
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_14

    const/4 v8, 0x1

    .line 314
    .local v8, "_arg0":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 315
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Landroid/hardware/usb/IUsbManager$Stub;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    const/16 v20, 0x1

    return v20

    .line 312
    .end local v8    # "_arg0":Z
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_14
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_14

    .line 321
    .end local v8    # "_arg0":Z
    :sswitch_13
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->denyUsbDebugging()V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/16 v20, 0x1

    return v20

    .line 328
    :sswitch_14
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->clearUsbDebuggingKeys()V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/16 v20, 0x1

    return v20

    .line 335
    :sswitch_15
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v19

    .line 337
    .local v19, "_result":[Landroid/hardware/usb/UsbPort;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 339
    const/16 v20, 0x1

    return v20

    .line 343
    .end local v19    # "_result":[Landroid/hardware/usb/UsbPort;
    :sswitch_16
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 346
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/usb/IUsbManager$Stub;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v15

    .line 347
    .local v15, "_result":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v15, :cond_15

    .line 349
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/hardware/usb/UsbPortStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 355
    :goto_15
    const/16 v20, 0x1

    return v20

    .line 353
    :cond_15
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 359
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Landroid/hardware/usb/UsbPortStatus;
    :sswitch_17
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 363
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 365
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 366
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9, v11}, Landroid/hardware/usb/IUsbManager$Stub;->setPortRoles(Ljava/lang/String;II)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/16 v20, 0x1

    return v20

    .line 372
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v11    # "_arg2":I
    :sswitch_18
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 375
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/usb/IUsbManager$Stub;->semSetMode(I)V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    const/16 v20, 0x1

    return v20

    .line 381
    .end local v3    # "_arg0":I
    :sswitch_19
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentFunctions()Ljava/lang/String;

    move-result-object v17

    .line 383
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    const/16 v20, 0x1

    return v20

    .line 389
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->isUsbBlocked()Z

    move-result v18

    .line 391
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v18, :cond_16

    const/16 v20, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/16 v20, 0x1

    return v20

    .line 392
    :cond_16
    const/16 v20, 0x0

    goto :goto_16

    .line 397
    .end local v18    # "_result":Z
    :sswitch_1b
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_17

    const/4 v8, 0x1

    .line 400
    .local v8, "_arg0":Z
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/hardware/usb/IUsbManager$Stub;->setUsb30Mode(Z)V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    const/16 v20, 0x1

    return v20

    .line 399
    .end local v8    # "_arg0":Z
    :cond_17
    const/4 v8, 0x0

    goto :goto_17

    .line 406
    :sswitch_1c
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->isUsb30Enabled()Z

    move-result v18

    .line 408
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v18, :cond_18

    const/16 v20, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/16 v20, 0x1

    return v20

    .line 409
    :cond_18
    const/16 v20, 0x0

    goto :goto_18

    .line 414
    .end local v18    # "_result":Z
    :sswitch_1d
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->isUsb30Available()Z

    move-result v18

    .line 416
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v18, :cond_19

    const/16 v20, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/16 v20, 0x1

    return v20

    .line 417
    :cond_19
    const/16 v20, 0x0

    goto :goto_19

    .line 422
    .end local v18    # "_result":Z
    :sswitch_1e
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->countKeyBoardConnectedviaUsbHost()I

    move-result v13

    .line 424
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/16 v20, 0x1

    return v20

    .line 430
    .end local v13    # "_result":I
    :sswitch_1f
    const-string/jumbo v20, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->countMouseConnectedviaUsbHost()I

    move-result v13

    .line 432
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/16 v20, 0x1

    return v20

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
