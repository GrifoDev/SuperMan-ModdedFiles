.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final TRANSACTION_connectDevice:I = 0x19

.field static final TRANSACTION_connectWifiDisplay:I = 0x6

.field static final TRANSACTION_connectWifiDisplayWithMode:I = 0x1c

.field static final TRANSACTION_connectWifiDisplayWithModeEx:I = 0x1d

.field static final TRANSACTION_connectWifiDisplayWithPin:I = 0x1b

.field static final TRANSACTION_createVirtualDisplay:I = 0xe

.field static final TRANSACTION_disconnectDevice:I = 0x1a

.field static final TRANSACTION_disconnectWifiDisplay:I = 0x7

.field static final TRANSACTION_enableOverlayMagnifier:I = 0x13

.field static final TRANSACTION_enableWifiDisplayEx:I = 0x1e

.field static final TRANSACTION_enableWifiDisplayEx2:I = 0x1f

.field static final TRANSACTION_enableWifiDisplayWithParams:I = 0x20

.field static final TRANSACTION_forgetWifiDisplay:I = 0x9

.field static final TRANSACTION_getActiveDLNADevice:I = 0x37

.field static final TRANSACTION_getActiveDLNAState:I = 0x38

.field static final TRANSACTION_getDeviceStatus:I = 0x2f

.field static final TRANSACTION_getDisplayIds:I = 0x2

.field static final TRANSACTION_getDisplayInfo:I = 0x1

.field static final TRANSACTION_getLastConnectedDevice:I = 0x2d

.field static final TRANSACTION_getLastConnectedDisplay:I = 0x21

.field static final TRANSACTION_getLastConnectedDlnaDevice:I = 0x30

.field static final TRANSACTION_getLastConnectedGCastDevice:I = 0x32

.field static final TRANSACTION_getPresentationOwner:I = 0x3a

.field static final TRANSACTION_getScreenSharingStatus:I = 0x34

.field static final TRANSACTION_getWifiDisplayConfiguration:I = 0x2c

.field static final TRANSACTION_getWifiDisplayStatus:I = 0xc

.field static final TRANSACTION_isConnWithPinSupported:I = 0x27

.field static final TRANSACTION_isDongleRenameAvailable:I = 0x28

.field static final TRANSACTION_isKDDIServiceConnected:I = 0x24

.field static final TRANSACTION_isSinkAvailable:I = 0x25

.field static final TRANSACTION_isSourceAvailable:I = 0x26

.field static final TRANSACTION_isWfdEngineRunning:I = 0x23

.field static final TRANSACTION_pauseWifiDisplay:I = 0xa

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_releaseVirtualDisplay:I = 0x12

.field static final TRANSACTION_removeLastConnectedDevice:I = 0x2e

.field static final TRANSACTION_removeLastConnectedDlnaDevice:I = 0x31

.field static final TRANSACTION_removeLastConnectedGCastDevice:I = 0x33

.field static final TRANSACTION_renameDongle:I = 0x29

.field static final TRANSACTION_renameWifiDisplay:I = 0x8

.field static final TRANSACTION_requestColorTransform:I = 0xd

.field static final TRANSACTION_resizeVirtualDisplay:I = 0xf

.field static final TRANSACTION_restartWifiDisplay:I = 0x22

.field static final TRANSACTION_resumeWifiDisplay:I = 0xb

.field static final TRANSACTION_scanWifiDisplays:I = 0x17

.field static final TRANSACTION_setActiveDlnaState:I = 0x39

.field static final TRANSACTION_setCurrentDisplayIdMagnifier:I = 0x16

.field static final TRANSACTION_setExtendMode:I = 0x36

.field static final TRANSACTION_setMagnificationSettings:I = 0x15

.field static final TRANSACTION_setMagnificationSpec:I = 0x14

.field static final TRANSACTION_setScanningChannel:I = 0x2a

.field static final TRANSACTION_setScreenSharingStatus:I = 0x35

