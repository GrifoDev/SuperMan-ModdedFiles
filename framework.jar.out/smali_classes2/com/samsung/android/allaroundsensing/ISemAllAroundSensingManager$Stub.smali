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

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 43
    :sswitch_0
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v7

    .line 48
    :sswitch_1
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->getBrightnessValue()F

    move-result v3

    .line 50
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 52
    return v7

    .line 56
    .end local v3    # "_result":F
    :sswitch_2
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->getPlatformBrightnessValue()I

    move-result v4

    .line 58
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v7

    .line 64
    .end local v4    # "_result":I
    :sswitch_3
    const-string/jumbo v8, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->getBrightnessValueEnable()Z

    move-result v5

    .line 66
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return v7

    .line 72
    .end local v5    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 75
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->setBrightnessValue(F)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v7

    .line 81
    .end local v0    # "_arg0":F
    :sswitch_5
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->setPlatformBrightnessValue(I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v7

    .line 90
    .end local v1    # "_arg0":I
    :sswitch_6
    const-string/jumbo v8, "com.samsung.android.allaroundsensing.ISemAllAroundSensingManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v2, v7

    .line 93
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->setBrightnessValueEnabled(Z)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v7

    .end local v2    # "_arg0":Z
    :cond_1
    move v2, v6

    .line 92
    goto :goto_0

    .line 39
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
