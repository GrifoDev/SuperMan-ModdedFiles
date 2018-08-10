.class public abstract Lcom/samsung/android/smartfitting/ISmartFittingService$Stub;
.super Landroid/os/Binder;
.source "ISmartFittingService.java"

# interfaces
.implements Lcom/samsung/android/smartfitting/ISmartFittingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartfitting/ISmartFittingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartfitting/ISmartFittingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.smartfitting.ISmartFittingService"

.field static final TRANSACTION_hideSmartFittingButton:I = 0x4

.field static final TRANSACTION_showSmartFittingButton:I = 0x3

.field static final TRANSACTION_startSmartFittingService:I = 0x1

.field static final TRANSACTION_stopSmartFittingService:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.smartfitting.ISmartFittingService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/smartfitting/ISmartFittingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartfitting/ISmartFittingService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.smartfitting.ISmartFittingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/smartfitting/ISmartFittingService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/smartfitting/ISmartFittingService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/smartfitting/ISmartFittingService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/smartfitting/ISmartFittingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.samsung.android.smartfitting.ISmartFittingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v0, "com.samsung.android.smartfitting.ISmartFittingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/smartfitting/ISmartFittingService$Stub;->startSmartFittingService()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_2
    const-string/jumbo v0, "com.samsung.android.smartfitting.ISmartFittingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/smartfitting/ISmartFittingService$Stub;->stopSmartFittingService()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_3
    const-string/jumbo v0, "com.samsung.android.smartfitting.ISmartFittingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/smartfitting/ISmartFittingService$Stub;->showSmartFittingButton()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_4
    const-string/jumbo v0, "com.samsung.android.smartfitting.ISmartFittingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/smartfitting/ISmartFittingService$Stub;->hideSmartFittingButton()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
