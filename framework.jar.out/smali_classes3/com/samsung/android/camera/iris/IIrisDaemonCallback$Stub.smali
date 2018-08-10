.class public abstract Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;
.super Landroid/os/Binder;
.source "IIrisDaemonCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisDaemonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camera.iris.IIrisDaemonCallback"

.field static final TRANSACTION_onAcquired:I = 0x2

.field static final TRANSACTION_onAuthenticated:I = 0x3

.field static final TRANSACTION_onEnrollResult:I = 0x1

.field static final TRANSACTION_onEnumerate:I = 0x7

.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onGeneralParameterChanged:I = 0x9

.field static final TRANSACTION_onIRPropertyChanged:I = 0x6

.field static final TRANSACTION_onImageProcessed:I = 0x8

.field static final TRANSACTION_onRemoved:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :sswitch_1
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onEnrollResult(JIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_2
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/camera/iris/EyeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/iris/EyeInfo;

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onAcquired(JLcom/samsung/android/camera/iris/EyeInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    move-object/from16 v11, p0

    move-wide v12, v6

    move v14, v8

    move v15, v9

    invoke-virtual/range {v11 .. v17}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onAuthenticated(JII[B[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_4
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onError(JI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_5
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onRemoved(JII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_6
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onIRPropertyChanged(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_7
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onEnumerate(J[I[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_8
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v19, p0

    move-wide/from16 v20, v6

    move/from16 v22, v8

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v25}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onImageProcessed(JI[BII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_9
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onGeneralParameterChanged(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
