.class public abstract Landroid/ktuca/IKtUcaIF$Stub;
.super Landroid/os/Binder;
.source "IKtUcaIF.java"

# interfaces
.implements Landroid/ktuca/IKtUcaIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ktuca/IKtUcaIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ktuca/IKtUcaIF$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.ktuca.IKtUcaIF"

.field static final TRANSACTION_KUCA_CHInit:I = 0x13

.field static final TRANSACTION_KUCA_Close:I = 0x10

.field static final TRANSACTION_KUCA_CloseT:I = 0x19

.field static final TRANSACTION_KUCA_KUH_Establish:I = 0x15

.field static final TRANSACTION_KUCA_KUH_Release:I = 0x16

.field static final TRANSACTION_KUCA_KUH_Transmit:I = 0x17

.field static final TRANSACTION_KUCA_Open:I = 0xe

.field static final TRANSACTION_KUCA_OpenT:I = 0x18

.field static final TRANSACTION_KUCA_Transmit:I = 0xf

.field static final TRANSACTION_KUCA_UCAVersion:I = 0x12

.field static final TRANSACTION_KUCA_getHandle:I = 0x3

.field static final TRANSACTION_KUCA_getICCID:I = 0x6

.field static final TRANSACTION_KUCA_getIMSI:I = 0x5

.field static final TRANSACTION_KUCA_getMDN:I = 0x8

.field static final TRANSACTION_KUCA_getMODEL:I = 0x9

.field static final TRANSACTION_KUCA_getMSISDN:I = 0x4

.field static final TRANSACTION_KUCA_getPUID:I = 0x7

.field static final TRANSACTION_KUCA_getPinStatus:I = 0xc

.field static final TRANSACTION_KUCA_getSIMInfo:I = 0xa

.field static final TRANSACTION_KUCA_getSimStatus:I = 0x11

.field static final TRANSACTION_KUCA_printCHInfo:I = 0x14

.field static final TRANSACTION_KUCA_usimAUTH:I = 0xb

.field static final TRANSACTION_KUCA_verifyPin:I = 0xd

.field static final TRANSACTION_getResource:I = 0x1

