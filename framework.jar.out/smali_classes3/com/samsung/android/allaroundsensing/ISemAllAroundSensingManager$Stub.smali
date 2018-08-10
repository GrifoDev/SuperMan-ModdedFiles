.class public abstract Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;
.super Landroid/os/Binder;
.source "ISemAllAroundSensingManager.java"

# interfaces
.implements Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

.field static final TRANSACTION_getBrightnessValue:I = 0x1

.field static final TRANSACTION_getBrightnessValueEnable:I = 0x3

.field static final TRANSACTION_getPlatformBrightnessValue:I = 0x2

.field static final TRANSACTION_setBrightnessValue:I = 0x4

.field static final TRANSACTION_setBrightnessValueEnabled:I = 0x6

.field static final TRANSACTION_setPlatformBrightnessValue:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->getBrightnessValue()F

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    return v7

    :sswitch_2
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->getPlatformBrightnessValue()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_3
    const-string/jumbo v8, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->getBrightnessValueEnable()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_4
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->setBrightnessValue(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_5
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->setPlatformBrightnessValue(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_6
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->setBrightnessValueEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    nop

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
