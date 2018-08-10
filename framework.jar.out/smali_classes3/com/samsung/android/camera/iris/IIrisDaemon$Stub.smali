.class public abstract Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;
.super Landroid/os/Binder;
.source "IIrisDaemon.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisDaemon$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camera.iris.IIrisDaemon"

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_cancelAuthentication:I = 0x2

.field static final TRANSACTION_cancelEnrollment:I = 0x4

.field static final TRANSACTION_cancelEnumeration:I = 0x11

.field static final TRANSACTION_closeHal:I = 0xa

.field static final TRANSACTION_createInputSurface:I = 0x14

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_enumerate:I = 0x10

.field static final TRANSACTION_getAuthenticatorId:I = 0x7

.field static final TRANSACTION_init:I = 0xb

.field static final TRANSACTION_openHal:I = 0x9

.field static final TRANSACTION_postEnroll:I = 0xc

.field static final TRANSACTION_preEnroll:I = 0x5

.field static final TRANSACTION_processFrontImage:I = 0x12

.field static final TRANSACTION_processIRImage:I = 0xe

.field static final TRANSACTION_release:I = 0x15

.field static final TRANSACTION_releasePreviewSurface:I = 0x16

.field static final TRANSACTION_remove:I = 0x6

.field static final TRANSACTION_request:I = 0xd

.field static final TRANSACTION_sendIRProperty:I = 0xf

.field static final TRANSACTION_setActiveGroup:I = 0x8

.field static final TRANSACTION_setPreviewTarget:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemon;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisDaemon;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/camera/iris/IIrisDaemon;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v25

    return v25

    :sswitch_0
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :sswitch_1
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v7, v12, v1}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->authenticate(JI[B)I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_2
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->cancelAuthentication()I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_3
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v15}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->enroll([BII)I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_4
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->cancelEnrollment()I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_5
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->preEnroll()J

    move-result-wide v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v25, 0x1

    return v25

    :sswitch_6
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->remove(II)I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_7
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->getAuthenticatorId()J

    move-result-wide v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v25, 0x1

    return v25

    :sswitch_8
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->setActiveGroup(I[B)I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_9
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->openHal()J

    move-result-wide v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v25, 0x1

    return v25

    :sswitch_a
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->closeHal()I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_b
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->init(Lcom/samsung/android/camera/iris/IIrisDaemonCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :sswitch_c
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->postEnroll()I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_d
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-gez v18, :cond_0

    const/16 v17, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v4, v14, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->request(I[B[BI)I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/16 v25, 0x1

    return v25

    :cond_0
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    goto :goto_0

    :sswitch_e
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1

    sget-object v25, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v8, v12, v15, v1}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->processIRImage(Landroid/os/ParcelFileDescriptor;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :sswitch_f
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v13, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->sendIRProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :sswitch_10
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->enumerate()I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_11
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->cancelEnumeration()I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_12
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_2

    sget-object v25, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v8, v12, v15, v1}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->processFrontImage(Landroid/os/ParcelFileDescriptor;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :sswitch_13
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->setPreviewTarget(Landroid/os/IBinder;)I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_14
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v15}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->createInputSurface(III)Landroid/os/IBinder;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v25, 0x1

    return v25

    :sswitch_15
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->release(I)I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_16
    const-string/jumbo v25, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->releasePreviewSurface()I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
