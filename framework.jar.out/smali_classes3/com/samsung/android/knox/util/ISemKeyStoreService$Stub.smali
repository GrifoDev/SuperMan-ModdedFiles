.class public abstract Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;
.super Landroid/os/Binder;
.source "ISemKeyStoreService.java"

# interfaces
.implements Lcom/samsung/android/knox/util/ISemKeyStoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/util/ISemKeyStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.util.ISemKeyStoreService"

.field static final TRANSACTION_getKeystoreStatus:I = 0x5

.field static final TRANSACTION_grantAccessForAKS:I = 0x3

.field static final TRANSACTION_installCACert:I = 0x4

.field static final TRANSACTION_installCertificateInAndroidKeyStore:I = 0x2

.field static final TRANSACTION_isAliasExists:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.knox.util.ISemKeyStoreService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/util/ISemKeyStoreService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.knox.util.ISemKeyStoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/util/ISemKeyStoreService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/util/ISemKeyStoreService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.samsung.android.knox.util.ISemKeyStoreService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string/jumbo v0, "com.samsung.android.knox.util.ISemKeyStoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->isAliasExists(Ljava/lang/String;Z)I

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.samsung.android.knox.util.ISemKeyStoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/util/SemCertByte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/util/SemCertByte;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CZI)I

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :sswitch_3
    const-string/jumbo v0, "com.samsung.android.knox.util.ISemKeyStoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->grantAccessForAKS(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_4
    const-string/jumbo v0, "com.samsung.android.knox.util.ISemKeyStoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;

    :goto_3
    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :sswitch_5
    const-string/jumbo v0, "com.samsung.android.knox.util.ISemKeyStoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->getKeystoreStatus()I

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
