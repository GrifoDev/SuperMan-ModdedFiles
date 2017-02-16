.class public abstract Lcom/samsung/android/vr/IGearVrManagerService$Stub;
.super Landroid/os/Binder;
.source "IGearVrManagerService.java"

# interfaces
.implements Lcom/samsung/android/vr/IGearVrManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/IGearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/IGearVrManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.vr.IGearVrManagerService"

.field static final TRANSACTION_acquireVrClocks:I = 0x3

.field static final TRANSACTION_enforceCallingPermission:I = 0xa

.field static final TRANSACTION_enforceCallingSelfPermission:I = 0xb

.field static final TRANSACTION_getPowerLevelState:I = 0x8

.field static final TRANSACTION_getSystemOption:I = 0x6

.field static final TRANSACTION_getThreadId:I = 0x12

.field static final TRANSACTION_isDock:I = 0x1

.field static final TRANSACTION_isMount:I = 0x2

.field static final TRANSACTION_isVrMode:I = 0xd

.field static final TRANSACTION_readSysNode:I = 0x13

.field static final TRANSACTION_registerVrStateListener:I = 0x1b

.field static final TRANSACTION_releaseVrClocks:I = 0x4

.field static final TRANSACTION_removeSysNode:I = 0x15

.field static final TRANSACTION_retrieveEnableFrequencyLevels:I = 0x7

.field static final TRANSACTION_setHomeKeyBlocked:I = 0xe

.field static final TRANSACTION_setOverlayRestriction:I = 0xf

.field static final TRANSACTION_setPermissions:I = 0x16

.field static final TRANSACTION_setReadyForVrMode:I = 0x10

.field static final TRANSACTION_setSystemMouseControlType:I = 0x19

.field static final TRANSACTION_setSystemMouseShowMouseEnabled:I = 0x1a

.field static final TRANSACTION_setSystemOption:I = 0x5

.field static final TRANSACTION_setThreadAffinity:I = 0x11

.field static final TRANSACTION_setThreadGroup:I = 0x17

.field static final TRANSACTION_setThreadSchedFifo:I = 0x9

.field static final TRANSACTION_setThreadScheduler:I = 0x18

.field static final TRANSACTION_setVrMode:I = 0xc

.field static final TRANSACTION_unregisterVrStateListener:I = 0x1c

