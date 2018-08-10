.class public abstract Landroid/hardware/camera2/ICameraDeviceUser$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceUser"

.field static final TRANSACTION_beginConfigure:I = 0x5

.field static final TRANSACTION_cancelRequest:I = 0x4

.field static final TRANSACTION_createDefaultRequest:I = 0xb

.field static final TRANSACTION_createInputStream:I = 0x9

.field static final TRANSACTION_createStream:I = 0x8

.field static final TRANSACTION_deleteStream:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x1

.field static final TRANSACTION_endConfigure:I = 0x6

.field static final TRANSACTION_finalizeOutputConfigurations:I = 0x12

.field static final TRANSACTION_flush:I = 0xe

.field static final TRANSACTION_getCameraInfo:I = 0xc

.field static final TRANSACTION_getInputSurface:I = 0xa

.field static final TRANSACTION_prepare:I = 0xf

.field static final TRANSACTION_prepare2:I = 0x11

.field static final TRANSACTION_setParameters:I = 0x13

.field static final TRANSACTION_submitRequest:I = 0x2

.field static final TRANSACTION_submitRequestList:I = 0x3

.field static final TRANSACTION_tearDown:I = 0x10

.field static final TRANSACTION_waitUntilIdle:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.hardware.camera2.ICameraDeviceUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    return-object v0

    :cond_1
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v19

    return v19

    :sswitch_0
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    :sswitch_1
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_2
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_0

    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureRequest;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_1

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_2

    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/utils/SubmitInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/16 v19, 0x1

    return v19

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_3
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_3

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_4

    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/utils/SubmitInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/16 v19, 0x1

    return v19

    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :sswitch_4
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(I)J

    move-result-wide v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v19, 0x1

    return v19

    :sswitch_5
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_6
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_7
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_8
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_5

    sget-object v19, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :sswitch_9
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v12}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(III)I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :sswitch_a
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface()Landroid/view/Surface;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_6

    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/16 v19, 0x1

    return v19

    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :sswitch_b
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_7

    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/16 v19, 0x1

    return v19

    :cond_7
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :sswitch_c
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_8

    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/16 v19, 0x1

    return v19

    :cond_8
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_d
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_e
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush()J

    move-result-wide v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v19, 0x1

    return v19

    :sswitch_f
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_10
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_11
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare2(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_12
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_9

    sget-object v19, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/OutputConfiguration;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :cond_9
    const/4 v10, 0x0

    goto :goto_9

    :sswitch_13
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->setParameters(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
