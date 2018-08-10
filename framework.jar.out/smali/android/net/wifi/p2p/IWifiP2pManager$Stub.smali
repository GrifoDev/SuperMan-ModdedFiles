.class public abstract Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.super Landroid/os/Binder;
.source "IWifiP2pManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/IWifiP2pManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/IWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.p2p.IWifiP2pManager"

.field static final TRANSACTION_checkConfigureWifiDisplayPermission:I = 0x4

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getP2pStateMachineMessenger:I = 0x2

.field static final TRANSACTION_getWifiP2pState:I = 0x6

.field static final TRANSACTION_isInactiveState:I = 0x5

.field static final TRANSACTION_setMiracastMode:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/p2p/IWifiP2pManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/p2p/IWifiP2pManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_1
    const-string/jumbo v6, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v5}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v5}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    return v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->setMiracastMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_4
    const-string/jumbo v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->checkConfigureWifiDisplayPermission()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_5
    const-string/jumbo v6, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->isInactiveState()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_6
    const-string/jumbo v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getWifiP2pState()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
