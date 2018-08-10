.class public abstract Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IMemorySaverBackupRestoreObserver.java"

# interfaces
.implements Landroid/app/backup/IMemorySaverBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IMemorySaverBackupRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IMemorySaverBackupRestoreObserver"

.field static final TRANSACTION_onBackupCompleted:I = 0x2

.field static final TRANSACTION_onRestoreCompleted:I = 0x4

.field static final TRANSACTION_onRestoreStart:I = 0x3

.field static final TRANSACTION_onStartBackup:I = 0x1

.field static final TRANSACTION_onTimeout:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.backup.IMemorySaverBackupRestoreObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IMemorySaverBackupRestoreObserver;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.app.backup.IMemorySaverBackupRestoreObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    return-object v0

    :cond_1
    new-instance v1, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_0
    const-string/jumbo v2, "android.app.backup.IMemorySaverBackupRestoreObserver"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_1
    const-string/jumbo v2, "android.app.backup.IMemorySaverBackupRestoreObserver"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->onStartBackup(Ljava/lang/String;)V

    return v3

    :sswitch_2
    const-string/jumbo v2, "android.app.backup.IMemorySaverBackupRestoreObserver"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->onBackupCompleted(Ljava/lang/String;Z)V

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "android.app.backup.IMemorySaverBackupRestoreObserver"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->onRestoreStart(Ljava/lang/String;)V

    return v3

    :sswitch_4
    const-string/jumbo v2, "android.app.backup.IMemorySaverBackupRestoreObserver"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->onRestoreCompleted(Ljava/lang/String;Z)V

    return v3

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "android.app.backup.IMemorySaverBackupRestoreObserver"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->onTimeout()V

    return v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
