.class public abstract Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.super Landroid/os/Binder;
.source "ISystemUIAdapterCallback.java"

# interfaces
.implements Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

.field static final TRANSACTION_excludeExternalStorageForFailedPasswordsWipe:I = 0x6

.field static final TRANSACTION_setAirplaneModeAllowed:I = 0xc

.field static final TRANSACTION_setApplicationNameControlEnabled:I = 0x19

.field static final TRANSACTION_setBluetoothAllowed:I = 0x10

.field static final TRANSACTION_setCellularDataAllowed:I = 0xd

.field static final TRANSACTION_setGPSStateChangeAllowed:I = 0x15

.field static final TRANSACTION_setKioskModeEnabled:I = 0x3

.field static final TRANSACTION_setLocationProviderAllowed:I = 0x14

.field static final TRANSACTION_setLockedIccIds:I = 0x16

.field static final TRANSACTION_setLockscreenInvisibleOverlay:I = 0x17

.field static final TRANSACTION_setLockscreenWallpaper:I = 0x18

.field static final TRANSACTION_setMaximumFailedPasswordsForDisable:I = 0x4

.field static final TRANSACTION_setMultifactorAuthEnabled:I = 0x8

.field static final TRANSACTION_setNFCAllowed:I = 0xe

.field static final TRANSACTION_setNFCStateChangeAllowed:I = 0x11

.field static final TRANSACTION_setNavigationBarHidden:I = 0x2

.field static final TRANSACTION_setPasswordLockDelay:I = 0x7

.field static final TRANSACTION_setPasswordVisibilityEnabled:I = 0x9

.field static final TRANSACTION_setPwdChangeRequested:I = 0x5

.field static final TRANSACTION_setSettingsChangeAllowed:I = 0xa

.field static final TRANSACTION_setStatusBarExpansionAllowed:I = 0xb

.field static final TRANSACTION_setStatusBarHidden:I = 0x1

.field static final TRANSACTION_setWifiAllowed:I = 0x13

.field static final TRANSACTION_setWifiStateChangeAllowed:I = 0x12

.field static final TRANSACTION_setWifiTetheringAllowed:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p0, p0, v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    return-object v0

    :cond_1
    new-instance v1, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setStatusBarHidden(Z)V

    return v6

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setNavigationBarHidden(Z)V

    return v6

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setKioskModeEnabled(Z)V

    return v6

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_4
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setMaximumFailedPasswordsForDisable(I)V

    return v6

    :sswitch_5
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPwdChangeRequested(I)V

    return v6

    :sswitch_6
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->excludeExternalStorageForFailedPasswordsWipe(Z)V

    return v6

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_7
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPasswordLockDelay(I)V

    return v6

    :sswitch_8
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setMultifactorAuthEnabled(Z)V

    return v6

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :sswitch_9
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPasswordVisibilityEnabled(Z)V

    return v6

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :sswitch_a
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setSettingsChangeAllowed(Z)V

    return v6

    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    :sswitch_b
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setStatusBarExpansionAllowed(Z)V

    return v6

    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    :sswitch_c
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setAirplaneModeAllowed(Z)V

    return v6

    :cond_8
    const/4 v2, 0x0

    goto :goto_8

    :sswitch_d
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setCellularDataAllowed(Z)V

    return v6

    :cond_9
    const/4 v2, 0x0

    goto :goto_9

    :sswitch_e
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v2, 0x1

    :goto_a
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setNFCAllowed(Z)V

    return v6

    :cond_a
    const/4 v2, 0x0

    goto :goto_a

    :sswitch_f
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/4 v2, 0x1

    :goto_b
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiTetheringAllowed(Z)V

    return v6

    :cond_b
    const/4 v2, 0x0

    goto :goto_b

    :sswitch_10
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/4 v2, 0x1

    :goto_c
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setBluetoothAllowed(Z)V

    return v6

    :cond_c
    const/4 v2, 0x0

    goto :goto_c

    :sswitch_11
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v2, 0x1

    :goto_d
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setNFCStateChangeAllowed(Z)V

    return v6

    :cond_d
    const/4 v2, 0x0

    goto :goto_d

    :sswitch_12
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiStateChangeAllowed(Z)V

    return v6

    :cond_e
    const/4 v2, 0x0

    goto :goto_e

    :sswitch_13
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiAllowed(Z)V

    return v6

    :cond_f
    const/4 v2, 0x0

    goto :goto_f

    :sswitch_14
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/4 v4, 0x1

    :goto_10
    invoke-virtual {p0, v1, v4}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLocationProviderAllowed(Ljava/lang/String;Z)V

    return v6

    :cond_10
    const/4 v4, 0x0

    goto :goto_10

    :sswitch_15
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    const/4 v2, 0x1

    :goto_11
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setGPSStateChangeAllowed(Z)V

    return v6

    :cond_11
    const/4 v2, 0x0

    goto :goto_11

    :sswitch_16
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockedIccIds([Ljava/lang/String;)V

    return v6

    :sswitch_17
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/4 v2, 0x1

    :goto_12
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockscreenInvisibleOverlay(Z)V

    return v6

    :cond_12
    const/4 v2, 0x0

    goto :goto_12

    :sswitch_18
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/4 v2, 0x1

    :goto_13
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockscreenWallpaper(Z)V

    return v6

    :cond_13
    const/4 v2, 0x0

    goto :goto_13

    :sswitch_19
    const-string/jumbo v5, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/4 v2, 0x1

    :goto_14
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setApplicationNameControlEnabled(Z)V

    return v6

    :cond_14
    const/4 v2, 0x0

    goto :goto_14

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
