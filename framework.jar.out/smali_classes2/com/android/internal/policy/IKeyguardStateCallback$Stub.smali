.class public abstract Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.super Landroid/os/Binder;
.source "IKeyguardStateCallback.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardStateCallback"

.field static final TRANSACTION_onHasLockscreenWallpaperChanged:I = 0x5

.field static final TRANSACTION_onInputRestrictedStateChanged:I = 0x3

.field static final TRANSACTION_onShowingStateChanged:I = 0x1

.field static final TRANSACTION_onSimSecureStateChanged:I = 0x2

.field static final TRANSACTION_onSwipeLockShowingStateChanged:I = 0x6

.field static final TRANSACTION_onTrustedChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardStateCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/policy/IKeyguardStateCallback;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_1
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onShowingStateChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onSimSecureStateChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onInputRestrictedStateChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_4
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onTrustedChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_5
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onHasLockscreenWallpaperChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_6
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onSwipeLockShowingStateChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

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
