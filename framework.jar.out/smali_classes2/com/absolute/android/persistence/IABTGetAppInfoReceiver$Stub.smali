.class public abstract Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub;
.super Landroid/os/Binder;
.source "IABTGetAppInfoReceiver.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTGetAppInfoReceiver"

.field static final TRANSACTION_onGetAppInfoResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.absolute.android.persistence.IABTGetAppInfoReceiver"

    .line 22
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.absolute.android.persistence.IABTGetAppInfoReceiver"

    .line 33
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    if-nez v0, :cond_2

    .line 37
    :cond_0
    new-instance v0, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 31
    :cond_1
    return-object v0

    .line 34
    :cond_2
    instance-of v1, v0, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.absolute.android.persistence.IABTGetAppInfoReceiver"

    .line 49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v2

    :sswitch_1
    const-string/jumbo v1, "com.absolute.android.persistence.IABTGetAppInfoReceiver"

    .line 54
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    .line 58
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 67
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {p0, v1, v3, v0, v4}, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub;->onGetAppInfoResult(ZLjava/lang/String;Lcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v2

    :cond_0
    move v1, v2

    .line 56
    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistence/AppInfoProperties;

    goto :goto_1

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