.field static final TRANSACTION_releaseResource:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/ktuca/IKtUcaIF;
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
    const-string/jumbo v1, "android.ktuca.IKtUcaIF"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/ktuca/IKtUcaIF;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/ktuca/IKtUcaIF;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/ktuca/IKtUcaIF$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/ktuca/IKtUcaIF$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 36
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

    .line 646
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/ktuca/IKtUcaIF$Stub;->getResource()I

    move-result v32

    .line 50
    .local v32, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/4 v4, 0x1

    return v4

    .line 56
    .end local v32    # "_result":I
    :sswitch_2
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/ktuca/IKtUcaIF$Stub;->releaseResource()I

    move-result v32

    .line 58
    .restart local v32    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    const/4 v4, 0x1

    return v4

    .line 64
    .end local v32    # "_result":I
    :sswitch_3
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 68
    .local v5, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 70
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 72
    .local v7, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 74
    .local v8, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .local v9, "_arg4":[I
    move-object/from16 v4, p0

    .line 75
    invoke-virtual/range {v4 .. v9}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v34

    .line 76
    .local v34, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 79
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 80
    const/4 v4, 0x1

    return v4

    .line 84
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":[B
    .end local v9    # "_arg4":[I
    .end local v34    # "_result":J
    :sswitch_4
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 88
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 89
    .local v27, "_arg1_length":I
    if-gez v27, :cond_0

    .line 90
    const/4 v6, 0x0

    .line 96
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 97
    .local v28, "_arg2_length":I
    if-gez v28, :cond_1

    .line 98
    const/4 v13, 0x0

    .line 104
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 106
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .local v15, "_arg4":[B
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    .line 107
    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v34

    .line 108
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 111
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 112
    const/4 v4, 0x1

    return v4

    .line 93
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":[B
    .end local v28    # "_arg2_length":I
    .end local v34    # "_result":J
    :cond_0
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_0

    .line 101
    .end local v6    # "_arg1":[B
    .restart local v28    # "_arg2_length":I
    :cond_1
    move/from16 v0, v28

    new-array v13, v0, [I

    .local v13, "_arg2":[I
    goto :goto_1

    .line 116
    .end local v5    # "_arg0":[B
    .end local v13    # "_arg2":[I
    .end local v27    # "_arg1_length":I
    .end local v28    # "_arg2_length":I
    :sswitch_5
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 120
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 121
    .restart local v27    # "_arg1_length":I
    if-gez v27, :cond_2

    .line 122
    const/4 v6, 0x0

    .line 128
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 129
    .restart local v28    # "_arg2_length":I
    if-gez v28, :cond_3

    .line 130
    const/4 v13, 0x0

    .line 136
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 138
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .restart local v15    # "_arg4":[B
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    .line 139
    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v34

    .line 140
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 143
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 144
    const/4 v4, 0x1

    return v4

    .line 125
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":[B
    .end local v28    # "_arg2_length":I
    .end local v34    # "_result":J
    :cond_2
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_2

    .line 133
    .end local v6    # "_arg1":[B
    .restart local v28    # "_arg2_length":I
    :cond_3
    move/from16 v0, v28

    new-array v13, v0, [I

    .restart local v13    # "_arg2":[I
    goto :goto_3

    .line 148
    .end local v5    # "_arg0":[B
    .end local v13    # "_arg2":[I
    .end local v27    # "_arg1_length":I
    .end local v28    # "_arg2_length":I
    :sswitch_6
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 152
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 153
    .restart local v27    # "_arg1_length":I
    if-gez v27, :cond_4

    .line 154
    const/4 v6, 0x0

    .line 160
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 161
    .restart local v28    # "_arg2_length":I
    if-gez v28, :cond_5

    .line 162
    const/4 v13, 0x0

    .line 168
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 170
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .restart local v15    # "_arg4":[B
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    .line 171
    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v34

    .line 172
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 175
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 176
    const/4 v4, 0x1

    return v4

    .line 157
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":[B
    .end local v28    # "_arg2_length":I
    .end local v34    # "_result":J
    :cond_4
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_4

    .line 165
    .end local v6    # "_arg1":[B
    .restart local v28    # "_arg2_length":I
    :cond_5
    move/from16 v0, v28

    new-array v13, v0, [I

    .restart local v13    # "_arg2":[I
    goto :goto_5

    .line 180
    .end local v5    # "_arg0":[B
    .end local v13    # "_arg2":[I
    .end local v27    # "_arg1_length":I
    .end local v28    # "_arg2_length":I
    :sswitch_7
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 184
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 185
    .restart local v27    # "_arg1_length":I
    if-gez v27, :cond_6

    .line 186
    const/4 v6, 0x0

    .line 192
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 193
    .restart local v28    # "_arg2_length":I
    if-gez v28, :cond_7

    .line 194
    const/4 v13, 0x0

    .line 200
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 202
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .restart local v15    # "_arg4":[B
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    .line 203
    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v34

    .line 204
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 207
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 208
    const/4 v4, 0x1

    return v4

    .line 189
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":[B
    .end local v28    # "_arg2_length":I
    .end local v34    # "_result":J
    :cond_6
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_6

    .line 197
    .end local v6    # "_arg1":[B
    .restart local v28    # "_arg2_length":I
    :cond_7
    move/from16 v0, v28

    new-array v13, v0, [I

    .restart local v13    # "_arg2":[I
    goto :goto_7

    .line 212
    .end local v5    # "_arg0":[B
    .end local v13    # "_arg2":[I
    .end local v27    # "_arg1_length":I
    .end local v28    # "_arg2_length":I
    :sswitch_8
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 216
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 217
    .restart local v27    # "_arg1_length":I
    if-gez v27, :cond_8

    .line 218
    const/4 v6, 0x0

    .line 224
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 225
    .restart local v28    # "_arg2_length":I
    if-gez v28, :cond_9

    .line 226
    const/4 v13, 0x0

    .line 232
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 234
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .restart local v15    # "_arg4":[B
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    .line 235
    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v34

    .line 236
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 239
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 240
    const/4 v4, 0x1

    return v4

    .line 221
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":[B
    .end local v28    # "_arg2_length":I
    .end local v34    # "_result":J
    :cond_8
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_8

    .line 229
    .end local v6    # "_arg1":[B
    .restart local v28    # "_arg2_length":I
    :cond_9
    move/from16 v0, v28

    new-array v13, v0, [I

    .restart local v13    # "_arg2":[I
    goto :goto_9

    .line 244
    .end local v5    # "_arg0":[B
    .end local v13    # "_arg2":[I
    .end local v27    # "_arg1_length":I
    .end local v28    # "_arg2_length":I
    :sswitch_9
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 248
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 249
    .restart local v27    # "_arg1_length":I
    if-gez v27, :cond_a

    .line 250
    const/4 v6, 0x0

    .line 256
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 257
    .restart local v28    # "_arg2_length":I
    if-gez v28, :cond_b

    .line 258
    const/4 v13, 0x0

    .line 264
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 266
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .restart local v15    # "_arg4":[B
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    .line 267
    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v34

    .line 268
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 270
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 271
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 272
    const/4 v4, 0x1

    return v4

    .line 253
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":[B
    .end local v28    # "_arg2_length":I
    .end local v34    # "_result":J
    :cond_a
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_a

    .line 261
    .end local v6    # "_arg1":[B
    .restart local v28    # "_arg2_length":I
    :cond_b
    move/from16 v0, v28

    new-array v13, v0, [I

    .restart local v13    # "_arg2":[I
    goto :goto_b

    .line 276
    .end local v5    # "_arg0":[B
    .end local v13    # "_arg2":[I
    .end local v27    # "_arg1_length":I
    .end local v28    # "_arg2_length":I
    :sswitch_a
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 280
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 281
    .restart local v27    # "_arg1_length":I
    if-gez v27, :cond_c

    .line 282
    const/4 v6, 0x0

    .line 288
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 289
    .restart local v28    # "_arg2_length":I
    if-gez v28, :cond_d

    .line 290
    const/4 v13, 0x0

    .line 295
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v13}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v34

    .line 296
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 298
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 299
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 300
    const/4 v4, 0x1

    return v4

    .line 285
    .end local v28    # "_arg2_length":I
    .end local v34    # "_result":J
    :cond_c
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_c

    .line 293
    .end local v6    # "_arg1":[B
    .restart local v28    # "_arg2_length":I
    :cond_d
    move/from16 v0, v28

    new-array v13, v0, [I

    .restart local v13    # "_arg2":[I
    goto :goto_d

    .line 304
    .end local v5    # "_arg0":[B
    .end local v13    # "_arg2":[I
    .end local v27    # "_arg1_length":I
    .end local v28    # "_arg2_length":I
    :sswitch_b
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 308
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 310
    .restart local v6    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 312
    .restart local v7    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 313
    .local v30, "_arg3_length":I
    if-gez v30, :cond_e

    .line 314
    const/4 v8, 0x0

    .line 320
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 321
    .local v31, "_arg4_length":I
    if-gez v31, :cond_f

    .line 322
    const/4 v9, 0x0

    :goto_f
    move-object/from16 v4, p0

    .line 327
    invoke-virtual/range {v4 .. v9}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v34

    .line 328
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 330
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 331
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 332
    const/4 v4, 0x1

    return v4

    .line 317
    .end local v31    # "_arg4_length":I
    .end local v34    # "_result":J
    :cond_e
    move/from16 v0, v30

    new-array v8, v0, [B

    .restart local v8    # "_arg3":[B
    goto :goto_e

    .line 325
    .end local v8    # "_arg3":[B
    .restart local v31    # "_arg4_length":I
    :cond_f
    move/from16 v0, v31

    new-array v9, v0, [I

    .restart local v9    # "_arg4":[I
    goto :goto_f

    .line 336
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":[B
    .end local v9    # "_arg4":[I
    .end local v30    # "_arg3_length":I
    .end local v31    # "_arg4_length":I
    :sswitch_c
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 340
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 342
    .local v18, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 343
    .restart local v28    # "_arg2_length":I
    if-gez v28, :cond_10

    .line 344
    const/4 v7, 0x0

    .line 350
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 351
    .restart local v30    # "_arg3_length":I
    if-gez v30, :cond_11

    .line 352
    const/16 v29, 0x0

    .line 357
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v29

    invoke-virtual {v0, v5, v1, v7, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v34

    .line 358
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 360
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 361
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 362
    const/4 v4, 0x1

    return v4

    .line 347
    .end local v30    # "_arg3_length":I
    .end local v34    # "_result":J
    :cond_10
    move/from16 v0, v28

    new-array v7, v0, [B

    .restart local v7    # "_arg2":[B
    goto :goto_10

    .line 355
    .end local v7    # "_arg2":[B
    .restart local v30    # "_arg3_length":I
    :cond_11
    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v29, v0

    .local v29, "_arg3":[I
    goto :goto_11

    .line 366
    .end local v5    # "_arg0":[B
    .end local v18    # "_arg1":I
    .end local v28    # "_arg2_length":I
    .end local v29    # "_arg3":[I
    .end local v30    # "_arg3_length":I
    :sswitch_d
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 370
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 372
    .restart local v18    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 374
    .local v19, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 375
    .restart local v30    # "_arg3_length":I
    if-gez v30, :cond_12

    .line 376
    const/4 v8, 0x0

    .line 382
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 383
    .restart local v31    # "_arg4_length":I
    if-gez v31, :cond_13

    .line 384
    const/4 v9, 0x0

    :goto_13
    move-object/from16 v16, p0

    move-object/from16 v17, v5

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 389
    invoke-virtual/range {v16 .. v21}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v34

    .line 390
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 392
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 393
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 394
    const/4 v4, 0x1

    return v4

    .line 379
    .end local v31    # "_arg4_length":I
    .end local v34    # "_result":J
    :cond_12
    move/from16 v0, v30

    new-array v8, v0, [B

    .restart local v8    # "_arg3":[B
    goto :goto_12

    .line 387
    .end local v8    # "_arg3":[B
    .restart local v31    # "_arg4_length":I
    :cond_13
    move/from16 v0, v31

    new-array v9, v0, [I

    .restart local v9    # "_arg4":[I
    goto :goto_13

    .line 398
    .end local v5    # "_arg0":[B
    .end local v9    # "_arg4":[I
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v30    # "_arg3_length":I
    .end local v31    # "_arg4_length":I
    :sswitch_e
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 402
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 403
    .restart local v27    # "_arg1_length":I
    if-gez v27, :cond_14

    .line 404
    const/4 v6, 0x0

    .line 410
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 411
    .restart local v28    # "_arg2_length":I
    if-gez v28, :cond_15

    .line 412
    const/4 v13, 0x0

    .line 417
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v13}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Open([B[B[I)J

    move-result-wide v34

    .line 418
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 420
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 421
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 422
    const/4 v4, 0x1

    return v4

    .line 407
    .end local v28    # "_arg2_length":I
    .end local v34    # "_result":J
    :cond_14
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_14

    .line 415
    .end local v6    # "_arg1":[B
    .restart local v28    # "_arg2_length":I
    :cond_15
    move/from16 v0, v28

    new-array v13, v0, [I

    .restart local v13    # "_arg2":[I
    goto :goto_15

    .line 426
    .end local v5    # "_arg0":[B
    .end local v13    # "_arg2":[I
    .end local v27    # "_arg1_length":I
    .end local v28    # "_arg2_length":I
    :sswitch_f
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 430
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 432
    .restart local v6    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 434
    .local v23, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 435
    .restart local v30    # "_arg3_length":I
    if-gez v30, :cond_16

    .line 436
    const/4 v8, 0x0

    .line 442
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 443
    .restart local v31    # "_arg4_length":I
    if-gez v31, :cond_17

    .line 444
    const/4 v9, 0x0

    :goto_17
    move-object/from16 v20, p0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    .line 449
    invoke-virtual/range {v20 .. v25}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v34

    .line 450
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 452
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 453
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 454
    const/4 v4, 0x1

    return v4

    .line 439
    .end local v31    # "_arg4_length":I
    .end local v34    # "_result":J
    :cond_16
    move/from16 v0, v30

    new-array v8, v0, [B

    .restart local v8    # "_arg3":[B
    goto :goto_16

    .line 447
    .end local v8    # "_arg3":[B
    .restart local v31    # "_arg4_length":I
    :cond_17
    move/from16 v0, v31

    new-array v9, v0, [I

    .restart local v9    # "_arg4":[I
    goto :goto_17

    .line 458
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v9    # "_arg4":[I
    .end local v23    # "_arg2":I
    .end local v30    # "_arg3_length":I
    .end local v31    # "_arg4_length":I
    :sswitch_10
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 462
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v26

    .line 463
    .local v26, "_arg1":B
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Close([BB)J

    move-result-wide v34

    .line 464
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 466
    const/4 v4, 0x1

    return v4

    .line 470
    .end local v5    # "_arg0":[B
    .end local v26    # "_arg1":B
    .end local v34    # "_result":J
    :sswitch_11
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 474
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 475
    .restart local v27    # "_arg1_length":I
    if-gez v27, :cond_18

    .line 476
    const/4 v6, 0x0

    .line 481
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSimStatus([B[B)J

    move-result-wide v34

    .line 482
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 484
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 485
    const/4 v4, 0x1

    return v4

    .line 479
    .end local v34    # "_result":J
    :cond_18
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_18

    .line 489
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v27    # "_arg1_length":I
    :sswitch_12
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 493
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 494
    .restart local v27    # "_arg1_length":I
    if-gez v27, :cond_19

    .line 495
    const/4 v6, 0x0

    .line 501
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 502
    .restart local v28    # "_arg2_length":I
    if-gez v28, :cond_1a

    .line 503
    const/4 v13, 0x0

    .line 508
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v13}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v34

    .line 509
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 511
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 512
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 513
    const/4 v4, 0x1

    return v4

    .line 498
    .end local v28    # "_arg2_length":I
    .end local v34    # "_result":J
    :cond_19
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_19

    .line 506
    .end local v6    # "_arg1":[B
    .restart local v28    # "_arg2_length":I
    :cond_1a
    move/from16 v0, v28

    new-array v13, v0, [I

    .restart local v13    # "_arg2":[I
    goto :goto_1a

    .line 517
    .end local v5    # "_arg0":[B
    .end local v13    # "_arg2":[I
    .end local v27    # "_arg1_length":I
    .end local v28    # "_arg2_length":I
    :sswitch_13
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v21

    .line 521
    .local v21, "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 522
    .restart local v27    # "_arg1_length":I
    if-gez v27, :cond_1b

    .line 523
    const/4 v6, 0x0

    .line 529
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 530
    .restart local v28    # "_arg2_length":I
    if-gez v28, :cond_1c

    .line 531
    const/4 v13, 0x0

    .line 536
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6, v13}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CHInit(B[B[I)J

    move-result-wide v34

    .line 537
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 539
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 540
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 541
    const/4 v4, 0x1

    return v4

    .line 526
    .end local v28    # "_arg2_length":I
    .end local v34    # "_result":J
    :cond_1b
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_1b

    .line 534
    .end local v6    # "_arg1":[B
    .restart local v28    # "_arg2_length":I
    :cond_1c
    move/from16 v0, v28

    new-array v13, v0, [I

    .restart local v13    # "_arg2":[I
    goto :goto_1c

    .line 545
    .end local v13    # "_arg2":[I
    .end local v21    # "_arg0":B
    .end local v27    # "_arg1_length":I
    .end local v28    # "_arg2_length":I
    :sswitch_14
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v21

    .line 548
    .restart local v21    # "_arg0":B
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_printCHInfo(B)J

    move-result-wide v34

    .line 549
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 551
    const/4 v4, 0x1

    return v4

    .line 555
    .end local v21    # "_arg0":B
    .end local v34    # "_result":J
    :sswitch_15
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v21

    .line 558
    .restart local v21    # "_arg0":B
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Establish(B)J

    move-result-wide v34

    .line 559
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 561
    const/4 v4, 0x1

    return v4

    .line 565
    .end local v21    # "_arg0":B
    .end local v34    # "_result":J
    :sswitch_16
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v21

    .line 568
    .restart local v21    # "_arg0":B
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Release(B)J

    move-result-wide v34

    .line 569
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 571
    const/4 v4, 0x1

    return v4

    .line 575
    .end local v21    # "_arg0":B
    .end local v34    # "_result":J
    :sswitch_17
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v21

    .line 579
    .restart local v21    # "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 581
    .restart local v6    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 583
    .restart local v23    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 584
    .restart local v30    # "_arg3_length":I
    if-gez v30, :cond_1d

    .line 585
    const/4 v8, 0x0

    .line 591
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 592
    .restart local v31    # "_arg4_length":I
    if-gez v31, :cond_1e

    .line 593
    const/4 v9, 0x0

    :goto_1e
    move-object/from16 v20, p0

    move-object/from16 v22, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    .line 598
    invoke-virtual/range {v20 .. v25}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v34

    .line 599
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 601
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 602
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 603
    const/4 v4, 0x1

    return v4

    .line 588
    .end local v31    # "_arg4_length":I
    .end local v34    # "_result":J
    :cond_1d
    move/from16 v0, v30

    new-array v8, v0, [B

    .restart local v8    # "_arg3":[B
    goto :goto_1d

    .line 596
    .end local v8    # "_arg3":[B
    .restart local v31    # "_arg4_length":I
    :cond_1e
    move/from16 v0, v31

    new-array v9, v0, [I

    .restart local v9    # "_arg4":[I
    goto :goto_1e

    .line 607
    .end local v6    # "_arg1":[B
    .end local v9    # "_arg4":[I
    .end local v21    # "_arg0":B
    .end local v23    # "_arg2":I
    .end local v30    # "_arg3_length":I
    .end local v31    # "_arg4_length":I
    :sswitch_18
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 611
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 612
    .restart local v27    # "_arg1_length":I
    if-gez v27, :cond_1f

    .line 613
    const/4 v6, 0x0

    .line 619
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 620
    .restart local v28    # "_arg2_length":I
    if-gez v28, :cond_20

    .line 621
    const/4 v13, 0x0

    .line 626
    :goto_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v13}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_OpenT([B[B[I)J

    move-result-wide v34

    .line 627
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 629
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 630
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 631
    const/4 v4, 0x1

    return v4

    .line 616
    .end local v28    # "_arg2_length":I
    .end local v34    # "_result":J
    :cond_1f
    move/from16 v0, v27

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_1f

    .line 624
    .end local v6    # "_arg1":[B
    .restart local v28    # "_arg2_length":I
    :cond_20
    move/from16 v0, v28

    new-array v13, v0, [I

    .restart local v13    # "_arg2":[I
    goto :goto_20

    .line 635
    .end local v5    # "_arg0":[B
    .end local v13    # "_arg2":[I
    .end local v27    # "_arg1_length":I
    .end local v28    # "_arg2_length":I
    :sswitch_19
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 639
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v26

    .line 640
    .restart local v26    # "_arg1":B
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CloseT([BB)J

    move-result-wide v34

    .line 641
    .restart local v34    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 643
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
