.class public abstract Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IFingerprintServiceReceiver.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintServiceReceiver"

.field static final TRANSACTION_onAcquired:I = 0x2

.field static final TRANSACTION_onAuthenticationFailed:I = 0x4

.field static final TRANSACTION_onAuthenticationSucceeded:I = 0x3

.field static final TRANSACTION_onEnrollResult:I = 0x1

.field static final TRANSACTION_onEnumerated:I = 0x7

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onRemoved:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-object v0

    :cond_1
    new-instance v1, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onEnrollResult(JIII)V

    return v7

    :sswitch_2
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAcquired(JII)V

    return v7

    :sswitch_3
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v3, v0, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V

    return v7

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAuthenticationFailed(J)V

    return v7

    :sswitch_5
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onError(JII)V

    return v7

    :sswitch_6
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onRemoved(JIII)V

    return v7

    :sswitch_7
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onEnumerated(JIII)V

    return v7

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
