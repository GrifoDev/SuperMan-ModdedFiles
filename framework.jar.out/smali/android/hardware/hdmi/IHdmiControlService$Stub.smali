.class public abstract Landroid/hardware/hdmi/IHdmiControlService$Stub;
.super Landroid/os/Binder;
.source "IHdmiControlService.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiControlService"

.field static final TRANSACTION_addDeviceEventListener:I = 0x7

.field static final TRANSACTION_addHdmiMhlVendorCommandListener:I = 0x21

.field static final TRANSACTION_addHotplugEventListener:I = 0x5

.field static final TRANSACTION_addSystemAudioModeChangeListener:I = 0xf

.field static final TRANSACTION_addVendorCommandListener:I = 0x19

.field static final TRANSACTION_canChangeSystemAudioMode:I = 0xc

.field static final TRANSACTION_clearTimerRecording:I = 0x1f

.field static final TRANSACTION_deviceSelect:I = 0x8

.field static final TRANSACTION_getActiveSource:I = 0x2

.field static final TRANSACTION_getDeviceList:I = 0x17

.field static final TRANSACTION_getInputDevices:I = 0x16

.field static final TRANSACTION_getPortInfo:I = 0xb

.field static final TRANSACTION_getSupportedTypes:I = 0x1

.field static final TRANSACTION_getSystemAudioMode:I = 0xd

.field static final TRANSACTION_oneTouchPlay:I = 0x3

.field static final TRANSACTION_portSelect:I = 0x9

.field static final TRANSACTION_queryDisplayStatus:I = 0x4

.field static final TRANSACTION_removeHotplugEventListener:I = 0x6

.field static final TRANSACTION_removeSystemAudioModeChangeListener:I = 0x10

.field static final TRANSACTION_sendKeyEvent:I = 0xa

.field static final TRANSACTION_sendMhlVendorCommand:I = 0x20

.field static final TRANSACTION_sendStandby:I = 0x1a

.field static final TRANSACTION_sendVendorCommand:I = 0x18

.field static final TRANSACTION_setArcMode:I = 0x11

.field static final TRANSACTION_setHdmiRecordListener:I = 0x1b

.field static final TRANSACTION_setInputChangeListener:I = 0x15

.field static final TRANSACTION_setProhibitMode:I = 0x12

.field static final TRANSACTION_setStandbyMode:I = 0x22

.field static final TRANSACTION_setSystemAudioMode:I = 0xe

.field static final TRANSACTION_setSystemAudioMute:I = 0x14

.field static final TRANSACTION_setSystemAudioVolume:I = 0x13

.field static final TRANSACTION_startOneTouchRecord:I = 0x1c

.field static final TRANSACTION_startTimerRecording:I = 0x1e

.field static final TRANSACTION_stopOneTouchRecord:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.hdmi.IHdmiControlService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.hardware.hdmi.IHdmiControlService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/hdmi/IHdmiControlService;

    return-object v0

    :cond_1
    new-instance v1, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v26

    return v26

    :sswitch_0
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v26, 0x1

    return v26

    :sswitch_1
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSupportedTypes()[I

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v26, 0x1

    return v26

    :sswitch_2
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_0

    const/16 v26, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/16 v26, 0x1

    return v26

    :cond_0
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_4
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_5
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_6
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_7
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_8
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_9
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_a
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v13, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendKeyEvent(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    :sswitch_b
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getPortInfo()Ljava/util/List;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v26, 0x1

    return v26

    :sswitch_c
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->canChangeSystemAudioMode()Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_2

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_2
    const/16 v26, 0x0

    goto :goto_2

    :sswitch_d
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSystemAudioMode()Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_3

    const/16 v26, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_3
    const/16 v26, 0x0

    goto :goto_3

    :sswitch_e
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_4

    const/4 v12, 0x1

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    :sswitch_f
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_10
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_11
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_5

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    :sswitch_12
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_6

    const/4 v12, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setProhibitMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_6
    const/4 v12, 0x0

    goto :goto_6

    :sswitch_13
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v13, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioVolume(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_14
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_7

    const/4 v12, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMute(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    :sswitch_15
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiInputChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_16
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getInputDevices()Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v26, 0x1

    return v26

    :sswitch_17
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getDeviceList()Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v26, 0x1

    return v26

    :sswitch_18
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_8

    const/16 v19, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v3, v13, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVendorCommand(II[BZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_8
    const/16 v19, 0x0

    goto :goto_8

    :sswitch_19
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_1a
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendStandby(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_1b
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_1c
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startOneTouchRecord(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_1d
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->stopOneTouchRecord(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_1e
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v13, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startTimerRecording(II[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_1f
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v13, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->clearTimerRecording(II[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_20
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v3, v13, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendMhlVendorCommand(III[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_21
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_22
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_9

    const/4 v12, 0x1

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setStandbyMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_9
    const/4 v12, 0x0

    goto :goto_9

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
