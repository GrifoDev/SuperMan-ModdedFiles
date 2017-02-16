.class public abstract Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;
.super Landroid/os/Binder;
.source "ISmartCardPinService.java"

# interfaces
.implements Lcom/sec/smartcard/pinservice/ISmartCardPinService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/ISmartCardPinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.smartcard.pinservice.ISmartCardPinService"

.field static final TRANSACTION_getCardLoginAttemptRemain:I = 0x5

.field static final TRANSACTION_getPin:I = 0x1

.field static final TRANSACTION_isCardRegistered:I = 0x6

.field static final TRANSACTION_isDeviceConnectedWithCard:I = 0x7

.field static final TRANSACTION_isSmartCardAuthenticationAvailable:I = 0x8

.field static final TRANSACTION_registerCard:I = 0x2

.field static final TRANSACTION_showCardNotRegisteredDialog:I = 0x9

.field static final TRANSACTION_unRegisterCard:I = 0x3

.field static final TRANSACTION_verifyCard:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 17
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 32
    :cond_0
    new-instance v0, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 26
    :cond_1
    return-object v0

    .line 29
    :cond_2
    instance-of v1, v0, Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    .line 30
    check-cast v0, Lcom/sec/smartcard/pinservice/ISmartCardPinService;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 44
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v1

    :sswitch_1
    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->getPin(Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v1

    :sswitch_2
    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;

    move-result-object v2

    .line 63
    invoke-virtual {p0, v0, v2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v1

    :sswitch_3
    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;

    move-result-object v2

    .line 74
    invoke-virtual {p0, v0, v2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v1

    :sswitch_4
    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;

    move-result-object v2

    .line 85
    invoke-virtual {p0, v0, v2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v1

    :sswitch_5
    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->getCardLoginAttemptRemain(Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v1

    :sswitch_6
    const-string/jumbo v2, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 100
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isCardRegistered()Z

    move-result v2

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return v1

    :cond_0
    move v0, v1

    .line 103
    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 108
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isDeviceConnectedWithCard()Z

    move-result v2

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v1

    :cond_1
    move v0, v1

    .line 111
    goto :goto_1

    :sswitch_8
    const-string/jumbo v2, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 116
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isSmartCardAuthenticationAvailable()Z

    move-result v2

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v1

    :cond_2
    move v0, v1

    .line 119
    goto :goto_2

    :sswitch_9
    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->showCardNotRegisteredDialog()V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    return v1

    .line 40
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
