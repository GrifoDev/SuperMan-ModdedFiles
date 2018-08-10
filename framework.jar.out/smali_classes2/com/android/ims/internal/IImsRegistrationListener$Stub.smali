.class public abstract Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.super Landroid/os/Binder;
.source "IImsRegistrationListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsRegistrationListener"

.field static final TRANSACTION_registrationAssociatedUriChanged:I = 0xb

.field static final TRANSACTION_registrationChangeFailed:I = 0xc

.field static final TRANSACTION_registrationConnected:I = 0x1

.field static final TRANSACTION_registrationConnectedWithRadioTech:I = 0x3

.field static final TRANSACTION_registrationDisconnected:I = 0x5

.field static final TRANSACTION_registrationFeatureCapabilityChanged:I = 0x9

.field static final TRANSACTION_registrationProgressing:I = 0x2

.field static final TRANSACTION_registrationProgressingWithRadioTech:I = 0x4

.field static final TRANSACTION_registrationResumed:I = 0x6

.field static final TRANSACTION_registrationServiceCapabilityChanged:I = 0x8

.field static final TRANSACTION_registrationSuspended:I = 0x7

.field static final TRANSACTION_voiceMessageCountUpdate:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.IImsRegistrationListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsRegistrationListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/ims/internal/IImsRegistrationListener;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_1
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationConnected()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_2
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationProgressing()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_3
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationConnectedWithRadioTech(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_4
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationProgressingWithRadioTech(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_5
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationDisconnected(Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_6
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationResumed()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_7
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationSuspended()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_8
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationServiceCapabilityChanged(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_9
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationFeatureCapabilityChanged(I[I[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_a
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->voiceMessageCountUpdate(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_b
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_c
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/ImsReasonInfo;

    :goto_1
    invoke-virtual {p0, v0, v4}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationChangeFailed(ILcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
