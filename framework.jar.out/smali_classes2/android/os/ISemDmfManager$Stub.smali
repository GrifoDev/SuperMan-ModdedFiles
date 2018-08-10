.class public abstract Landroid/os/ISemDmfManager$Stub;
.super Landroid/os/Binder;
.source "ISemDmfManager.java"

# interfaces
.implements Landroid/os/ISemDmfManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISemDmfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISemDmfManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ISemDmfManager"

.field static final TRANSACTION_getVersion:I = 0x2

.field static final TRANSACTION_initializeService:I = 0x3

.field static final TRANSACTION_isDmfEnabled:I = 0x1

.field static final TRANSACTION_sendAddBatteryAlert:I = 0x6

.field static final TRANSACTION_sendAddPowerUri:I = 0x4

.field static final TRANSACTION_sendRefreshGeofence:I = 0x8

.field static final TRANSACTION_sendRemoveBatteryAlert:I = 0x7

.field static final TRANSACTION_sendRemovePowerUri:I = 0x5

.field static final TRANSACTION_sendStopBatteryAlert:I = 0xc

.field static final TRANSACTION_sendStopDevicePowerMonitor:I = 0x9

.field static final TRANSACTION_sendStopGeofenceHelper:I = 0xb

.field static final TRANSACTION_sendStopLocationMonitor:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.ISemDmfManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISemDmfManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ISemDmfManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.os.ISemDmfManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ISemDmfManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/ISemDmfManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/os/ISemDmfManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ISemDmfManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string/jumbo v7, "android.os.ISemDmfManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISemDmfManager$Stub;->isDmfEnabled()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_2
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISemDmfManager$Stub;->getVersion()I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_3
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISemDmfManager$Stub;->initializeService()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_4
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/SemPowerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemPowerInfo;

    :goto_0
    invoke-virtual {p0, v1}, Landroid/os/ISemDmfManager$Stub;->sendAddPowerUri(Landroid/os/SemPowerInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_5
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/os/SemPowerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemPowerInfo;

    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/ISemDmfManager$Stub;->sendRemovePowerUri(Landroid/os/SemPowerInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/SemBatteryAlertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemBatteryAlertInfo;

    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/ISemDmfManager$Stub;->sendAddBatteryAlert(Landroid/os/SemBatteryAlertInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_7
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/SemBatteryAlertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemBatteryAlertInfo;

    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/ISemDmfManager$Stub;->sendRemoveBatteryAlert(Landroid/os/SemBatteryAlertInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_8
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/ISemDmfManager$Stub;->sendRefreshGeofence(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_9
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISemDmfManager$Stub;->sendStopDevicePowerMonitor()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_a
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISemDmfManager$Stub;->sendStopLocationMonitor()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_b
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISemDmfManager$Stub;->sendStopGeofenceHelper()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_c
    const-string/jumbo v5, "android.os.ISemDmfManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISemDmfManager$Stub;->sendStopBatteryAlert()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
