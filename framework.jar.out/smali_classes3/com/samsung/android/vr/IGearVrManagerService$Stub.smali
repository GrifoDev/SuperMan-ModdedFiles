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

.field static final TRANSACTION_getVrRecentsMode:I = 0x1d

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

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.vr.IGearVrManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.vr.IGearVrManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/vr/IGearVrManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/vr/IGearVrManagerService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/vr/IGearVrManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v19

    return v19

    :sswitch_0
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    :sswitch_1
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isDock()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_0

    const/16 v19, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isMount()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_1

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v11, v14}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v19, 0x1

    return v19

    :sswitch_4
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_2

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    :sswitch_5
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_6
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    :sswitch_7
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->retrieveEnableFrequencyLevels()[I

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v19, 0x1

    return v19

    :sswitch_8
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getPowerLevelState()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :sswitch_9
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v11, v14}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_3

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_3
    const/16 v19, 0x0

    goto :goto_3

    :sswitch_a
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v12}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->enforceCallingPermission(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_b
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->enforceCallingSelfPermission(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_c
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setVrMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :sswitch_d
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isVrMode()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_5

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    :sswitch_e
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_6

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setHomeKeyBlocked(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :sswitch_f
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_7

    const/4 v6, 0x1

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setOverlayRestriction(Z[Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :cond_7
    const/4 v6, 0x0

    goto :goto_7

    :sswitch_10
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_8

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setReadyForVrMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :cond_8
    const/4 v6, 0x0

    goto :goto_8

    :sswitch_11
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadAffinity(I[I)I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :sswitch_12
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v11}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getThreadId(ILjava/lang/String;I)[I

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v19, 0x1

    return v19

    :sswitch_13
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->readSysNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    :sswitch_14
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_9

    const/4 v13, 0x1

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8, v13}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_a

    const/16 v19, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_9
    const/4 v13, 0x0

    goto :goto_9

    :cond_a
    const/16 v19, 0x0

    goto :goto_a

    :sswitch_15
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->removeSysNode(Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_b

    const/16 v19, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_b
    const/16 v19, 0x0

    goto :goto_b

    :sswitch_16
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v11, v14}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setPermissions(Ljava/lang/String;III)I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :sswitch_17
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadGroup(II)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_c

    const/16 v19, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_c
    const/16 v19, 0x0

    goto :goto_c

    :sswitch_18
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v11}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadScheduler(III)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_d

    const/16 v19, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_d
    const/16 v19, 0x0

    goto :goto_d

    :sswitch_19
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setSystemMouseControlType(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_1a
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_e

    const/4 v6, 0x1

    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setSystemMouseShowMouseEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :cond_e
    const/4 v6, 0x0

    goto :goto_e

    :sswitch_1b
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrStateCallbacks;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_1c
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrStateCallbacks;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :sswitch_1d
    const-string/jumbo v19, "com.samsung.android.vr.IGearVrManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getVrRecentsMode()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