.field static final TRANSACTION_setVirtualDisplayFixedOrientation:I = 0x10

.field static final TRANSACTION_setVirtualDisplaySurface:I = 0x11

.field static final TRANSACTION_setWifiDisplayConfiguration:I = 0x2b

.field static final TRANSACTION_startWifiDisplayScan:I = 0x4

.field static final TRANSACTION_stopScanWifiDisplays:I = 0x18

.field static final TRANSACTION_stopWifiDisplayScan:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
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
    const-string/jumbo v1, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/display/IDisplayManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 44
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

    .line 692
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 51
    .local v22, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v40

    .line 52
    .local v40, "_result":Landroid/view/DisplayInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v40, :cond_0

    .line 54
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v4, 0x1

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 58
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v22    # "_arg0":I
    .end local v40    # "_result":Landroid/view/DisplayInfo;
    :sswitch_2
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds()[I

    move-result-object v43

    .line 66
    .local v43, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 68
    const/4 v4, 0x1

    return v4

    .line 72
    .end local v43    # "_result":[I
    :sswitch_3
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v23

    .line 75
    .local v23, "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v4, 0x1

    return v4

    .line 81
    .end local v23    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    :sswitch_4
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v4, 0x1

    return v4

    .line 88
    :sswitch_5
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v4, 0x1

    return v4

    .line 95
    :sswitch_6
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 98
    .local v15, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v4, 0x1

    return v4

    .line 104
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v4, 0x1

    return v4

    .line 111
    :sswitch_8
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 115
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 116
    .local v16, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v4, 0x1

    return v4

    .line 122
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 125
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v4, 0x1

    return v4

    .line 131
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v4, 0x1

    return v4

    .line 138
    :sswitch_b
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v4, 0x1

    return v4

    .line 145
    :sswitch_c
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v38

    .line 147
    .local v38, "_result":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v38, :cond_1

    .line 149
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/display/WifiDisplayStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 153
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 159
    .end local v38    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :sswitch_d
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 163
    .restart local v22    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 164
    .local v28, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorTransform(II)V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    const/4 v4, 0x1

    return v4

    .line 170
    .end local v22    # "_arg0":I
    .end local v28    # "_arg1":I
    :sswitch_e
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v5

    .line 174
    .local v5, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v6

    .line 176
    .local v6, "_arg1":Landroid/media/projection/IMediaProjection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 178
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 182
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 184
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 186
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    sget-object v4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/Surface;

    .line 193
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg8":I
    move-object/from16 v4, p0

    .line 194
    invoke-virtual/range {v4 .. v13}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I

    move-result v35

    .line 195
    .local v35, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v4, 0x1

    return v4

    .line 190
    .end local v13    # "_arg8":I
    .end local v35    # "_result":I
    :cond_2
    const/4 v12, 0x0

    .local v12, "_arg7":Landroid/view/Surface;
    goto :goto_2

    .line 201
    .end local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v6    # "_arg1":Landroid/media/projection/IMediaProjection;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":Landroid/view/Surface;
    :sswitch_f
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v5

    .line 205
    .restart local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 207
    .restart local v28    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 209
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 210
    .local v34, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v17

    move/from16 v3, v34

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v4, 0x1

    return v4

    .line 216
    .end local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v17    # "_arg2":I
    .end local v28    # "_arg1":I
    .end local v34    # "_arg3":I
    :sswitch_10
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v5

    .line 220
    .restart local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 221
    .restart local v28    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplayFixedOrientation(Landroid/hardware/display/IVirtualDisplayCallback;I)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/4 v4, 0x1

    return v4

    .line 227
    .end local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v28    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v5

    .line 231
    .restart local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 232
    sget-object v4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/Surface;

    .line 237
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    const/4 v4, 0x1

    return v4

    .line 235
    :cond_3
    const/16 v30, 0x0

    .local v30, "_arg1":Landroid/view/Surface;
    goto :goto_3

    .line 243
    .end local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v30    # "_arg1":Landroid/view/Surface;
    :sswitch_12
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v5

    .line 246
    .restart local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/4 v4, 0x1

    return v4

    .line 252
    .end local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    :sswitch_13
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v27, 0x1

    .line 255
    .local v27, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->enableOverlayMagnifier(Z)V

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    const/4 v4, 0x1

    return v4

    .line 254
    .end local v27    # "_arg0":Z
    :cond_4
    const/16 v27, 0x0

    goto :goto_4

    .line 261
    :sswitch_14
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 264
    sget-object v4, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/MagnificationSpec;

    .line 269
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v4, 0x1

    return v4

    .line 267
    :cond_5
    const/16 v26, 0x0

    .local v26, "_arg0":Landroid/view/MagnificationSpec;
    goto :goto_5

    .line 275
    .end local v26    # "_arg0":Landroid/view/MagnificationSpec;
    :sswitch_15
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 279
    .restart local v22    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 281
    .restart local v28    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v31

    .line 282
    .local v31, "_arg2":F
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setMagnificationSettings(IIF)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v4, 0x1

    return v4

    .line 288
    .end local v22    # "_arg0":I
    .end local v28    # "_arg1":I
    .end local v31    # "_arg2":F
    :sswitch_16
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 291
    .restart local v22    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setCurrentDisplayIdMagnifier(I)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v4, 0x1

    return v4

    .line 297
    .end local v22    # "_arg0":I
    :sswitch_17
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->scanWifiDisplays()V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v4, 0x1

    return v4

    .line 304
    :sswitch_18
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopScanWifiDisplays()V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v4, 0x1

    return v4

    .line 311
    :sswitch_19
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 315
    .restart local v22    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 317
    .restart local v28    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 318
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/Bundle;

    .line 324
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 325
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/hardware/display/IDisplayManager$Stub;->connectDevice(IILandroid/os/Bundle;Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    const/4 v4, 0x1

    return v4

    .line 321
    .end local v8    # "_arg3":Ljava/lang/String;
    :cond_6
    const/16 v32, 0x0

    .local v32, "_arg2":Landroid/os/Bundle;
    goto :goto_6

    .line 331
    .end local v22    # "_arg0":I
    .end local v28    # "_arg1":I
    .end local v32    # "_arg2":Landroid/os/Bundle;
    :sswitch_1a
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 334
    .restart local v22    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectDevice(I)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/4 v4, 0x1

    return v4

    .line 340
    .end local v22    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 343
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v4, 0x1

    return v4

    .line 349
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 353
    .restart local v22    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 354
    .restart local v16    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplayWithMode(ILjava/lang/String;)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v4, 0x1

    return v4

    .line 360
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg0":I
    :sswitch_1d
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 364
    .restart local v22    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 366
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v33, 0x1

    .line 367
    .local v33, "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v16

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplayWithModeEx(ILjava/lang/String;Z)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    const/4 v4, 0x1

    return v4

    .line 366
    .end local v33    # "_arg2":Z
    :cond_7
    const/16 v33, 0x0

    goto :goto_7

    .line 373
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg0":I
    :sswitch_1e
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 377
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 379
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 381
    .restart local v17    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 382
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2, v8}, Landroid/hardware/display/IDisplayManager$Stub;->enableWifiDisplayEx(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    const/4 v4, 0x1

    return v4

    .line 388
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    :sswitch_1f
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 392
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 394
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 396
    .restart local v17    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 398
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 400
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 402
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v21, 0x1

    .local v21, "_arg6":Z
    :goto_8
    move-object/from16 v14, p0

    move-object/from16 v18, v8

    .line 403
    invoke-virtual/range {v14 .. v21}, Landroid/hardware/display/IDisplayManager$Stub;->enableWifiDisplayEx2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    const/4 v4, 0x1

    return v4

    .line 402
    .end local v21    # "_arg6":Z
    :cond_8
    const/16 v21, 0x0

    goto :goto_8

    .line 409
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 412
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/hardware/display/IDisplayManager$Stub;->enableWifiDisplayWithParams(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v4, 0x1

    return v4

    .line 418
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v27, 0x1

    .line 421
    .restart local v27    # "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v37

    .line 422
    .local v37, "_result":Landroid/hardware/display/WifiDisplay;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    if-eqz v37, :cond_a

    .line 424
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v4, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    .line 430
    :goto_a
    const/4 v4, 0x1

    return v4

    .line 420
    .end local v27    # "_arg0":Z
    .end local v37    # "_result":Landroid/hardware/display/WifiDisplay;
    :cond_9
    const/16 v27, 0x0

    goto :goto_9

    .line 428
    .restart local v27    # "_arg0":Z
    .restart local v37    # "_result":Landroid/hardware/display/WifiDisplay;
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 434
    .end local v27    # "_arg0":Z
    .end local v37    # "_result":Landroid/hardware/display/WifiDisplay;
    :sswitch_22
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->restartWifiDisplay()V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v4, 0x1

    return v4

    .line 441
    :sswitch_23
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isWfdEngineRunning()Z

    move-result v42

    .line 443
    .local v42, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v42, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    const/4 v4, 0x1

    return v4

    .line 444
    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    .line 449
    .end local v42    # "_result":Z
    :sswitch_24
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isKDDIServiceConnected()Z

    move-result v42

    .line 451
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v42, :cond_c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v4, 0x1

    return v4

    .line 452
    :cond_c
    const/4 v4, 0x0

    goto :goto_c

    .line 457
    .end local v42    # "_result":Z
    :sswitch_25
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isSinkAvailable()Z

    move-result v42

    .line 459
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v42, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v4, 0x1

    return v4

    .line 460
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 465
    .end local v42    # "_result":Z
    :sswitch_26
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isSourceAvailable()Z

    move-result v42

    .line 467
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    if-eqz v42, :cond_e

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v4, 0x1

    return v4

    .line 468
    :cond_e
    const/4 v4, 0x0

    goto :goto_e

    .line 473
    .end local v42    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 476
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/hardware/display/IDisplayManager$Stub;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v42

    .line 477
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    if-eqz v42, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const/4 v4, 0x1

    return v4

    .line 478
    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .line 483
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":Z
    :sswitch_28
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isDongleRenameAvailable()Z

    move-result v42

    .line 485
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    if-eqz v42, :cond_10

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v4, 0x1

    return v4

    .line 486
    :cond_10
    const/4 v4, 0x0

    goto :goto_10

    .line 491
    .end local v42    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 494
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/hardware/display/IDisplayManager$Stub;->renameDongle(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    const/4 v4, 0x1

    return v4

    .line 500
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 503
    .restart local v22    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setScanningChannel(I)V

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    const/4 v4, 0x1

    return v4

    .line 509
    .end local v22    # "_arg0":I
    :sswitch_2b
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 512
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Bundle;

    .line 517
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setWifiDisplayConfiguration(Landroid/os/Bundle;)I

    move-result v35

    .line 518
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v4, 0x1

    return v4

    .line 515
    .end local v35    # "_result":I
    :cond_11
    const/16 v24, 0x0

    .local v24, "_arg0":Landroid/os/Bundle;
    goto :goto_11

    .line 524
    .end local v24    # "_arg0":Landroid/os/Bundle;
    :sswitch_2c
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 527
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayConfiguration(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v39

    .line 528
    .local v39, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    if-eqz v39, :cond_12

    .line 530
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v4, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 536
    :goto_12
    const/4 v4, 0x1

    return v4

    .line 534
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 540
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Landroid/os/Bundle;
    :sswitch_2d
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 543
    .restart local v22    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getLastConnectedDevice(I)Landroid/os/Bundle;

    move-result-object v39

    .line 544
    .restart local v39    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v39, :cond_13

    .line 546
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v4, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 552
    :goto_13
    const/4 v4, 0x1

    return v4

    .line 550
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 556
    .end local v22    # "_arg0":I
    .end local v39    # "_result":Landroid/os/Bundle;
    :sswitch_2e
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 559
    .restart local v22    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->removeLastConnectedDevice(I)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    const/4 v4, 0x1

    return v4

    .line 565
    .end local v22    # "_arg0":I
    :sswitch_2f
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 568
    .restart local v22    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getDeviceStatus(I)Landroid/os/Bundle;

    move-result-object v39

    .line 569
    .restart local v39    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    if-eqz v39, :cond_14

    .line 571
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    const/4 v4, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 577
    :goto_14
    const/4 v4, 0x1

    return v4

    .line 575
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 581
    .end local v22    # "_arg0":I
    .end local v39    # "_result":Landroid/os/Bundle;
    :sswitch_30
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getLastConnectedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v36

    .line 583
    .local v36, "_result":Landroid/hardware/display/SemDlnaDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    if-eqz v36, :cond_15

    .line 585
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    const/4 v4, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/display/SemDlnaDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 591
    :goto_15
    const/4 v4, 0x1

    return v4

    .line 589
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 595
    .end local v36    # "_result":Landroid/hardware/display/SemDlnaDevice;
    :sswitch_31
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->removeLastConnectedDlnaDevice()V

    .line 597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    const/4 v4, 0x1

    return v4

    .line 602
    :sswitch_32
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getLastConnectedGCastDevice()Ljava/lang/String;

    move-result-object v41

    .line 604
    .local v41, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 606
    const/4 v4, 0x1

    return v4

    .line 610
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->removeLastConnectedGCastDevice()V

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    const/4 v4, 0x1

    return v4

    .line 617
    :sswitch_34
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getScreenSharingStatus()I

    move-result v35

    .line 619
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    const/4 v4, 0x1

    return v4

    .line 625
    .end local v35    # "_result":I
    :sswitch_35
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 628
    .restart local v22    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setScreenSharingStatus(I)V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    const/4 v4, 0x1

    return v4

    .line 634
    .end local v22    # "_arg0":I
    :sswitch_36
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    const/16 v27, 0x1

    .line 637
    .restart local v27    # "_arg0":Z
    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setExtendMode(Z)V

    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    const/4 v4, 0x1

    return v4

    .line 636
    .end local v27    # "_arg0":Z
    :cond_16
    const/16 v27, 0x0

    goto :goto_16

    .line 643
    :sswitch_37
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getActiveDLNADevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v36

    .line 645
    .restart local v36    # "_result":Landroid/hardware/display/SemDlnaDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    if-eqz v36, :cond_17

    .line 647
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    const/4 v4, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/display/SemDlnaDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 653
    :goto_17
    const/4 v4, 0x1

    return v4

    .line 651
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 657
    .end local v36    # "_result":Landroid/hardware/display/SemDlnaDevice;
    :sswitch_38
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getActiveDLNAState()I

    move-result v35

    .line 659
    .restart local v35    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/4 v4, 0x1

    return v4

    .line 665
    .end local v35    # "_result":I
    :sswitch_39
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v25

    .line 669
    .local v25, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    .line 670
    sget-object v4, Landroid/hardware/display/SemDlnaDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/hardware/display/SemDlnaDevice;

    .line 676
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 677
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setActiveDlnaState(Landroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;I)V

    .line 678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    const/4 v4, 0x1

    return v4

    .line 673
    .end local v17    # "_arg2":I
    :cond_18
    const/16 v29, 0x0

    .local v29, "_arg1":Landroid/hardware/display/SemDlnaDevice;
    goto :goto_18

    .line 683
    .end local v25    # "_arg0":Landroid/os/IBinder;
    .end local v29    # "_arg1":Landroid/hardware/display/SemDlnaDevice;
    :sswitch_3a
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 686
    .restart local v22    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getPresentationOwner(I)Ljava/lang/String;

    move-result-object v41

    .line 687
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 689
    const/4 v4, 0x1

    return v4

    .line 39
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
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
