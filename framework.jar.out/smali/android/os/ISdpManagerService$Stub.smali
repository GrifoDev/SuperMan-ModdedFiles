.class public abstract Landroid/os/ISdpManagerService$Stub;
.super Landroid/os/Binder;
.source "ISdpManagerService.java"

# interfaces
.implements Landroid/os/ISdpManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISdpManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ISdpManagerService"

.field static final TRANSACTION_addEngine:I = 0x3

.field static final TRANSACTION_allow:I = 0xe

.field static final TRANSACTION_clearEncPkgCache:I = 0x15

.field static final TRANSACTION_clearEncPkgData:I = 0x14

.field static final TRANSACTION_createEncPkgDir:I = 0x12

.field static final TRANSACTION_deleteToeknFromTrusted:I = 0x17

.field static final TRANSACTION_disallow:I = 0xf

.field static final TRANSACTION_enroll:I = 0x19

.field static final TRANSACTION_exists:I = 0xd

.field static final TRANSACTION_getEncPkgDataSizeInfo:I = 0x13

.field static final TRANSACTION_getEngineInfo:I = 0x11

.field static final TRANSACTION_getSupportedSDKVersion:I = 0x10

.field static final TRANSACTION_isLicensed:I = 0xc

.field static final TRANSACTION_isSDPEnabled:I = 0x1

.field static final TRANSACTION_isSdpSupported:I = 0x2

.field static final TRANSACTION_lock:I = 0x6

.field static final TRANSACTION_migrate:I = 0x9

.field static final TRANSACTION_registerClient:I = 0x1b

.field static final TRANSACTION_registerListener:I = 0xa

.field static final TRANSACTION_removeEngine:I = 0x4

.field static final TRANSACTION_resetPassword:I = 0x8

.field static final TRANSACTION_saveTokenIntoTrusted:I = 0x16

.field static final TRANSACTION_setPassword:I = 0x7

.field static final TRANSACTION_unlock:I = 0x5

.field static final TRANSACTION_unlockViaTrusted:I = 0x18

.field static final TRANSACTION_unregisterClient:I = 0x1c

.field static final TRANSACTION_unregisterListener:I = 0xb

