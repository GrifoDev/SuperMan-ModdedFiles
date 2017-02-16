.class public abstract Landroid/net/wifi/nan/IWifiNanEventListener$Stub;
.super Landroid/os/Binder;
.source "IWifiNanEventListener.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nan.IWifiNanEventListener"

.field static final TRANSACTION_onConfigCompleted:I = 0x1

.field static final TRANSACTION_onConfigFailed:I = 0x2

.field static final TRANSACTION_onIdentityChanged:I = 0x4

.field static final TRANSACTION_onNanDown:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/nan/IWifiNanEventListener;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/nan/IWifiNanEventListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 47
    :sswitch_0
    const-string/jumbo v3, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v4

    .line 52
    :sswitch_1
    const-string/jumbo v3, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v3, Landroid/net/wifi/nan/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/nan/ConfigRequest;

    .line 60
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onConfigCompleted(Landroid/net/wifi/nan/ConfigRequest;)V

    .line 61
    return v4

    .line 58
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    goto :goto_0

    .line 65
    .end local v1    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    :sswitch_2
    const-string/jumbo v3, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    sget-object v3, Landroid/net/wifi/nan/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/nan/ConfigRequest;

    .line 74
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onConfigFailed(Landroid/net/wifi/nan/ConfigRequest;I)V

    .line 76
    return v4

    .line 71
    .end local v2    # "_arg1":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    goto :goto_1

    .line 80
    .end local v1    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    :sswitch_3
    const-string/jumbo v3, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onNanDown(I)V

    .line 84
    return v4

    .line 88
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v3, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onIdentityChanged()V

    .line 90
    return v4

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
