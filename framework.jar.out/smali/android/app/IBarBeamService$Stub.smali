.class public abstract Landroid/app/IBarBeamService$Stub;
.super Landroid/os/Binder;
.source "IBarBeamService.java"

# interfaces
.implements Landroid/app/IBarBeamService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBarBeamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBarBeamService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IBarBeamService"

.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_getCurrentStatus:I = 0x9

.field static final TRANSACTION_isImplementationCompatible:I = 0x1

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_setBarcode:I = 0x8

.field static final TRANSACTION_setHopSequence:I = 0x7

.field static final TRANSACTION_startBeaming:I = 0x4

.field static final TRANSACTION_startBeaming_repeat:I = 0x5

.field static final TRANSACTION_stopBeaming:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.IBarBeamService"

    invoke-virtual {p0, p0, v0}, Landroid/app/IBarBeamService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.app.IBarBeamService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IBarBeamService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/IBarBeamService;

    return-object v0

    :cond_1
    new-instance v1, Landroid/app/IBarBeamService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IBarBeamService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
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
    const-string/jumbo v6, "android.app.IBarBeamService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string/jumbo v8, "android.app.IBarBeamService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IBarBeamService$Stub;->isImplementationCompatible()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_2
    const-string/jumbo v6, "android.app.IBarBeamService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/IBarBeamService$Stub;->addListener(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_3
    const-string/jumbo v6, "android.app.IBarBeamService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/IBarBeamService$Stub;->removeListener(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_4
    const-string/jumbo v6, "android.app.IBarBeamService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IBarBeamService$Stub;->startBeaming()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_5
    const-string/jumbo v6, "android.app.IBarBeamService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/IBarBeamService$Stub;->startBeaming_repeat(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_6
    const-string/jumbo v6, "android.app.IBarBeamService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IBarBeamService$Stub;->stopBeaming()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_7
    const-string/jumbo v6, "android.app.IBarBeamService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IBarBeamService$Stub;->setHopSequence([BII)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_8
    const-string/jumbo v6, "android.app.IBarBeamService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/IBarBeamService$Stub;->setBarcode([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_9
    const-string/jumbo v8, "android.app.IBarBeamService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IBarBeamService$Stub;->getCurrentStatus()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

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
