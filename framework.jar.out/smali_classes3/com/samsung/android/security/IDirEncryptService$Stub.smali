.class public abstract Lcom/samsung/android/security/IDirEncryptService$Stub;
.super Landroid/os/Binder;
.source "IDirEncryptService.java"

# interfaces
.implements Lcom/samsung/android/security/IDirEncryptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/security/IDirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/security/IDirEncryptService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IDirEncryptService"

.field static final TRANSACTION_SetMountSDcardToHelper:I = 0x2a

.field static final TRANSACTION_clearPrefs:I = 0xd

.field static final TRANSACTION_encryptStorage:I = 0x9

.field static final TRANSACTION_getAdditionalSpaceRequired:I = 0x8

.field static final TRANSACTION_getCurrentStatus:I = 0x6

.field static final TRANSACTION_getLastError:I = 0x7

.field static final TRANSACTION_getSdCardEncryptionPreferences:I = 0xa

.field static final TRANSACTION_isEncryptionAppliedSDCard:I = 0xe

.field static final TRANSACTION_isStorageCardEncryptionPoliciesApplied:I = 0x4

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_setNeedToCreateKey:I = 0x29

.field static final TRANSACTION_setPassword:I = 0x5

.field static final TRANSACTION_setSdCardEncryptionPolicy:I = 0xc

.field static final TRANSACTION_setStorageCardEncryptionPolicy:I = 0x3

.field static final TRANSACTION_unmountSDCardByAdmin:I = 0xb

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "IDirEncryptService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "IDirEncryptService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/security/IDirEncryptService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/security/IDirEncryptService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/security/IDirEncryptService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/security/IDirEncryptService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v1, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_1
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptServiceListener;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/security/IDirEncryptService$Stub;->registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_2
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptServiceListener;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/security/IDirEncryptService$Stub;->unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_3
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/samsung/android/security/IDirEncryptService$Stub;->setStorageCardEncryptionPolicy(III)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_4
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/samsung/android/security/IDirEncryptService$Stub;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_5
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/security/IDirEncryptService$Stub;->clearPrefs(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_6
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_7
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/security/IDirEncryptService$Stub;->setPassword(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_8
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->getCurrentStatus()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_9
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->getLastError()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_a
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->getAdditionalSpaceRequired()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_b
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/security/IDirEncryptService$Stub;->encryptStorage(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_c
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/security/IDirEncryptService$Stub;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v5}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_2
    return v5

    :sswitch_d
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->unmountSDCardByAdmin()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_e
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v5, :cond_3

    move v1, v5

    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/security/IDirEncryptService$Stub;->setNeedToCreateKey(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_f
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v5, :cond_4

    move v1, v5

    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/security/IDirEncryptService$Stub;->SetMountSDcardToHelper(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_10
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->isEncryptionAppliedSDCard()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_5

    move v1, v5

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_10
        0x29 -> :sswitch_e
        0x2a -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
