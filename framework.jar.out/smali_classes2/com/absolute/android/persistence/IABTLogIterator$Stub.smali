.class public abstract Lcom/absolute/android/persistence/IABTLogIterator$Stub;
.super Landroid/os/Binder;
.source "IABTLogIterator.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTLogIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTLogIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTLogIterator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTLogIterator"

.field static final TRANSACTION_getNext:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.absolute.android.persistence.IABTLogIterator"

    .line 22
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTLogIterator;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.absolute.android.persistence.IABTLogIterator"

    .line 33
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    if-nez v0, :cond_2

    .line 37
    :cond_0
    new-instance v0, Lcom/absolute/android/persistence/IABTLogIterator$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTLogIterator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 31
    :cond_1
    return-object v0

    .line 34
    :cond_2
    instance-of v1, v0, Lcom/absolute/android/persistence/IABTLogIterator;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Lcom/absolute/android/persistence/IABTLogIterator;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.absolute.android.persistence.IABTLogIterator"

    .line 49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v1

    :sswitch_1
    const-string/jumbo v0, "com.absolute.android.persistence.IABTLogIterator"

    .line 54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTLogIterator$Stub;->getNext(I)[Lcom/absolute/android/persistence/LogEntry;

    move-result-object v0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 60
    return v1

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
