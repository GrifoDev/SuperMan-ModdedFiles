.class public abstract Lcom/samsung/android/thememanager/IStatusListener$Stub;
.super Landroid/os/Binder;
.source "IStatusListener.java"

# interfaces
.implements Lcom/samsung/android/thememanager/IStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/thememanager/IStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/thememanager/IStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.thememanager.IStatusListener"

.field static final TRANSACTION_onInstallCompleted:I = 0x2

.field static final TRANSACTION_onInstallProgress:I = 0x1

.field static final TRANSACTION_onStateChangeCompleted:I = 0x6

.field static final TRANSACTION_onStateChangeProgress:I = 0x5

.field static final TRANSACTION_onUninstallCompleted:I = 0x4

.field static final TRANSACTION_onUninstallProgress:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.thememanager.IStatusListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/thememanager/IStatusListener;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.thememanager.IStatusListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/thememanager/IStatusListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/thememanager/IStatusListener;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/thememanager/IStatusListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/thememanager/IStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "com.samsung.android.thememanager.IStatusListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_1
    const-string/jumbo v4, "com.samsung.android.thememanager.IStatusListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/thememanager/IStatusListener$Stub;->onInstallProgress(Ljava/lang/String;I)V

    return v5

    :sswitch_2
    const-string/jumbo v4, "com.samsung.android.thememanager.IStatusListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/thememanager/IStatusListener$Stub;->onInstallCompleted(Ljava/lang/String;I)V

    return v5

    :sswitch_3
    const-string/jumbo v4, "com.samsung.android.thememanager.IStatusListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/thememanager/IStatusListener$Stub;->onUninstallProgress(Ljava/lang/String;I)V

    return v5

    :sswitch_4
    const-string/jumbo v4, "com.samsung.android.thememanager.IStatusListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/thememanager/IStatusListener$Stub;->onUninstallCompleted(Ljava/lang/String;I)V

    return v5

    :sswitch_5
    const-string/jumbo v4, "com.samsung.android.thememanager.IStatusListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/thememanager/IStatusListener$Stub;->onStateChangeProgress(Ljava/lang/String;I)V

    return v5

    :sswitch_6
    const-string/jumbo v4, "com.samsung.android.thememanager.IStatusListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/thememanager/IStatusListener$Stub;->onStateChangeCompleted(Ljava/lang/String;Ljava/lang/String;I)V

    return v5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
