.class public abstract Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;
.super Landroid/os/Binder;
.source "IGearVrManagerExternalService.java"

# interfaces
.implements Lcom/samsung/android/vr/IGearVrManagerExternalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/IGearVrManagerExternalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.vr.IGearVrManagerExternalService"

.field static final TRANSACTION_acquireVrClocks:I = 0x1

.field static final TRANSACTION_enforceCallingPermission:I = 0x8

.field static final TRANSACTION_enforceCallingSelfPermission:I = 0x9

.field static final TRANSACTION_getPowerLevelState:I = 0x6

.field static final TRANSACTION_getSystemOption:I = 0x4

.field static final TRANSACTION_notifyDeviceEventChanged:I = 0xa

.field static final TRANSACTION_releaseVrClocks:I = 0x2

.field static final TRANSACTION_retrieveEnableFrequencyLevels:I = 0x5

.field static final TRANSACTION_setRelayMode:I = 0xe

.field static final TRANSACTION_setSystemOption:I = 0x3

.field static final TRANSACTION_setThreadSchedFifo:I = 0x7

.field static final TRANSACTION_setVrMode:I = 0xb

.field static final TRANSACTION_startVrHome:I = 0xc

.field static final TRANSACTION_startWaitActivity:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.vr.IGearVrManagerExternalService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerExternalService;
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
    const-string/jumbo v1, "com.samsung.android.vr.IGearVrManagerExternalService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/vr/IGearVrManagerExternalService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/vr/IGearVrManagerExternalService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 18
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

    .line 202
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 43
    :sswitch_0
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x1

    return v2

    .line 48
    :sswitch_1
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 52
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 56
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 58
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    .line 59
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;III)[I

    move-result-object v17

    .line 60
    .local v17, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 62
    const/4 v2, 0x1

    return v2

    .line 66
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v17    # "_result":[I
    :sswitch_2
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 70
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v16

    .line 72
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v16, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v2, 0x1

    return v2

    .line 73
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_3
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v2, 0x1

    return v2

    .line 89
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 92
    .restart local v10    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 93
    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    const/4 v2, 0x1

    return v2

    .line 99
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->retrieveEnableFrequencyLevels()[I

    move-result-object v17

    .line 101
    .restart local v17    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 103
    const/4 v2, 0x1

    return v2

    .line 107
    .end local v17    # "_result":[I
    :sswitch_6
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->getPowerLevelState()I

    move-result v14

    .line 109
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v2, 0x1

    return v2

    .line 115
    .end local v14    # "_result":I
    :sswitch_7
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 119
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 121
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 123
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 124
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v5, v6}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v16

    .line 125
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v16, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v2, 0x1

    return v2

    .line 126
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 131
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_8
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 135
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 137
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 138
    .local v13, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12, v13}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->enforceCallingPermission(IILjava/lang/String;)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/4 v2, 0x1

    return v2

    .line 144
    .end local v8    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 147
    .restart local v10    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v2, 0x1

    return v2

    .line 153
    .end local v10    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 156
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->notifyDeviceEventChanged(I)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/4 v2, 0x1

    return v2

    .line 162
    .end local v8    # "_arg0":I
    :sswitch_b
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v11, 0x1

    .line 165
    .local v11, "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->setVrMode(Z)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    const/4 v2, 0x1

    return v2

    .line 164
    .end local v11    # "_arg0":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 171
    :sswitch_c
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->startVrHome()V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/4 v2, 0x1

    return v2

    .line 178
    :sswitch_d
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 187
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 188
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->startWaitActivity(Landroid/content/Intent;I)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v2, 0x1

    return v2

    .line 184
    .end local v12    # "_arg1":I
    :cond_3
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/content/Intent;
    goto :goto_3

    .line 194
    .end local v9    # "_arg0":Landroid/content/Intent;
    :sswitch_e
    const-string/jumbo v2, "com.samsung.android.vr.IGearVrManagerExternalService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 197
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->setRelayMode(I)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v2, 0x1

    return v2

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
