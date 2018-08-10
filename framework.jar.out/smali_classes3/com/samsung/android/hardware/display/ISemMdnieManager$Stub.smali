.class public abstract Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.super Landroid/os/Binder;
.source "ISemMdnieManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/display/ISemMdnieManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/ISemMdnieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.hardware.display.ISemMdnieManager"

.field static final TRANSACTION_getContentMode:I = 0x2

.field static final TRANSACTION_getCurrentPocIndex:I = 0x3

.field static final TRANSACTION_getPocSettingValue:I = 0x4

.field static final TRANSACTION_getScreenMode:I = 0x1

.field static final TRANSACTION_getSupportedContentMode:I = 0xb

.field static final TRANSACTION_getSupportedScreenMode:I = 0x9

.field static final TRANSACTION_isContentModeSupported:I = 0xa

.field static final TRANSACTION_isMdnieFisrtUsed:I = 0x5

.field static final TRANSACTION_isMdniePocFused:I = 0x6

.field static final TRANSACTION_isMdniePocSupported:I = 0x7

.field static final TRANSACTION_isScreenModeSupported:I = 0x8

.field static final TRANSACTION_setAmoledACL:I = 0xe

.field static final TRANSACTION_setColorVision:I = 0x10

.field static final TRANSACTION_setContentMode:I = 0xd

.field static final TRANSACTION_setLightNotificationMode:I = 0x16

.field static final TRANSACTION_setNightMode:I = 0xf

.field static final TRANSACTION_setPocCancel:I = 0x18

.field static final TRANSACTION_setPocSetting:I = 0x17

.field static final TRANSACTION_setScreenMode:I = 0xc

.field static final TRANSACTION_setmDNIeAccessibilityMode:I = 0x15

.field static final TRANSACTION_setmDNIeColorBlind:I = 0x11

.field static final TRANSACTION_setmDNIeEmergencyMode:I = 0x14

.field static final TRANSACTION_setmDNIeNegative:I = 0x12

.field static final TRANSACTION_setmDNIeScreenCurtain:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/display/ISemMdnieManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/hardware/display/ISemMdnieManager;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_0
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_1
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getScreenMode()I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_2
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getContentMode()I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_3
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getCurrentPocIndex()I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_4
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getPocSettingValue()I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_5
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isMdnieFisrtUsed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :sswitch_6
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isMdniePocFused()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :sswitch_7
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isMdniePocSupported()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :sswitch_8
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isScreenModeSupported()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :sswitch_9
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getSupportedScreenMode()[I

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v9, 0x1

    return v9

    :sswitch_a
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isContentModeSupported()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    :sswitch_b
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getSupportedContentMode()[I

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v9, 0x1

    return v9

    :sswitch_c
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setScreenMode(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    :sswitch_d
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setContentMode(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    :sswitch_e
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setAmoledACL(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_7

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    :sswitch_f
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setNightMode(ZI)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_9

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_8
    const/4 v1, 0x0

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    goto :goto_9

    :sswitch_10
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a

    const/4 v1, 0x1

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v2, v5}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setColorVision(ZII)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_b

    const/4 v9, 0x1

    :goto_b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    :cond_b
    const/4 v9, 0x0

    goto :goto_b

    :sswitch_11
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    const/4 v1, 0x1

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeColorBlind(Z[I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_d

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_c
    const/4 v1, 0x0

    goto :goto_c

    :cond_d
    const/4 v9, 0x0

    goto :goto_d

    :sswitch_12
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_e

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeNegative(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_f

    const/4 v9, 0x1

    :goto_f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_e
    const/4 v1, 0x0

    goto :goto_e

    :cond_f
    const/4 v9, 0x0

    goto :goto_f

    :sswitch_13
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    const/4 v1, 0x1

    :goto_10
    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeScreenCurtain(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_11

    const/4 v9, 0x1

    :goto_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_10
    const/4 v1, 0x0

    goto :goto_10

    :cond_11
    const/4 v9, 0x0

    goto :goto_11

    :sswitch_14
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    const/4 v1, 0x1

    :goto_12
    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeEmergencyMode(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_13

    const/4 v9, 0x1

    :goto_13
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_12
    const/4 v1, 0x0

    goto :goto_12

    :cond_13
    const/4 v9, 0x0

    goto :goto_13

    :sswitch_15
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_14

    const/4 v3, 0x1

    :goto_14
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeAccessibilityMode(IZ)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_15

    const/4 v9, 0x1

    :goto_15
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_14
    const/4 v3, 0x0

    goto :goto_14

    :cond_15
    const/4 v9, 0x0

    goto :goto_15

    :sswitch_16
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_16

    const/4 v1, 0x1

    :goto_16
    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setLightNotificationMode(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_17

    const/4 v9, 0x1

    :goto_17
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_16
    const/4 v1, 0x0

    goto :goto_16

    :cond_17
    const/4 v9, 0x0

    goto :goto_17

    :sswitch_17
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setPocSetting(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_18

    const/4 v9, 0x1

    :goto_18
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_18
    const/4 v9, 0x0

    goto :goto_18

    :sswitch_18
    const-string/jumbo v9, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setPocCancel()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_19

    const/4 v9, 0x1

    :goto_19
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_19
    const/4 v9, 0x0

    goto :goto_19

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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
