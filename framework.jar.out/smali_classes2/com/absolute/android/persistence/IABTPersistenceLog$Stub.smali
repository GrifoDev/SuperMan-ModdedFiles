.class public abstract Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;
.super Landroid/os/Binder;
.source "IABTPersistenceLog.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTPersistenceLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTPersistenceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTPersistenceLog$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTPersistenceLog"

.field static final TRANSACTION_clear:I = 0x3

.field static final TRANSACTION_getIterator:I = 0x1

.field static final TRANSACTION_getMaxLogSizeKB:I = 0x6

.field static final TRANSACTION_getNumberOfLogs:I = 0x5

.field static final TRANSACTION_logMessage:I = 0x2

.field static final TRANSACTION_setSize:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistenceLog"

    .line 20
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistenceLog;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistenceLog"

    .line 31
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-nez v0, :cond_2

    .line 35
    :cond_0
    new-instance v0, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 29
    :cond_1
    return-object v0

    .line 32
    :cond_2
    instance-of v1, v0, Lcom/absolute/android/persistence/IABTPersistenceLog;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Lcom/absolute/android/persistence/IABTPersistenceLog;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistenceLog"

    .line 47
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v3

    :sswitch_1
    const-string/jumbo v1, "com.absolute.android.persistence.IABTPersistenceLog"

    .line 52
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->getIterator(I)Lcom/absolute/android/persistence/IABTLogIterator;

    move-result-object v1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 58
    return v3

    .line 57
    :cond_0
    invoke-interface {v1}, Lcom/absolute/android/persistence/IABTLogIterator;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistenceLog"

    .line 62
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p0, v0, v1, v2}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v3

    :sswitch_3
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistenceLog"

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->clear()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v3

    :sswitch_4
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistenceLog"

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->setSize(II)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v3

    :sswitch_5
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistenceLog"

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->getNumberOfLogs()I

    move-result v0

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return v3

    :sswitch_6
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistenceLog"

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->getMaxLogSizeKB()I

    move-result v0

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return v3

    .line 43
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
