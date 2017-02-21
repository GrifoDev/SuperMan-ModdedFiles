.class public abstract Landroid/app/trust/ITrustManager$Stub;
.super Landroid/os/Binder;
.source "ITrustManager.java"

# interfaces
.implements Landroid/app/trust/ITrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/ITrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/ITrustManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.trust.ITrustManager"

.field static final TRANSACTION_isDeviceLocked:I = 0x7

.field static final TRANSACTION_isDeviceSecure:I = 0x8

.field static final TRANSACTION_isTrustUsuallyManaged:I = 0x9

.field static final TRANSACTION_registerTrustListener:I = 0x3

.field static final TRANSACTION_reportEnabledTrustAgentsChanged:I = 0x2

.field static final TRANSACTION_reportKeyguardShowingChanged:I = 0x5

.field static final TRANSACTION_reportUnlockAttempt:I = 0x1

.field static final TRANSACTION_setDeviceLockedForUser:I = 0x6

.field static final TRANSACTION_unregisterTrustListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.trust.ITrustManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/trust/ITrustManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.app.trust.ITrustManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/trust/ITrustManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/trust/ITrustManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/app/trust/ITrustManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/trust/ITrustManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v4, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->reportUnlockAttempt(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->reportEnabledTrustAgentsChanged(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_3
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/trust/ITrustManager$Stub;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_4
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/trust/ITrustManager$Stub;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_5
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/trust/ITrustManager$Stub;->reportKeyguardShowingChanged()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_6
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v4, v6

    :cond_1
    invoke-virtual {p0, v0, v4}, Landroid/app/trust/ITrustManager$Stub;->setDeviceLockedForUser(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_7
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->isDeviceLocked(I)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2

    move v4, v6

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_8
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->isDeviceSecure(I)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_3

    move v4, v6

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_9
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->isTrustUsuallyManaged(I)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_4

    move v4, v6

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v6

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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
