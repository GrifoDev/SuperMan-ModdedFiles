.class public abstract Landroid/service/tima/ITimaService$Stub;
.super Landroid/os/Binder;
.source "ITimaService.java"

# interfaces
.implements Landroid/service/tima/ITimaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/tima/ITimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/tima/ITimaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.tima.ITimaService"

.field static final TRANSACTION_DCMSelfCheck:I = 0x2d

.field static final TRANSACTION_FipsKeyStore3_del:I = 0x29

.field static final TRANSACTION_FipsKeyStore3_exist:I = 0x26

.field static final TRANSACTION_FipsKeyStore3_get:I = 0x27

.field static final TRANSACTION_FipsKeyStore3_getmtime:I = 0x28

.field static final TRANSACTION_FipsKeyStore3_init:I = 0x24

.field static final TRANSACTION_FipsKeyStore3_put:I = 0x25

.field static final TRANSACTION_FipsKeyStore3_saw:I = 0x2a

.field static final TRANSACTION_KeyStore3_del:I = 0x11

.field static final TRANSACTION_KeyStore3_exist:I = 0xe

.field static final TRANSACTION_KeyStore3_get:I = 0xf

.field static final TRANSACTION_KeyStore3_getmtime:I = 0x10

.field static final TRANSACTION_KeyStore3_init:I = 0xc

.field static final TRANSACTION_KeyStore3_put:I = 0xd

.field static final TRANSACTION_KeyStore3_saw:I = 0x12

.field static final TRANSACTION_attestation:I = 0xa

.field static final TRANSACTION_ccmRegisterForDefaultCertificate:I = 0x14

.field static final TRANSACTION_checkEvent:I = 0x1

.field static final TRANSACTION_checkHistory:I = 0x2

.field static final TRANSACTION_displayEvent:I = 0x3

.field static final TRANSACTION_dumpLog:I = 0x15

.field static final TRANSACTION_getDeviceID:I = 0xb

.field static final TRANSACTION_getEventList:I = 0x4

.field static final TRANSACTION_getTimaVersion:I = 0x13

.field static final TRANSACTION_getTuiVersion:I = 0x1d

.field static final TRANSACTION_isKapEnforced:I = 0x2c

.field static final TRANSACTION_keystoreInit:I = 0x6

.field static final TRANSACTION_keystoreInstallKey:I = 0x7

.field static final TRANSACTION_keystoreRetrieveKey:I = 0x8

.field static final TRANSACTION_keystoreShutdown:I = 0x9

.field static final TRANSACTION_launchTui:I = 0x18

.field static final TRANSACTION_launchTuiWithSecretId:I = 0x19

.field static final TRANSACTION_loadTui:I = 0x16

.field static final TRANSACTION_setISLCallback:I = 0x5

.field static final TRANSACTION_setKapMode:I = 0x2b

.field static final TRANSACTION_tuiDecryptPinHash:I = 0x22

.field static final TRANSACTION_tuiGetCerts:I = 0x20

.field static final TRANSACTION_tuiGetSecretDimension:I = 0x21

.field static final TRANSACTION_tuiInitSecret:I = 0x1a

.field static final TRANSACTION_tuiInitSecretFile:I = 0x1b

.field static final TRANSACTION_tuiInitSecretMemoryFile:I = 0x1c

.field static final TRANSACTION_tuiRegAppImage:I = 0x1e

.field static final TRANSACTION_tuiRegAppImageFile:I = 0x1f

.field static final TRANSACTION_unloadTui:I = 0x17