.field static final TRANSACTION_verify:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.os.ISdpManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.os.ISdpManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/ISdpManagerService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/ISdpManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ISdpManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 382
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    .line 45
    :sswitch_0
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v14, 0x1

    return v14

    .line 50
    :sswitch_1
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ISdpManagerService$Stub;->isSDPEnabled(I)Z

    move-result v13

    .line 54
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v13, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v14, 0x1

    return v14

    .line 55
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 60
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_2
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/os/ISdpManagerService$Stub;->isSdpSupported()Z

    move-result v13

    .line 62
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v13, :cond_1

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v14, 0x1

    return v14

    .line 63
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 68
    .end local v13    # "_result":Z
    :sswitch_3
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2

    .line 71
    sget-object v14, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;

    .line 77
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v6, v7}, Landroid/os/ISdpManagerService$Stub;->addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 81
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v14, 0x1

    return v14

    .line 74
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :cond_2
    const/4 v3, 0x0

    .local v3, "_arg0":Lcom/samsung/android/knox/sdp/core/SdpCreationParam;
    goto :goto_2

    .line 87
    .end local v3    # "_arg0":Lcom/samsung/android/knox/sdp/core/SdpCreationParam;
    :sswitch_4
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->removeEngine(Ljava/lang/String;)I

    move-result v10

    .line 91
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v14, 0x1

    return v14

    .line 97
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_5
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 102
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->unlock(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 103
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v14, 0x1

    return v14

    .line 109
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_6
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 112
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->lock(Ljava/lang/String;)I

    move-result v10

    .line 113
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v14, 0x1

    return v14

    .line 119
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_7
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 124
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->setPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 125
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v14, 0x1

    return v14

    .line 131
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_8
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 137
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 138
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v4, v6, v7}, Landroid/os/ISdpManagerService$Stub;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 139
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v14, 0x1

    return v14

    .line 145
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_9
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 148
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->migrate(Ljava/lang/String;)I

    move-result v10

    .line 149
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v14, 0x1

    return v14

    .line 155
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_a
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 159
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/os/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpListener;

    move-result-object v5

    .line 160
    .local v5, "_arg1":Landroid/os/ISdpListener;
    invoke-virtual {p0, v4, v5}, Landroid/os/ISdpManagerService$Stub;->registerListener(Ljava/lang/String;Landroid/os/ISdpListener;)I

    move-result v10

    .line 161
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v14, 0x1

    return v14

    .line 167
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/ISdpListener;
    .end local v10    # "_result":I
    :sswitch_b
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/os/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpListener;

    move-result-object v5

    .line 172
    .restart local v5    # "_arg1":Landroid/os/ISdpListener;
    invoke-virtual {p0, v4, v5}, Landroid/os/ISdpManagerService$Stub;->unregisterListener(Ljava/lang/String;Landroid/os/ISdpListener;)I

    move-result v10

    .line 173
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v14, 0x1

    return v14

    .line 179
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/ISdpListener;
    .end local v10    # "_result":I
    :sswitch_c
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 182
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->isLicensed(Ljava/lang/String;)I

    move-result v10

    .line 183
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v14, 0x1

    return v14

    .line 189
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_d
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->exists(Ljava/lang/String;)I

    move-result v10

    .line 193
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v14, 0x1

    return v14

    .line 199
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_e
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 203
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 204
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->allow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 205
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v14, 0x1

    return v14

    .line 211
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_f
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 215
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 216
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->disallow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 217
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v14, 0x1

    return v14

    .line 223
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_10
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Landroid/os/ISdpManagerService$Stub;->getSupportedSDKVersion()D

    move-result-wide v8

    .line 225
    .local v8, "_result":D
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Landroid/os/Parcel;->writeDouble(D)V

    .line 227
    const/4 v14, 0x1

    return v14

    .line 231
    .end local v8    # "_result":D
    :sswitch_11
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 234
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v12

    .line 235
    .local v12, "_result":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v12, :cond_3

    .line 237
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v14}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 243
    :goto_3
    const/4 v14, 0x1

    return v14

    .line 241
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 247
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :sswitch_12
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 252
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Landroid/os/ISdpManagerService$Stub;->createEncPkgDir(ILjava/lang/String;)I

    move-result v10

    .line 253
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v14, 0x1

    return v14

    .line 259
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_13
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 264
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Landroid/os/ISdpManagerService$Stub;->getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v11

    .line 265
    .local v11, "_result":Landroid/content/pm/PackageStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v11, :cond_4

    .line 267
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v14}, Landroid/content/pm/PackageStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 273
    :goto_4
    const/4 v14, 0x1

    return v14

    .line 271
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 277
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Landroid/content/pm/PackageStats;
    :sswitch_14
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 282
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Landroid/os/ISdpManagerService$Stub;->clearEncPkgData(ILjava/lang/String;)Z

    move-result v13

    .line 283
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v13, :cond_5

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v14, 0x1

    return v14

    .line 284
    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .line 289
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_15
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 294
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Landroid/os/ISdpManagerService$Stub;->clearEncPkgCache(ILjava/lang/String;)Z

    move-result v13

    .line 295
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v13, :cond_6

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    const/4 v14, 0x1

    return v14

    .line 296
    :cond_6
    const/4 v14, 0x0

    goto :goto_6

    .line 301
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_16
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 306
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 307
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v14, 0x1

    return v14

    .line 313
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_17
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 316
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->deleteToeknFromTrusted(Ljava/lang/String;)I

    move-result v10

    .line 317
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v14, 0x1

    return v14

    .line 323
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_18
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 327
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 328
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 329
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/4 v14, 0x1

    return v14

    .line 335
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_19
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 339
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 341
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 342
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v4, v6, v7}, Landroid/os/ISdpManagerService$Stub;->enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 343
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v14, 0x1

    return v14

    .line 349
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_1a
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 353
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 355
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 356
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v4, v6, v7}, Landroid/os/ISdpManagerService$Stub;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 357
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v14, 0x1

    return v14

    .line 363
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_1b
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/os/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpListener;

    move-result-object v5

    .line 368
    .restart local v5    # "_arg1":Landroid/os/ISdpListener;
    invoke-virtual {p0, v2, v5}, Landroid/os/ISdpManagerService$Stub;->registerClient(ILandroid/os/ISdpListener;)V

    .line 369
    const/4 v14, 0x1

    return v14

    .line 373
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":Landroid/os/ISdpListener;
    :sswitch_1c
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/os/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpListener;

    move-result-object v5

    .line 378
    .restart local v5    # "_arg1":Landroid/os/ISdpListener;
    invoke-virtual {p0, v2, v5}, Landroid/os/ISdpManagerService$Stub;->unregisterClient(ILandroid/os/ISdpListener;)V

    .line 379
    const/4 v14, 0x1

    return v14

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
