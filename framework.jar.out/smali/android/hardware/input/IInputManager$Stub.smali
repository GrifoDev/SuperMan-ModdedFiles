.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_addOrRemoveVirtualGamePadDevice:I = 0x2b

.field static final TRANSACTION_cancelVibrate:I = 0x17

.field static final TRANSACTION_checkInputFeature:I = 0x14

.field static final TRANSACTION_coverEventFinished:I = 0x24

.field static final TRANSACTION_enablePatialScreen:I = 0x27

.field static final TRANSACTION_enablePressureSettingMode:I = 0x2d

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xb

.field static final TRANSACTION_getDefaultPointerIcon:I = 0x1c

.field static final TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0xd

.field static final TRANSACTION_getHallSensorFlipState:I = 0x28

.field static final TRANSACTION_getInboundQueueLength:I = 0x23

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0xa

.field static final TRANSACTION_getKeyboardLayoutForInputDevice:I = 0x10

.field static final TRANSACTION_getKeyboardLayouts:I = 0x8

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0x9

.field static final TRANSACTION_getNoMotionInputTimeMillisFromWake:I = 0x2e

.field static final TRANSACTION_getScanCodeState:I = 0x25

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x6

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_isDefaultPointerIconChanged:I = 0x1d

.field static final TRANSACTION_isInTabletMode:I = 0x13

.field static final TRANSACTION_monitorInput:I = 0x26

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0x12

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x15

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0xf

.field static final TRANSACTION_requestPointerCapture:I = 0x1e

.field static final TRANSACTION_setCoverVerify:I = 0x22

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xc

.field static final TRANSACTION_setCustomHoverIcon:I = 0x1a

.field static final TRANSACTION_setCustomPointerIcon:I = 0x19

.field static final TRANSACTION_setDefaultPointerIcon:I = 0x1b

.field static final TRANSACTION_setEnableTSP:I = 0x2c

.field static final TRANSACTION_setFlipCoverTouchEnabled:I = 0x21

.field static final TRANSACTION_setKeyboardLayoutForInputDevice:I = 0x11

.field static final TRANSACTION_setLedState:I = 0x1f

.field static final TRANSACTION_setMonitorChannelFilter:I = 0x2a

.field static final TRANSACTION_setPointerIconType:I = 0x18

.field static final TRANSACTION_setStartedShutdown:I = 0x20

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0x7

