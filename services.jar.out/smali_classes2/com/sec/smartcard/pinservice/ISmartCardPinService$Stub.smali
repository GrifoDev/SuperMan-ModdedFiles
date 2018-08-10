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

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_1
    return-object v1

    :cond_2
    instance-of v1, v0, Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v6, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string/jumbo v6, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->getPin(Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_2
    const-string/jumbo v6, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_3
    const-string/jumbo v6, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_4
    const-string/jumbo v6, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_5
    const-string/jumbo v6, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->getCardLoginAttemptRemain(Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_6
    const-string/jumbo v8, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isCardRegistered()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v5, :cond_0

    :goto_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :cond_0
    move v6, v7

    goto :goto_0

    :sswitch_7
    const-string/jumbo v8, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isDeviceConnectedWithCard()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :cond_1
    move v6, v7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v8, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isSmartCardAuthenticationAvailable()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v5, :cond_2

    :goto_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :cond_2
    move v6, v7

    goto :goto_2

    :sswitch_9
    const-string/jumbo v6, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->showCardNotRegisteredDialog()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

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
