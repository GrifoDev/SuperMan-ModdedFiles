.class public abstract Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;
.super Landroid/os/Binder;
.source "IOcfKeyService.java"

# interfaces
.implements Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.OcfKeyService.IOcfKeyService"

.field static final TRANSACTION_finalizeTA:I = 0x5

.field static final TRANSACTION_getCertificateChain:I = 0x2

.field static final TRANSACTION_getInstalledKeyStatus:I = 0x6

.field static final TRANSACTION_initializeTA:I = 0x4

.field static final TRANSACTION_installCertificateChain:I = 0x3

.field static final TRANSACTION_sign:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.service.OcfKeyService.IOcfKeyService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.service.OcfKeyService.IOcfKeyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_0
    const-string/jumbo v9, "com.samsung.android.service.OcfKeyService.IOcfKeyService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_1
    const-string/jumbo v9, "com.samsung.android.service.OcfKeyService.IOcfKeyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-gez v7, :cond_0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p0, v0, v2, v5, v6}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;->sign(II[B[B)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    return v10

    :cond_0
    new-array v6, v7, [B

    goto :goto_0

    :sswitch_2
    const-string/jumbo v9, "com.samsung.android.service.OcfKeyService.IOcfKeyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;->getCertificateChain(I[B)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    return v10

    :cond_1
    new-array v3, v4, [B

    goto :goto_1

    :sswitch_3
    const-string/jumbo v9, "com.samsung.android.service.OcfKeyService.IOcfKeyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;->installCertificateChain([B)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :sswitch_4
    const-string/jumbo v9, "com.samsung.android.service.OcfKeyService.IOcfKeyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;->initializeTA()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :sswitch_5
    const-string/jumbo v9, "com.samsung.android.service.OcfKeyService.IOcfKeyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;->finalizeTA()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :sswitch_6
    const-string/jumbo v9, "com.samsung.android.service.OcfKeyService.IOcfKeyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;->getInstalledKeyStatus(I)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v10

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
