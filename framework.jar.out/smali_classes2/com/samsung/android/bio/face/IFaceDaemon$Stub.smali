.class public abstract Lcom/samsung/android/bio/face/IFaceDaemon$Stub;
.super Landroid/os/Binder;
.source "IFaceDaemon.java"

# interfaces
.implements Lcom/samsung/android/bio/face/IFaceDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/IFaceDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.bio.face.IFaceDaemon"

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_cancelAuthentication:I = 0x2

.field static final TRANSACTION_cancelEnrollment:I = 0x4

.field static final TRANSACTION_cancelEnumeration:I = 0xf

.field static final TRANSACTION_closeHal:I = 0xa

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_enumerate:I = 0xe

.field static final TRANSACTION_getAuthenticatorId:I = 0x7

.field static final TRANSACTION_init:I = 0xb

.field static final TRANSACTION_openHal:I = 0x9

.field static final TRANSACTION_postEnroll:I = 0xc

.field static final TRANSACTION_preEnroll:I = 0x5

.field static final TRANSACTION_processFrontImage:I = 0x10

.field static final TRANSACTION_remove:I = 0x6

.field static final TRANSACTION_request:I = 0xd

.field static final TRANSACTION_setActiveGroup:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceDaemon;
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
    const-string/jumbo v1, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/bio/face/IFaceDaemon;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/bio/face/IFaceDaemon;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 17
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

    .line 222
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v16

    return v16

    .line 46
    :sswitch_0
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/16 v16, 0x1

    return v16

    .line 51
    :sswitch_1
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 55
    .local v4, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 57
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 58
    .local v10, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v7, v10}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->authenticate(JI[B)I

    move-result v13

    .line 59
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    const/16 v16, 0x1

    return v16

    .line 65
    .end local v4    # "_arg0":J
    .end local v7    # "_arg1":I
    .end local v10    # "_arg2":[B
    .end local v13    # "_result":I
    :sswitch_2
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->cancelAuthentication()I

    move-result v13

    .line 67
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/16 v16, 0x1

    return v16

    .line 73
    .end local v13    # "_result":I
    :sswitch_3
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 77
    .local v6, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 79
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 80
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v9}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->enroll([BII)I

    move-result v13

    .line 81
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/16 v16, 0x1

    return v16

    .line 87
    .end local v6    # "_arg0":[B
    .end local v7    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v13    # "_result":I
    :sswitch_4
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->cancelEnrollment()I

    move-result v13

    .line 89
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/16 v16, 0x1

    return v16

    .line 95
    .end local v13    # "_result":I
    :sswitch_5
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->preEnroll()J

    move-result-wide v14

    .line 97
    .local v14, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    const/16 v16, 0x1

    return v16

    .line 103
    .end local v14    # "_result":J
    :sswitch_6
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 108
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->remove(II)I

    move-result v13

    .line 109
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/16 v16, 0x1

    return v16

    .line 115
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v13    # "_result":I
    :sswitch_7
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getAuthenticatorId()J

    move-result-wide v14

    .line 117
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    const/16 v16, 0x1

    return v16

    .line 123
    .end local v14    # "_result":J
    :sswitch_8
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 128
    .local v8, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->setActiveGroup(I[B)I

    move-result v13

    .line 129
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/16 v16, 0x1

    return v16

    .line 135
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v13    # "_result":I
    :sswitch_9
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->openHal()J

    move-result-wide v14

    .line 137
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    const/16 v16, 0x1

    return v16

    .line 143
    .end local v14    # "_result":J
    :sswitch_a
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->closeHal()I

    move-result v13

    .line 145
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/16 v16, 0x1

    return v16

    .line 151
    .end local v13    # "_result":I
    :sswitch_b
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceDaemonCallback;

    move-result-object v3

    .line 154
    .local v3, "_arg0":Lcom/samsung/android/bio/face/IFaceDaemonCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->init(Lcom/samsung/android/bio/face/IFaceDaemonCallback;)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/16 v16, 0x1

    return v16

    .line 160
    .end local v3    # "_arg0":Lcom/samsung/android/bio/face/IFaceDaemonCallback;
    :sswitch_c
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->postEnroll()I

    move-result v13

    .line 162
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/16 v16, 0x1

    return v16

    .line 168
    .end local v13    # "_result":I
    :sswitch_d
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 174
    .restart local v8    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 175
    .local v11, "_arg2_length":I
    if-gez v11, :cond_0

    .line 176
    const/4 v10, 0x0

    .line 182
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 183
    .local v12, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v10, v12}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->request(I[B[BI)I

    move-result v13

    .line 184
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 187
    const/16 v16, 0x1

    return v16

    .line 179
    .end local v12    # "_arg3":I
    .end local v13    # "_result":I
    :cond_0
    new-array v10, v11, [B

    .restart local v10    # "_arg2":[B
    goto :goto_0

    .line 191
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v10    # "_arg2":[B
    .end local v11    # "_arg2_length":I
    :sswitch_e
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->enumerate()I

    move-result v13

    .line 193
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/16 v16, 0x1

    return v16

    .line 199
    .end local v13    # "_result":I
    :sswitch_f
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->cancelEnumeration()I

    move-result v13

    .line 201
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/16 v16, 0x1

    return v16

    .line 207
    .end local v13    # "_result":I
    :sswitch_10
    const-string/jumbo v16, "com.samsung.android.bio.face.IFaceDaemon"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 211
    .restart local v6    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 213
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 215
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 216
    .restart local v12    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v9, v12}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->processFrontImage([BIII)I

    move-result v13

    .line 217
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/16 v16, 0x1

    return v16

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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
