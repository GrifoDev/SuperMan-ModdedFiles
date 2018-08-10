.class public abstract Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;
.super Landroid/os/Binder;
.source "IDesktopModeUiService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/IDesktopModeUiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/IDesktopModeUiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopmode.IDesktopModeUiService"

.field static final TRANSACTION_dismissDialog:I = 0x3

.field static final TRANSACTION_dismissPresentation:I = 0x6

.field static final TRANSACTION_getCurrentDialogType:I = 0x4

.field static final TRANSACTION_getCurrentPresentationType:I = 0x7

.field static final TRANSACTION_getCurrentVirtualDeviceType:I = 0xd

.field static final TRANSACTION_hasPresentation:I = 0x8

.field static final TRANSACTION_hasUiElement:I = 0x1

.field static final TRANSACTION_removeNotification:I = 0xa

.field static final TRANSACTION_removeVirtualDevice:I = 0xc

.field static final TRANSACTION_showDialog:I = 0x2

.field static final TRANSACTION_showNotification:I = 0x9

.field static final TRANSACTION_showPresentation:I = 0x5

.field static final TRANSACTION_showVirtualDevice:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string/jumbo v7, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->hasUiElement()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_2
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->showDialog(ILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_3
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->dismissDialog()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_4
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->getCurrentDialogType()I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_5
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->showPresentation(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_6
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->dismissPresentation(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_7
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->getCurrentPresentationType(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_8
    const-string/jumbo v7, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->hasPresentation(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_9
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->showNotification(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_a
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->removeNotification(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_b
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->showVirtualDevice(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_c
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->removeVirtualDevice(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_d
    const-string/jumbo v5, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->getCurrentVirtualDeviceType()I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v6

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
