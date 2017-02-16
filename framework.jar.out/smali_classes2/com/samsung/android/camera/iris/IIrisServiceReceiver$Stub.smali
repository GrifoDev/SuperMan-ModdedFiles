.class public abstract Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IIrisServiceReceiver.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camera.iris.IIrisServiceReceiver"

.field static final TRANSACTION_onAcquired:I = 0x2

.field static final TRANSACTION_onAuthenticationFailed:I = 0x4

.field static final TRANSACTION_onAuthenticationSucceeded:I = 0x3

.field static final TRANSACTION_onEnrollResult:I = 0x1

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onIRImage:I = 0x7

.field static final TRANSACTION_onRemoved:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 135
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 46
    :sswitch_0
    const-string/jumbo v3, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    return v3

    .line 51
    :sswitch_1
    const-string/jumbo v3, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 55
    .local v4, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 57
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 59
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg3":I
    move-object/from16 v3, p0

    .line 60
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onEnrollResult(JIII)V

    .line 61
    const/4 v3, 0x1

    return v3

    .line 65
    .end local v4    # "_arg0":J
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_2
    const-string/jumbo v3, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 69
    .restart local v4    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 70
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onAcquired(JI)V

    .line 71
    const/4 v3, 0x1

    return v3

    .line 75
    .end local v4    # "_arg0":J
    .end local v6    # "_arg1":I
    :sswitch_3
    const-string/jumbo v3, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 79
    .restart local v4    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    sget-object v3, Lcom/samsung/android/camera/iris/Iris;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/iris/Iris;

    .line 86
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 87
    .local v15, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v2, v15}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;[B)V

    .line 88
    const/4 v3, 0x1

    return v3

    .line 83
    .end local v15    # "_arg2":[B
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg1":Lcom/samsung/android/camera/iris/Iris;
    goto :goto_0

    .line 92
    .end local v2    # "_arg1":Lcom/samsung/android/camera/iris/Iris;
    .end local v4    # "_arg0":J
    :sswitch_4
    const-string/jumbo v3, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 95
    .restart local v4    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onAuthenticationFailed(J)V

    .line 96
    const/4 v3, 0x1

    return v3

    .line 100
    .end local v4    # "_arg0":J
    :sswitch_5
    const-string/jumbo v3, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 104
    .restart local v4    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 105
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onError(JI)V

    .line 106
    const/4 v3, 0x1

    return v3

    .line 110
    .end local v4    # "_arg0":J
    .end local v6    # "_arg1":I
    :sswitch_6
    const-string/jumbo v3, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 114
    .restart local v4    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 116
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 117
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onRemoved(JII)V

    .line 118
    const/4 v3, 0x1

    return v3

    .line 122
    .end local v4    # "_arg0":J
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_7
    const-string/jumbo v3, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 126
    .restart local v4    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 128
    .local v12, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 130
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v9, p0

    move-wide v10, v4

    move v13, v7

    move v14, v8

    .line 131
    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onIRImage(J[BII)V

    .line 132
    const/4 v3, 0x1

    return v3

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
