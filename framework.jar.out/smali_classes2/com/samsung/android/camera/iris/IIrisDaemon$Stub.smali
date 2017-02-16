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

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_enumerate:I = 0x10

.field static final TRANSACTION_getAuthenticatorId:I = 0x7

.field static final TRANSACTION_init:I = 0xb

.field static final TRANSACTION_openHal:I = 0x9

.field static final TRANSACTION_postEnroll:I = 0xc

.field static final TRANSACTION_preEnroll:I = 0x5

.field static final TRANSACTION_processFrontImage:I = 0x12

.field static final TRANSACTION_processIRImage:I = 0xe

.field static final TRANSACTION_remove:I = 0x6

.field static final TRANSACTION_request:I = 0xd

.field static final TRANSACTION_sendIRProperty:I = 0xf

.field static final TRANSACTION_setActiveGroup:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemon;
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
    const-string/jumbo v1, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisDaemon;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/camera/iris/IIrisDaemon;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 24
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

    .line 261
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v21

    return v21

    .line 46
    :sswitch_0
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/16 v21, 0x1

    return v21

    .line 51
    :sswitch_1
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 55
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 57
    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 58
    .local v16, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v7, v11, v1}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->authenticate(JI[B)I

    move-result v20

    .line 59
    .local v20, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    const/16 v21, 0x1

    return v21

    .line 65
    .end local v6    # "_arg0":J
    .end local v11    # "_arg1":I
    .end local v16    # "_arg2":[B
    .end local v20    # "_result":I
    :sswitch_2
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->cancelAuthentication()I

    move-result v20

    .line 67
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/16 v21, 0x1

    return v21

    .line 73
    .end local v20    # "_result":I
    :sswitch_3
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 77
    .local v10, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 79
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 80
    .local v14, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v14}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->enroll([BII)I

    move-result v20

    .line 81
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/16 v21, 0x1

    return v21

    .line 87
    .end local v10    # "_arg0":[B
    .end local v11    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v20    # "_result":I
    :sswitch_4
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->cancelEnrollment()I

    move-result v20

    .line 89
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/16 v21, 0x1

    return v21

    .line 95
    .end local v20    # "_result":I
    :sswitch_5
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->preEnroll()J

    move-result-wide v22

    .line 97
    .local v22, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    const/16 v21, 0x1

    return v21

    .line 103
    .end local v22    # "_result":J
    :sswitch_6
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 107
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 108
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->remove(II)I

    move-result v20

    .line 109
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/16 v21, 0x1

    return v21

    .line 115
    .end local v4    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v20    # "_result":I
    :sswitch_7
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->getAuthenticatorId()J

    move-result-wide v22

    .line 117
    .restart local v22    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    const/16 v21, 0x1

    return v21

    .line 123
    .end local v22    # "_result":J
    :sswitch_8
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 128
    .local v13, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->setActiveGroup(I[B)I

    move-result v20

    .line 129
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/16 v21, 0x1

    return v21

    .line 135
    .end local v4    # "_arg0":I
    .end local v13    # "_arg1":[B
    .end local v20    # "_result":I
    :sswitch_9
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->openHal()J

    move-result-wide v22

    .line 137
    .restart local v22    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    const/16 v21, 0x1

    return v21

    .line 143
    .end local v22    # "_result":J
    :sswitch_a
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->closeHal()I

    move-result v20

    .line 145
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/16 v21, 0x1

    return v21

    .line 151
    .end local v20    # "_result":I
    :sswitch_b
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    move-result-object v8

    .line 154
    .local v8, "_arg0":Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->init(Lcom/samsung/android/camera/iris/IIrisDaemonCallback;)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/16 v21, 0x1

    return v21

    .line 160
    .end local v8    # "_arg0":Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
    :sswitch_c
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->postEnroll()I

    move-result v20

    .line 162
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/16 v21, 0x1

    return v21

    .line 168
    .end local v20    # "_result":I
    :sswitch_d
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 172
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 174
    .restart local v13    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 175
    .local v17, "_arg2_length":I
    if-gez v17, :cond_0

    .line 176
    const/16 v16, 0x0

    .line 182
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 183
    .local v18, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v4, v13, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->request(I[B[BI)I

    move-result v20

    .line 184
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 187
    const/16 v21, 0x1

    return v21

    .line 179
    .end local v18    # "_arg3":I
    .end local v20    # "_result":I
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .restart local v16    # "_arg2":[B
    goto :goto_0

    .line 191
    .end local v4    # "_arg0":I
    .end local v13    # "_arg1":[B
    .end local v16    # "_arg2":[B
    .end local v17    # "_arg2_length":I
    :sswitch_e
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_1

    .line 194
    sget-object v21, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 200
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 202
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 204
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 205
    .restart local v18    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v11, v14, v1}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->processIRImage(Landroid/os/ParcelFileDescriptor;III)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/16 v21, 0x1

    return v21

    .line 197
    .end local v11    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v18    # "_arg3":I
    :cond_1
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 211
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_f
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 217
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 219
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 220
    .local v19, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v12, v15, v1}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->sendIRProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/16 v21, 0x1

    return v21

    .line 226
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->enumerate()I

    move-result v20

    .line 228
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/16 v21, 0x1

    return v21

    .line 234
    .end local v20    # "_result":I
    :sswitch_11
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->cancelEnumeration()I

    move-result v20

    .line 236
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/16 v21, 0x1

    return v21

    .line 242
    .end local v20    # "_result":I
    :sswitch_12
    const-string/jumbo v21, "com.samsung.android.camera.iris.IIrisDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_2

    .line 245
    sget-object v21, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 251
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 253
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 255
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 256
    .restart local v18    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v11, v14, v1}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->processFrontImage(Landroid/os/ParcelFileDescriptor;III)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/16 v21, 0x1

    return v21

    .line 248
    .end local v11    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v18    # "_arg3":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
