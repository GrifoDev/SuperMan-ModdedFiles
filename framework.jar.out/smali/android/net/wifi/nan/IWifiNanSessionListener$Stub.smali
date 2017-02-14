.class public abstract Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;
.super Landroid/os/Binder;
.source "IWifiNanSessionListener.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nan.IWifiNanSessionListener"

.field static final TRANSACTION_onMatch:I = 0x5

.field static final TRANSACTION_onMessageReceived:I = 0x8

.field static final TRANSACTION_onMessageSendFail:I = 0x7

.field static final TRANSACTION_onMessageSendSuccess:I = 0x6

.field static final TRANSACTION_onPublishFail:I = 0x1

.field static final TRANSACTION_onPublishTerminated:I = 0x2

.field static final TRANSACTION_onSubscribeFail:I = 0x3

.field static final TRANSACTION_onSubscribeTerminated:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanSessionListener;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/nan/IWifiNanSessionListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/nan/IWifiNanSessionListener;

    return-object v0

    :cond_1
    new-instance v1, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onPublishFail(I)V

    return v7

    :sswitch_2
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onPublishTerminated(I)V

    return v7

    :sswitch_3
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onSubscribeFail(I)V

    return v7

    :sswitch_4
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onSubscribeTerminated(I)V

    return v7

    :sswitch_5
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onMatch(I[BI[BI)V

    return v7

    :sswitch_6
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onMessageSendSuccess(I)V

    return v7

    :sswitch_7
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v1, v6}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onMessageSendFail(II)V

    return v7

    :sswitch_8
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onMessageReceived(I[BI)V

    return v7

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
