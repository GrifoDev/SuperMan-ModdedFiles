.class public abstract Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;
.super Landroid/os/Binder;
.source "IEmergencyManager.java"

# interfaces
.implements Lcom/samsung/android/emergencymode/IEmergencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/emergencymode/IEmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.emergencymode.IEmergencyManager"

.field static final TRANSACTION_addAppToLauncher:I = 0xd

.field static final TRANSACTION_checkInvalidBroadcast:I = 0x6

.field static final TRANSACTION_checkInvalidProcess:I = 0x5

.field static final TRANSACTION_checkModeType:I = 0xe

.field static final TRANSACTION_checkValidIntentAction:I = 0x4

.field static final TRANSACTION_checkValidPackage:I = 0x3

.field static final TRANSACTION_getEmergencyState:I = 0x2

.field static final TRANSACTION_isEmergencyMode:I = 0x1

.field static final TRANSACTION_isModifying:I = 0xb

.field static final TRANSACTION_isScreenOn:I = 0x8

.field static final TRANSACTION_isUserPackageBlocked:I = 0xa

.field static final TRANSACTION_needMobileDataBlock:I = 0x7

.field static final TRANSACTION_setLocationProviderEnabled:I = 0xc

.field static final TRANSACTION_setUserPackageBlocked:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emergencymode/IEmergencyManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/emergencymode/IEmergencyManager;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v8, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string/jumbo v10, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isEmergencyMode()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_0

    move v8, v9

    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_2
    const-string/jumbo v8, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->getEmergencyState()I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_3
    const-string/jumbo v10, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v5}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_4
    const-string/jumbo v10, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_5
    const-string/jumbo v10, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkInvalidProcess(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3

    move v8, v9

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_6
    const-string/jumbo v10, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_7
    const-string/jumbo v10, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->needMobileDataBlock()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5

    move v8, v9

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_8
    const-string/jumbo v10, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isScreenOn()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6

    move v8, v9

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_9
    const-string/jumbo v8, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->setUserPackageBlocked(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_a
    const-string/jumbo v10, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isUserPackageBlocked()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_8

    move v8, v9

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_b
    const-string/jumbo v10, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isModifying()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_9

    move v8, v9

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_c
    const-string/jumbo v8, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->setLocationProviderEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_d
    const-string/jumbo v10, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->addAppToLauncher(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_b

    move v8, v9

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_c
    const/4 v4, 0x0

    goto :goto_2

    :sswitch_e
    const-string/jumbo v10, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkModeType(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_d

    move v8, v9

    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
