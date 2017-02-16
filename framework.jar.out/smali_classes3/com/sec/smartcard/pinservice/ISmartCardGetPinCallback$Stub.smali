.class public abstract Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;
.super Landroid/os/Binder;
.source "ISmartCardGetPinCallback.java"

# interfaces
.implements Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

.field static final TRANSACTION_onUserCancelled:I = 0x2

.field static final TRANSACTION_onUserEnteredPin:I = 0x1

.field static final TRANSACTION_onUserPinError:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    .line 17
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 32
    :cond_0
    new-instance v0, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 26
    :cond_1
    return-object v0

    .line 29
    :cond_2
    instance-of v1, v0, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    if-eqz v1, :cond_0

    .line 30
    check-cast v0, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    .line 44
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v1

    :sswitch_1
    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    .line 49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;->onUserEnteredPin([C)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v1

    :sswitch_2
    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;->onUserCancelled()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v1

    :sswitch_3
    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    .line 65
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;->onUserPinError(I)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v1

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
