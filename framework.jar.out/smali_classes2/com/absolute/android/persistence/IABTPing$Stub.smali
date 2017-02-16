.class public abstract Lcom/absolute/android/persistence/IABTPing$Stub;
.super Landroid/os/Binder;
.source "IABTPing.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTPing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTPing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTPing$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTPing"

.field static final TRANSACTION_ping:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.absolute.android.persistence.IABTPing"

    .line 21
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPing;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.absolute.android.persistence.IABTPing"

    .line 32
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 36
    :cond_0
    new-instance v0, Lcom/absolute/android/persistence/IABTPing$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTPing$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 30
    :cond_1
    return-object v0

    .line 33
    :cond_2
    instance-of v1, v0, Lcom/absolute/android/persistence/IABTPing;

    if-eqz v1, :cond_0

    .line 34
    check-cast v0, Lcom/absolute/android/persistence/IABTPing;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPing"

    .line 48
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v1

    :sswitch_1
    const-string/jumbo v2, "com.absolute.android.persistence.IABTPing"

    .line 53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPing$Stub;->ping()Z

    move-result v2

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v1

    :cond_0
    move v0, v1

    .line 56
    goto :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