.field static final TRANSACTION_verifyCertChain:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.service.tima.ITimaService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;
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
    const-string/jumbo v1, "android.service.tima.ITimaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/service/tima/ITimaService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/tima/ITimaService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/tima/ITimaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 556
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 52
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 53
    .local v12, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Landroid/service/tima/ITimaService$Stub;->checkEvent(II)Ljava/lang/String;

    move-result-object v30

    .line 54
    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v4, 0x1

    return v4

    .line 60
    .end local v12    # "_arg1":I
    .end local v16    # "_arg0":I
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 64
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 65
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Landroid/service/tima/ITimaService$Stub;->checkHistory(II)Ljava/lang/String;

    move-result-object v30

    .line 66
    .restart local v30    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    const/4 v4, 0x1

    return v4

    .line 72
    .end local v12    # "_arg1":I
    .end local v16    # "_arg0":I
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/service/tima/ITimaService$Stub;->displayEvent(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v4, 0x1

    return v4

    .line 81
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 84
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/service/tima/ITimaService$Stub;->getEventList(I)Ljava/util/List;

    move-result-object v31

    .line 85
    .local v31, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 87
    const/4 v4, 0x1

    return v4

    .line 91
    .end local v16    # "_arg0":I
    .end local v31    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/tima/ITimaISLCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaISLCallback;

    move-result-object v17

    .line 94
    .local v17, "_arg0":Landroid/service/tima/ITimaISLCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/service/tima/ITimaService$Stub;->setISLCallback(Landroid/service/tima/ITimaISLCallback;)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v4, 0x1

    return v4

    .line 100
    .end local v17    # "_arg0":Landroid/service/tima/ITimaISLCallback;
    :sswitch_6
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->keystoreInit()I

    move-result v27

    .line 102
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v4, 0x1

    return v4

    .line 108
    .end local v27    # "_result":I
    :sswitch_7
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 112
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 113
    .local v21, "_arg1":[B
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->keystoreInstallKey(I[B)I

    move-result v27

    .line 114
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v4, 0x1

    return v4

    .line 120
    .end local v16    # "_arg0":I
    .end local v21    # "_arg1":[B
    .end local v27    # "_result":I
    :sswitch_8
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 123
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/service/tima/ITimaService$Stub;->keystoreRetrieveKey(I)[B

    move-result-object v33

    .line 124
    .local v33, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 126
    const/4 v4, 0x1

    return v4

    .line 130
    .end local v16    # "_arg0":I
    .end local v33    # "_result":[B
    :sswitch_9
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->keystoreShutdown()I

    move-result v27

    .line 132
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v4, 0x1

    return v4

    .line 138
    .end local v27    # "_result":I
    :sswitch_a
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 142
    .local v19, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 143
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/service/tima/ITimaService$Stub;->attestation([BI)[B

    move-result-object v33

    .line 144
    .restart local v33    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 146
    const/4 v4, 0x1

    return v4

    .line 150
    .end local v12    # "_arg1":I
    .end local v19    # "_arg0":[B
    .end local v33    # "_result":[B
    :sswitch_b
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->getDeviceID()[B

    move-result-object v33

    .line 152
    .restart local v33    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 154
    const/4 v4, 0x1

    return v4

    .line 158
    .end local v33    # "_result":[B
    :sswitch_c
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_init()I

    move-result v27

    .line 160
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v4, 0x1

    return v4

    .line 166
    .end local v27    # "_result":I
    :sswitch_d
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 170
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 172
    .restart local v21    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 174
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v26

    .line 175
    .local v26, "_arg3":[C
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v13, v2}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v27

    .line 176
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v4, 0x1

    return v4

    .line 182
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg2":I
    .end local v21    # "_arg1":[B
    .end local v26    # "_arg3":[C
    .end local v27    # "_result":I
    :sswitch_e
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 186
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 187
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_exist(Ljava/lang/String;I)Z

    move-result v32

    .line 188
    .local v32, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v32, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v4, 0x1

    return v4

    .line 189
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 194
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v32    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 198
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v22

    .line 199
    .local v22, "_arg1":[C
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v33

    .line 200
    .restart local v33    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 202
    const/4 v4, 0x1

    return v4

    .line 206
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":[C
    .end local v33    # "_result":[B
    :sswitch_10
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 209
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v28

    .line 210
    .local v28, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    move-object/from16 v0, p3

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    const/4 v4, 0x1

    return v4

    .line 216
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":J
    :sswitch_11
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 220
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 221
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_del(Ljava/lang/String;I)Z

    move-result v32

    .line 222
    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v32, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v4, 0x1

    return v4

    .line 223
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 228
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v32    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 232
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 233
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v35

    .line 234
    .local v35, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 236
    const/4 v4, 0x1

    return v4

    .line 240
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v35    # "_result":[Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->getTimaVersion()Ljava/lang/String;

    move-result-object v30

    .line 242
    .restart local v30    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    const/4 v4, 0x1

    return v4

    .line 248
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 252
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 256
    .local v23, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x1

    .line 257
    .local v8, "_arg3":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v6, v2, v8}, Landroid/service/tima/ITimaService$Stub;->ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v27

    .line 258
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v4, 0x1

    return v4

    .line 256
    .end local v8    # "_arg3":Z
    .end local v27    # "_result":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 264
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg0":I
    .end local v23    # "_arg2":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->dumpLog()[B

    move-result-object v33

    .line 266
    .restart local v33    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 268
    const/4 v4, 0x1

    return v4

    .line 272
    .end local v33    # "_result":[B
    :sswitch_16
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->loadTui()I

    move-result v27

    .line 274
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v4, 0x1

    return v4

    .line 280
    .end local v27    # "_result":I
    :sswitch_17
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->unloadTui()I

    move-result v27

    .line 282
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v4, 0x1

    return v4

    .line 288
    .end local v27    # "_result":I
    :sswitch_18
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 292
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 294
    .restart local v21    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v24, 0x1

    .line 296
    .local v24, "_arg2":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 297
    .local v14, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v5, v1, v2, v14}, Landroid/service/tima/ITimaService$Stub;->launchTui(Ljava/lang/String;[BZI)[B

    move-result-object v33

    .line 298
    .restart local v33    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 300
    const/4 v4, 0x1

    return v4

    .line 294
    .end local v14    # "_arg3":I
    .end local v24    # "_arg2":Z
    .end local v33    # "_result":[B
    :cond_3
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_3

    .line 304
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":[B
    .end local v24    # "_arg2":Z
    :sswitch_19
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 308
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 310
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 312
    .local v7, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v8, 0x1

    .line 314
    .local v8, "_arg3":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    .line 315
    invoke-virtual/range {v4 .. v9}, Landroid/service/tima/ITimaService$Stub;->launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B

    move-result-object v33

    .line 316
    .restart local v33    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 318
    const/4 v4, 0x1

    return v4

    .line 312
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    .end local v33    # "_result":[B
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_4

    .line 322
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":Z
    :sswitch_1a
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 326
    .restart local v19    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 328
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 330
    .restart local v13    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 331
    .local v25, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v12, v13, v2}, Landroid/service/tima/ITimaService$Stub;->tuiInitSecret([BIILjava/lang/String;)I

    move-result v27

    .line 332
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v4, 0x1

    return v4

    .line 338
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v19    # "_arg0":[B
    .end local v25    # "_arg3":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_1b
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 342
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 344
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 346
    .restart local v13    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 347
    .restart local v25    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v12, v13, v1}, Landroid/service/tima/ITimaService$Stub;->tuiInitSecretFile(Ljava/lang/String;IILjava/lang/String;)I

    move-result v27

    .line 348
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const/4 v4, 0x1

    return v4

    .line 354
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v25    # "_arg3":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_1c
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 357
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelFileDescriptor;

    .line 363
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 365
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 367
    .restart local v13    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 369
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, "_arg4":Ljava/lang/String;
    move-object/from16 v10, p0

    .line 370
    invoke-virtual/range {v10 .. v15}, Landroid/service/tima/ITimaService$Stub;->tuiInitSecretMemoryFile(Landroid/os/ParcelFileDescriptor;IIILjava/lang/String;)I

    move-result v27

    .line 371
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v4, 0x1

    return v4

    .line 360
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":Ljava/lang/String;
    .end local v27    # "_result":I
    :cond_5
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5

    .line 377
    .end local v11    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_1d
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->getTuiVersion()Ljava/lang/String;

    move-result-object v30

    .line 379
    .restart local v30    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    const/4 v4, 0x1

    return v4

    .line 385
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 389
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 390
    .restart local v21    # "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/service/tima/ITimaService$Stub;->tuiRegAppImage(Ljava/lang/String;[B)[I

    move-result-object v34

    .line 391
    .local v34, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 393
    const/4 v4, 0x1

    return v4

    .line 397
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":[B
    .end local v34    # "_result":[I
    :sswitch_1f
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 401
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 402
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/service/tima/ITimaService$Stub;->tuiRegAppImageFile(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v34

    .line 403
    .restart local v34    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 405
    const/4 v4, 0x1

    return v4

    .line 409
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":[I
    :sswitch_20
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->tuiGetCerts()[B

    move-result-object v33

    .line 411
    .restart local v33    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 413
    const/4 v4, 0x1

    return v4

    .line 417
    .end local v33    # "_result":[B
    :sswitch_21
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->tuiGetSecretDimension()[I

    move-result-object v34

    .line 419
    .restart local v34    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 421
    const/4 v4, 0x1

    return v4

    .line 425
    .end local v34    # "_result":[I
    :sswitch_22
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 429
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 430
    .restart local v21    # "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/service/tima/ITimaService$Stub;->tuiDecryptPinHash(Ljava/lang/String;[B)[B

    move-result-object v33

    .line 431
    .restart local v33    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 433
    const/4 v4, 0x1

    return v4

    .line 437
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":[B
    .end local v33    # "_result":[B
    :sswitch_23
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 440
    .restart local v19    # "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/service/tima/ITimaService$Stub;->verifyCertChain([B)[B

    move-result-object v33

    .line 441
    .restart local v33    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 443
    const/4 v4, 0x1

    return v4

    .line 447
    .end local v19    # "_arg0":[B
    .end local v33    # "_result":[B
    :sswitch_24
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v18, 0x1

    .line 450
    .local v18, "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_init(Z)I

    move-result v27

    .line 451
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v4, 0x1

    return v4

    .line 449
    .end local v18    # "_arg0":Z
    .end local v27    # "_result":I
    :cond_6
    const/16 v18, 0x0

    goto :goto_6

    .line 457
    :sswitch_25
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 461
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 463
    .restart local v21    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 465
    .restart local v13    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v26

    .line 466
    .restart local v26    # "_arg3":[C
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v13, v2}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v27

    .line 467
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v4, 0x1

    return v4

    .line 473
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg2":I
    .end local v21    # "_arg1":[B
    .end local v26    # "_arg3":[C
    .end local v27    # "_result":I
    :sswitch_26
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 477
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 478
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_exist(Ljava/lang/String;I)Z

    move-result v32

    .line 479
    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v32, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    const/4 v4, 0x1

    return v4

    .line 480
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 485
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v32    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 489
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v22

    .line 490
    .restart local v22    # "_arg1":[C
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v33

    .line 491
    .restart local v33    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 493
    const/4 v4, 0x1

    return v4

    .line 497
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":[C
    .end local v33    # "_result":[B
    :sswitch_28
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 500
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v28

    .line 501
    .restart local v28    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    move-object/from16 v0, p3

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 503
    const/4 v4, 0x1

    return v4

    .line 507
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":J
    :sswitch_29
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 511
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 512
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_del(Ljava/lang/String;I)Z

    move-result v32

    .line 513
    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v32, :cond_8

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v4, 0x1

    return v4

    .line 514
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 519
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v32    # "_result":Z
    :sswitch_2a
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 523
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 524
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/service/tima/ITimaService$Stub;->FipsKeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v35

    .line 525
    .restart local v35    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 527
    const/4 v4, 0x1

    return v4

    .line 531
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v35    # "_result":[Ljava/lang/String;
    :sswitch_2b
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v18, 0x1

    .line 535
    .local v18, "_arg0":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v20, 0x1

    .line 536
    .local v20, "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->setKapMode(ZZ)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    const/4 v4, 0x1

    return v4

    .line 533
    .end local v18    # "_arg0":Z
    .end local v20    # "_arg1":Z
    :cond_9
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Z
    goto :goto_9

    .line 535
    :cond_a
    const/16 v20, 0x0

    goto :goto_a

    .line 542
    .end local v18    # "_arg0":Z
    :sswitch_2c
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->isKapEnforced()Z

    move-result v32

    .line 544
    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v32, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    const/4 v4, 0x1

    return v4

    .line 545
    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    .line 550
    .end local v32    # "_result":Z
    :sswitch_2d
    const-string/jumbo v4, "android.service.tima.ITimaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p0 .. p0}, Landroid/service/tima/ITimaService$Stub;->DCMSelfCheck()V

    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    const/4 v4, 0x1

    return v4

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
