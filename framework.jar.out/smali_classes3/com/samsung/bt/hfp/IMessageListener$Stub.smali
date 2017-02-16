.class public abstract Lcom/samsung/bt/hfp/IMessageListener$Stub;
.super Landroid/os/Binder;
.source "IMessageListener.java"

# interfaces
.implements Lcom/samsung/bt/hfp/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bt/hfp/IMessageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bt/hfp/IMessageListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.bt.hfp.IMessageListener"

.field static final TRANSACTION_onReceived:I = 0x1

.field static final TRANSACTION_onSetRemoteType:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string/jumbo v0, "com.samsung.bt.hfp.IMessageListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/bt/hfp/IMessageListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 33
    return-object v1

    .line 35
    :cond_0
    const-string/jumbo v1, "com.samsung.bt.hfp.IMessageListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/bt/hfp/IMessageListener;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/samsung/bt/hfp/IMessageListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 39
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/bt/hfp/IMessageListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/bt/hfp/IMessageListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 51
    :sswitch_0
    const-string/jumbo v4, "com.samsung.bt.hfp.IMessageListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return v5

    .line 56
    :sswitch_1
    const-string/jumbo v4, "com.samsung.bt.hfp.IMessageListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/samsung/bt/hfp/IMessageListener$Stub;->onReceived(ILjava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v5

    .line 67
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "com.samsung.bt.hfp.IMessageListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 77
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/bt/hfp/IMessageListener$Stub;->onSetRemoteType(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    return v5

    .line 75
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
