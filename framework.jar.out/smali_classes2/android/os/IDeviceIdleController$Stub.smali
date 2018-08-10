.class public abstract Landroid/os/IDeviceIdleController$Stub;
.super Landroid/os/Binder;
.source "IDeviceIdleController.java"

# interfaces
.implements Landroid/os/IDeviceIdleController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdleController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceIdleController"

.field static final TRANSACTION_addPowerSaveTempWhitelistApp:I = 0xe

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForMms:I = 0xf

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForSms:I = 0x10

.field static final TRANSACTION_addPowerSaveWhitelistApp:I = 0x1

.field static final TRANSACTION_exitIdle:I = 0x11

.field static final TRANSACTION_getAppIdTempWhitelist:I = 0xb

.field static final TRANSACTION_getAppIdUserWhitelist:I = 0xa

.field static final TRANSACTION_getAppIdWhitelist:I = 0x9

.field static final TRANSACTION_getAppIdWhitelistExceptIdle:I = 0x8

.field static final TRANSACTION_getFullPowerWhitelist:I = 0x7

.field static final TRANSACTION_getFullPowerWhitelistExceptIdle:I = 0x6

.field static final TRANSACTION_getSystemPowerWhitelist:I = 0x4

.field static final TRANSACTION_getSystemPowerWhitelistExceptIdle:I = 0x3

.field static final TRANSACTION_getUserPowerWhitelist:I = 0x5

.field static final TRANSACTION_isPowerSaveWhitelistApp:I = 0xd

.field static final TRANSACTION_isPowerSaveWhitelistExceptIdleApp:I = 0xc

.field static final TRANSACTION_registerMaintenanceActivityListener:I = 0x12

.field static final TRANSACTION_removePowerSaveWhitelistApp:I = 0x2

.field static final TRANSACTION_unregisterMaintenanceActivityListener:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.IDeviceIdleController"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceIdleController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.os.IDeviceIdleController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/IDeviceIdleController;

    return-object v0

    :cond_1
    new-instance v1, Landroid/os/IDeviceIdleController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDeviceIdleController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_0
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_1
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_2
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_3
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_4
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_5
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getUserPowerWhitelist()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_6
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_7
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_8
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelistExceptIdle()[I

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    :sswitch_9
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelist()[I

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    :sswitch_a
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdUserWhitelist()[I

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    :sswitch_b
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdTempWhitelist()[I

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    :sswitch_c
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_d
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_e
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_f
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x1

    return v2

    :sswitch_10
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x1

    return v2

    :sswitch_11
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->exitIdle(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_12
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IMaintenanceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMaintenanceActivityListener;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/IDeviceIdleController$Stub;->registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_13
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IMaintenanceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMaintenanceActivityListener;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/IDeviceIdleController$Stub;->unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