.field static final TRANSACTION_setWakeKeyDynamically:I = 0x29

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/input/IInputManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v42

    return v42

    :sswitch_0
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v42, 0x1

    return v42

    :sswitch_1
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v35

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v35, :cond_0

    const/16 v42, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/16 v42, 0x1

    return v42

    :cond_0
    const/16 v42, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v42, 0x1

    return v42

    :sswitch_3
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_1

    const/16 v27, 0x0

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v4, v14, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v38, :cond_2

    const/16 v42, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    const/16 v42, 0x1

    return v42

    :cond_1
    move/from16 v0, v28

    new-array v0, v0, [Z

    move-object/from16 v27, v0

    goto :goto_1

    :cond_2
    const/16 v42, 0x0

    goto :goto_2

    :sswitch_4
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :sswitch_5
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_3

    sget-object v42, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/InputEvent;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v38, :cond_4

    const/16 v42, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    return v42

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    const/16 v42, 0x0

    goto :goto_4

    :sswitch_6
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_5

    const/16 v42, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/16 v42, 0x1

    return v42

    :cond_5
    const/16 v42, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :sswitch_7
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_6

    sget-object v42, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/input/TouchCalibration;

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v14, v1}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_6
    const/16 v21, 0x0

    goto :goto_6

    :sswitch_8
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v40

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v42, 0x1

    return v42

    :sswitch_9
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_7

    sget-object v42, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v40

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v42, 0x1

    return v42

    :cond_7
    const/4 v7, 0x0

    goto :goto_7

    :sswitch_a
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_8

    const/16 v42, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/16 v42, 0x1

    return v42

    :cond_8
    const/16 v42, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_b
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_9

    sget-object v42, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v42, 0x1

    return v42

    :cond_9
    const/4 v7, 0x0

    goto :goto_9

    :sswitch_c
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_a

    sget-object v42, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_a
    const/4 v7, 0x0

    goto :goto_a

    :sswitch_d
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_b

    sget-object v42, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/input/IInputManager$Stub;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/16 v42, 0x1

    return v42

    :cond_b
    const/4 v7, 0x0

    goto :goto_b

    :sswitch_e
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_c

    sget-object v42, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_c
    const/4 v7, 0x0

    goto :goto_c

    :sswitch_f
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_d

    sget-object v42, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_d
    const/4 v7, 0x0

    goto :goto_d

    :sswitch_10
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_e

    sget-object v42, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_f

    sget-object v42, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_10

    sget-object v42, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/inputmethod/InputMethodSubtype;

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v7, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_11

    const/16 v42, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/16 v42, 0x1

    return v42

    :cond_e
    const/4 v7, 0x0

    goto :goto_e

    :cond_f
    const/16 v16, 0x0

    goto :goto_f

    :cond_10
    const/16 v22, 0x0

    goto :goto_10

    :cond_11
    const/16 v42, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    :sswitch_11
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_12

    sget-object v42, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_13

    sget-object v42, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_14

    sget-object v42, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/inputmethod/InputMethodSubtype;

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    move-object/from16 v3, v26

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_12
    const/4 v7, 0x0

    goto :goto_12

    :cond_13
    const/16 v16, 0x0

    goto :goto_13

    :cond_14
    const/16 v22, 0x0

    goto :goto_14

    :sswitch_12
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :sswitch_13
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    return v42

    :sswitch_14
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->checkInputFeature()I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    return v42

    :sswitch_15
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :sswitch_16
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v25

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :sswitch_17
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :sswitch_18
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->setPointerIconType(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :sswitch_19
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_15

    sget-object v42, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/PointerIcon;

    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/hardware/input/IInputManager$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_15
    const/4 v11, 0x0

    goto :goto_15

    :sswitch_1a
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_16

    sget-object v42, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/PointerIcon;

    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/hardware/input/IInputManager$Stub;->setCustomHoverIcon(Landroid/view/PointerIcon;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_16
    const/4 v11, 0x0

    goto :goto_16

    :sswitch_1b
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_17

    sget-object v42, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/PointerIcon;

    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/hardware/input/IInputManager$Stub;->setDefaultPointerIcon(Landroid/view/PointerIcon;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_17
    const/4 v11, 0x0

    goto :goto_17

    :sswitch_1c
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getDefaultPointerIcon()Landroid/view/PointerIcon;

    move-result-object v36

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v36, :cond_18

    const/16 v42, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/PointerIcon;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_18
    const/16 v42, 0x1

    return v42

    :cond_18
    const/16 v42, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    :sswitch_1d
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isDefaultPointerIconChanged()Z

    move-result v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v38, :cond_19

    const/16 v42, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    return v42

    :cond_19
    const/16 v42, 0x0

    goto :goto_19

    :sswitch_1e
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_1a

    const/16 v18, 0x1

    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/hardware/input/IInputManager$Stub;->requestPointerCapture(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_1a
    const/16 v18, 0x0

    goto :goto_1a

    :sswitch_1f
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_1b

    const/4 v13, 0x1

    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/hardware/input/IInputManager$Stub;->setLedState(Z)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    return v42

    :cond_1b
    const/4 v13, 0x0

    goto :goto_1b

    :sswitch_20
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_1c

    const/4 v13, 0x1

    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/hardware/input/IInputManager$Stub;->setStartedShutdown(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_1c
    const/4 v13, 0x0

    goto :goto_1c

    :sswitch_21
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_1d

    const/4 v13, 0x1

    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/hardware/input/IInputManager$Stub;->setFlipCoverTouchEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_1d
    const/4 v13, 0x0

    goto :goto_1d

    :sswitch_22
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->setCoverVerify(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :sswitch_23
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInboundQueueLength()I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    return v42

    :sswitch_24
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->coverEventFinished()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :sswitch_25
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v4, v14, v1}, Landroid/hardware/input/IInputManager$Stub;->getScanCodeState(III)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    return v42

    :sswitch_26
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/hardware/input/IInputManager$Stub;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_1e

    const/16 v42, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1e
    const/16 v42, 0x1

    return v42

    :cond_1e
    const/16 v42, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    :sswitch_27
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_1f

    const/4 v13, 0x1

    :goto_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/hardware/input/IInputManager$Stub;->enablePatialScreen(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_1f
    const/4 v13, 0x0

    goto :goto_1f

    :sswitch_28
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getHallSensorFlipState()I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    return v42

    :sswitch_29
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_20

    const/16 v18, 0x1

    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_20
    const/16 v18, 0x0

    goto :goto_20

    :sswitch_2a
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_21

    sget-object v42, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InputChannel;

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Landroid/hardware/input/IInputManager$Stub;->setMonitorChannelFilter(Landroid/view/InputChannel;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v42, 0x1

    return v42

    :cond_21
    const/4 v9, 0x0

    goto :goto_21

    :sswitch_2b
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_22

    const/4 v13, 0x1

    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/hardware/input/IInputManager$Stub;->addOrRemoveVirtualGamePadDevice(Z)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    return v42

    :cond_22
    const/4 v13, 0x0

    goto :goto_22

    :sswitch_2c
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_23

    const/16 v18, 0x1

    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/hardware/input/IInputManager$Stub;->setEnableTSP(IZ)Z

    move-result v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v38, :cond_24

    const/16 v42, 0x1

    :goto_24
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    return v42

    :cond_23
    const/16 v18, 0x0

    goto :goto_23

    :cond_24
    const/16 v42, 0x0

    goto :goto_24

    :sswitch_2d
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_25

    const/4 v13, 0x1

    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/hardware/input/IInputManager$Stub;->enablePressureSettingMode(Z)Z

    move-result v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v38, :cond_26

    const/16 v42, 0x1

    :goto_26
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v42, 0x1

    return v42

    :cond_25
    const/4 v13, 0x0

    goto :goto_25

    :cond_26
    const/16 v42, 0x0

    goto :goto_26

    :sswitch_2e
    const-string/jumbo v42, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getNoMotionInputTimeMillisFromWake()J

    move-result-wide v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v42, 0x1

    return v42

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
