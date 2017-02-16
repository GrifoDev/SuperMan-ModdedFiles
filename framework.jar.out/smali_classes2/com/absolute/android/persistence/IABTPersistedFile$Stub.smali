.class public abstract Lcom/absolute/android/persistence/IABTPersistedFile$Stub;
.super Landroid/os/Binder;
.source "IABTPersistedFile.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTPersistedFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTPersistedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTPersistedFile$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTPersistedFile"

.field static final TRANSACTION_close:I = 0x6

.field static final TRANSACTION_delete:I = 0x7

.field static final TRANSACTION_exists:I = 0x1

.field static final TRANSACTION_read:I = 0x4

.field static final TRANSACTION_skip:I = 0x5

.field static final TRANSACTION_write:I = 0x2

.field static final TRANSACTION_writeWithCount:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistedFile"

    .line 22
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistedFile;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistedFile"

    .line 33
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    if-nez v0, :cond_2

    .line 37
    :cond_0
    new-instance v0, Lcom/absolute/android/persistence/IABTPersistedFile$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 31
    :cond_1
    return-object v0

    .line 34
    :cond_2
    instance-of v1, v0, Lcom/absolute/android/persistence/IABTPersistedFile;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Lcom/absolute/android/persistence/IABTPersistedFile;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
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

    const/4 v1, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistedFile"

    .line 49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v1

    :sswitch_1
    const-string/jumbo v2, "com.absolute.android.persistence.IABTPersistedFile"

    .line 54
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->exists()Z

    move-result v2

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return v1

    :cond_0
    move v0, v1

    .line 57
    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistedFile"

    .line 62
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->write([B)I

    move-result v0

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return v1

    :sswitch_3
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistedFile"

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    invoke-virtual {p0, v0, v2, v3}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->writeWithCount([BII)I

    move-result v0

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return v1

    :sswitch_4
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistedFile"

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->read([B)I

    move-result v2

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 93
    return v1

    :sswitch_5
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistedFile"

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 100
    invoke-virtual {p0, v2, v3}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->skip(J)J

    move-result-wide v2

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    return v1

    :sswitch_6
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistedFile"

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->close()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    return v1

    :sswitch_7
    const-string/jumbo v2, "com.absolute.android.persistence.IABTPersistedFile"

    .line 114
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->delete()Z

    move-result v2

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v1

    :cond_1
    move v0, v1

    .line 117
    goto :goto_1

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
