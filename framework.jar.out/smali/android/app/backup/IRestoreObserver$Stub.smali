.class public abstract Landroid/app/backup/IRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IRestoreObserver.java"

# interfaces
.implements Landroid/app/backup/IRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IRestoreObserver"

.field static final TRANSACTION_onUpdate:I = 0x3

.field static final TRANSACTION_restoreFinished:I = 0x4

.field static final TRANSACTION_restoreSetsAvailable:I = 0x1

.field static final TRANSACTION_restoreStarting:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.backup.IRestoreObserver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.app.backup.IRestoreObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/backup/IRestoreObserver;

    return-object v0

    :cond_1
    new-instance v1, Landroid/app/backup/IRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string/jumbo v3, "android.app.backup.IRestoreObserver"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_1
    const-string/jumbo v3, "android.app.backup.IRestoreObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/app/backup/RestoreSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/backup/RestoreSet;

    invoke-virtual {p0, v1}, Landroid/app/backup/IRestoreObserver$Stub;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    return v4

    :sswitch_2
    const-string/jumbo v3, "android.app.backup.IRestoreObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/backup/IRestoreObserver$Stub;->restoreStarting(I)V

    return v4

    :sswitch_3
    const-string/jumbo v3, "android.app.backup.IRestoreObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/backup/IRestoreObserver$Stub;->onUpdate(ILjava/lang/String;)V

    return v4

    :sswitch_4
    const-string/jumbo v3, "android.app.backup.IRestoreObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/backup/IRestoreObserver$Stub;->restoreFinished(I)V

    return v4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
