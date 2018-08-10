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

.field static final TRANSACTION_addEngine:I = 0x4

.field static final TRANSACTION_allow:I = 0xf

.field static final TRANSACTION_clearEncPkgCache:I = 0x16

.field static final TRANSACTION_clearEncPkgData:I = 0x15

.field static final TRANSACTION_createEncPkgDir:I = 0x13

.field static final TRANSACTION_deleteToeknFromTrusted:I = 0x18

.field static final TRANSACTION_disallow:I = 0x10

.field static final TRANSACTION_enroll:I = 0x1a

.field static final TRANSACTION_exists:I = 0xe

.field static final TRANSACTION_getEncPkgDataSizeInfo:I = 0x14

.field static final TRANSACTION_getEngineInfo:I = 0x12

.field static final TRANSACTION_getSupportedSDKVersion:I = 0x11

.field static final TRANSACTION_isLegacyEncryption:I = 0x20

.field static final TRANSACTION_isLicensed:I = 0xd

.field static final TRANSACTION_isSDPEnabled:I = 0x2

.field static final TRANSACTION_isSdpSupported:I = 0x3

.field static final TRANSACTION_lock:I = 0x7

.field static final TRANSACTION_migrate:I = 0xa

.field static final TRANSACTION_onBiometricsAuthenticated:I = 0x1c

.field static final TRANSACTION_onDeviceOwnerLocked:I = 0x1d

.field static final TRANSACTION_registerClient:I = 0x1e

.field static final TRANSACTION_registerListener:I = 0xb

.field static final TRANSACTION_removeEngine:I = 0x5

.field static final TRANSACTION_resetPassword:I = 0x9

.field static final TRANSACTION_saveTokenIntoTrusted:I = 0x17

.field static final TRANSACTION_setPassword:I = 0x8

.field static final TRANSACTION_systemReady:I = 0x1

.field static final TRANSACTION_unlock:I = 0x6

.field static final TRANSACTION_unlockViaTrusted:I = 0x19

.field static final TRANSACTION_unregisterClient:I = 0x1f

.field static final TRANSACTION_unregisterListener:I = 0xc

.field static final TRANSACTION_verify:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.ISdpManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISdpManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.os.ISdpManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/ISdpManagerService;

    return-object v0

    :cond_1
    new-instance v1, Landroid/os/ISdpManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ISdpManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    :sswitch_0
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISdpManagerService$Stub;->systemReady()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    :sswitch_2
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ISdpManagerService$Stub;->isSDPEnabled(I)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISdpManagerService$Stub;->isSdpSupported()Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_1

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Landroid/os/ISdpManagerService$Stub;->addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :sswitch_5
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->removeEngine(Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_6
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->unlock(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_7
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->lock(Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_8
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->setPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_9
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v6, v7}, Landroid/os/ISdpManagerService$Stub;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_a
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->migrate(Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_b
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/os/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpListener;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/os/ISdpManagerService$Stub;->registerListener(Ljava/lang/String;Landroid/os/ISdpListener;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_c
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/os/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpListener;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/os/ISdpManagerService$Stub;->unregisterListener(Ljava/lang/String;Landroid/os/ISdpListener;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_d
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISdpManagerService$Stub;->isLicensed()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_e
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->exists(Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_f
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->allow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_10
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->disallow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_11
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISdpManagerService$Stub;->getSupportedSDKVersion()D

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Landroid/os/Parcel;->writeDouble(D)V

    const/4 v14, 0x1

    return v14

    :sswitch_12
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_3

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v14}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v14, 0x1

    return v14

    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :sswitch_13
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Landroid/os/ISdpManagerService$Stub;->createEncPkgDir(ILjava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_14
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Landroid/os/ISdpManagerService$Stub;->getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_4

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v14}, Landroid/content/pm/PackageStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v14, 0x1

    return v14

    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :sswitch_15
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Landroid/os/ISdpManagerService$Stub;->clearEncPkgData(ILjava/lang/String;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_5

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    :sswitch_16
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Landroid/os/ISdpManagerService$Stub;->clearEncPkgCache(ILjava/lang/String;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_6

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_6
    const/4 v14, 0x0

    goto :goto_6

    :sswitch_17
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_18
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/ISdpManagerService$Stub;->deleteToeknFromTrusted(Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_19
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Landroid/os/ISdpManagerService$Stub;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_1a
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v6, v7}, Landroid/os/ISdpManagerService$Stub;->enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_1b
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v6, v7}, Landroid/os/ISdpManagerService$Stub;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_1c
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ISdpManagerService$Stub;->onBiometricsAuthenticated(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    :sswitch_1d
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ISdpManagerService$Stub;->onDeviceOwnerLocked(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    :sswitch_1e
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/os/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpListener;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Landroid/os/ISdpManagerService$Stub;->registerClient(ILandroid/os/ISdpListener;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1f
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/os/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpListener;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Landroid/os/ISdpManagerService$Stub;->unregisterClient(ILandroid/os/ISdpListener;)V

    const/4 v14, 0x1

    return v14

    :sswitch_20
    const-string/jumbo v14, "android.os.ISdpManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ISdpManagerService$Stub;->isLegacyEncryption(I)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_7

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_7
    const/4 v14, 0x0

    goto :goto_7

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
