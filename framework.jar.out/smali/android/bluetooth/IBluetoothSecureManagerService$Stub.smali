.class public abstract Landroid/bluetooth/IBluetoothSecureManagerService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSecureManagerService.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSecureManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSecureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothSecureManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothSecureManagerService"

.field static final TRANSACTION_addWhiteList:I = 0x7

.field static final TRANSACTION_enableSecureMode:I = 0x1

.field static final TRANSACTION_enableWhiteList:I = 0x5

.field static final TRANSACTION_getSecureModeSetting:I = 0x3

.field static final TRANSACTION_getWhiteListCod:I = 0xc

.field static final TRANSACTION_getWhiteListFirstIndex:I = 0x9

.field static final TRANSACTION_getWhiteListName:I = 0xb

.field static final TRANSACTION_getWhiteListNextIndex:I = 0xa

.field static final TRANSACTION_getWhiteListUuids:I = 0xd

.field static final TRANSACTION_isSecureModeEnabled:I = 0x2

.field static final TRANSACTION_isWhiteListEnabled:I = 0x6

.field static final TRANSACTION_removeWhiteList:I = 0x8

.field static final TRANSACTION_setSecureModeSetting:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSecureManagerService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothSecureManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothSecureManagerService;

    return-object v0

    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothSecureManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_0
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_1
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->enableSecureMode(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->isSecureModeEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :sswitch_3
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_4
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :sswitch_5
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->enableWhiteList(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    :sswitch_6
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->isWhiteListEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    :sswitch_7
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_7

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    :sswitch_8
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->removeWhiteList(Ljava/lang/String;I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_8

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_8
    const/4 v9, 0x0

    goto :goto_8

    :sswitch_9
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListFirstIndex()I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_a
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListNextIndex(I)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_b
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_c
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListCod(I)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_d
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