.field static final TRANSACTION_writeSysNode:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.vr.IGearVrManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;
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
    const-string/jumbo v1, "com.samsung.android.vr.IGearVrManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/vr/IGearVrManagerService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/vr/IGearVrManagerService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/vr/IGearVrManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 20
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

    .line 352
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v19

    return v19

    .line 43
    :sswitch_0
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v19, 0x1

    return v19

    .line 48
    :sswitch_1
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isDock()Z

    move-result v17

    .line 50
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v17, :cond_0

    const/16 v19, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/16 v19, 0x1

    return v19

    .line 51
    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    .line 56
    .end local v17    # "_result":Z
    :sswitch_2
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isMount()Z

    move-result v17

    .line 58
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v17, :cond_1

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    const/16 v19, 0x1

    return v19

    .line 59
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .line 64
    .end local v17    # "_result":Z
    :sswitch_3
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 68
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 72
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 73
    .local v14, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v11, v14}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v18

    .line 74
    .local v18, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 76
    const/16 v19, 0x1

    return v19

    .line 80
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v18    # "_result":[I
    :sswitch_4
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 84
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 85
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v17

    .line 86
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v17, :cond_2

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/16 v19, 0x1

    return v19

    .line 87
    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    .line 92
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_5
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 97
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/16 v19, 0x1

    return v19

    .line 103
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 107
    .local v16, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    const/16 v19, 0x1

    return v19

    .line 113
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->retrieveEnableFrequencyLevels()[I

    move-result-object v18

    .line 115
    .restart local v18    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 117
    const/16 v19, 0x1

    return v19

    .line 121
    .end local v18    # "_result":[I
    :sswitch_8
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getPowerLevelState()I

    move-result v15

    .line 123
    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/16 v19, 0x1

    return v19

    .line 129
    .end local v15    # "_result":I
    :sswitch_9
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 135
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 137
    .restart local v11    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 138
    .restart local v14    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v11, v14}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v17

    .line 139
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v17, :cond_3

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/16 v19, 0x1

    return v19

    .line 140
    :cond_3
    const/16 v19, 0x0

    goto :goto_3

    .line 145
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v17    # "_result":Z
    :sswitch_a
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 151
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v12}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->enforceCallingPermission(IILjava/lang/String;)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/16 v19, 0x1

    return v19

    .line 158
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v12    # "_arg2":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 161
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/16 v19, 0x1

    return v19

    .line 167
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_4

    const/4 v6, 0x1

    .line 170
    .local v6, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setVrMode(Z)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/16 v19, 0x1

    return v19

    .line 169
    .end local v6    # "_arg0":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 176
    :sswitch_d
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isVrMode()Z

    move-result v17

    .line 178
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v17, :cond_5

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/16 v19, 0x1

    return v19

    .line 179
    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    .line 184
    .end local v17    # "_result":Z
    :sswitch_e
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_6

    const/4 v6, 0x1

    .line 187
    .restart local v6    # "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setHomeKeyBlocked(Z)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/16 v19, 0x1

    return v19

    .line 186
    .end local v6    # "_arg0":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    .line 193
    :sswitch_f
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_7

    const/4 v6, 0x1

    .line 197
    .local v6, "_arg0":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 200
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setOverlayRestriction(Z[Ljava/lang/String;I)V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/16 v19, 0x1

    return v19

    .line 195
    .end local v6    # "_arg0":Z
    .end local v10    # "_arg1":[Ljava/lang/String;
    .end local v11    # "_arg2":I
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Z
    goto :goto_7

    .line 206
    .end local v6    # "_arg0":Z
    :sswitch_10
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_8

    const/4 v6, 0x1

    .line 209
    .local v6, "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setReadyForVrMode(Z)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/16 v19, 0x1

    return v19

    .line 208
    .end local v6    # "_arg0":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_8

    .line 215
    :sswitch_11
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 220
    .local v9, "_arg1":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadAffinity(I[I)I

    move-result v15

    .line 221
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/16 v19, 0x1

    return v19

    .line 227
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":[I
    .end local v15    # "_result":I
    :sswitch_12
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 233
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 234
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v11}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getThreadId(ILjava/lang/String;I)[I

    move-result-object v18

    .line 235
    .restart local v18    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 237
    const/16 v19, 0x1

    return v19

    .line 241
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg2":I
    .end local v18    # "_result":[I
    :sswitch_13
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 244
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->readSysNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 245
    .restart local v16    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    const/16 v19, 0x1

    return v19

    .line 251
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 255
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 257
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_9

    const/4 v13, 0x1

    .line 258
    .local v13, "_arg2":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8, v13}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    .line 259
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v17, :cond_a

    const/16 v19, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/16 v19, 0x1

    return v19

    .line 257
    .end local v13    # "_arg2":Z
    .end local v17    # "_result":Z
    :cond_9
    const/4 v13, 0x0

    goto :goto_9

    .line 260
    .restart local v13    # "_arg2":Z
    .restart local v17    # "_result":Z
    :cond_a
    const/16 v19, 0x0

    goto :goto_a

    .line 265
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Z
    .end local v17    # "_result":Z
    :sswitch_15
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 268
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->removeSysNode(Ljava/lang/String;)Z

    move-result v17

    .line 269
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v17, :cond_b

    const/16 v19, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/16 v19, 0x1

    return v19

    .line 270
    :cond_b
    const/16 v19, 0x0

    goto :goto_b

    .line 275
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_16
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 279
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 281
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 283
    .restart local v11    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 284
    .restart local v14    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v11, v14}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setPermissions(Ljava/lang/String;III)I

    move-result v15

    .line 285
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/16 v19, 0x1

    return v19

    .line 291
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_result":I
    :sswitch_17
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 295
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 296
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadGroup(II)Z

    move-result v17

    .line 297
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v17, :cond_c

    const/16 v19, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/16 v19, 0x1

    return v19

    .line 298
    :cond_c
    const/16 v19, 0x0

    goto :goto_c

    .line 303
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v17    # "_result":Z
    :sswitch_18
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 307
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 309
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 310
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v11}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadScheduler(III)Z

    move-result v17

    .line 311
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v17, :cond_d

    const/16 v19, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/16 v19, 0x1

    return v19

    .line 312
    :cond_d
    const/16 v19, 0x0

    goto :goto_d

    .line 317
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v17    # "_result":Z
    :sswitch_19
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 320
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setSystemMouseControlType(I)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/16 v19, 0x1

    return v19

    .line 326
    .end local v2    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_e

    const/4 v6, 0x1

    .line 329
    .restart local v6    # "_arg0":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setSystemMouseShowMouseEnabled(Z)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/16 v19, 0x1

    return v19

    .line 328
    .end local v6    # "_arg0":Z
    :cond_e
    const/4 v6, 0x0

    goto :goto_e

    .line 335
    :sswitch_1b
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrStateCallbacks;

    move-result-object v4

    .line 338
    .local v4, "_arg0":Lcom/samsung/android/vr/IGearVrStateCallbacks;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    const/16 v19, 0x1

    return v19

    .line 344
    .end local v4    # "_arg0":Lcom/samsung/android/vr/IGearVrStateCallbacks;
    :sswitch_1c
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrStateCallbacks;

    move-result-object v4

    .line 347
    .restart local v4    # "_arg0":Lcom/samsung/android/vr/IGearVrStateCallbacks;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    const/16 v19, 0x1

    return v19

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
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
