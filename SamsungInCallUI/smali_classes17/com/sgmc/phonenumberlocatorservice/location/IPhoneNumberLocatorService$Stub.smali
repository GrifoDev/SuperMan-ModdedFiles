.class public abstract Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService$Stub;
.super Landroid/os/Binder;
.source "IPhoneNumberLocatorService.java"

# interfaces
.implements Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sgmc.phonenumberlocatorservice.location.IPhoneNumberLocatorService"

.field static final TRANSACTION_getPhoneNumberLocator:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sgmc.phonenumberlocatorservice.location.IPhoneNumberLocatorService"

    invoke-virtual {p0, p0, v0}, Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.sgmc.phonenumberlocatorservice.location.IPhoneNumberLocatorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.sgmc.phonenumberlocatorservice.location.IPhoneNumberLocatorService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.sgmc.phonenumberlocatorservice.location.IPhoneNumberLocatorService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService$Stub;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
