.class public abstract Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;
.super Landroid/os/Binder;
.source "IDeviceRootKeyService.java"

# interfaces
.implements Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

.field static final TRANSACTION_createServiceKeySession:I = 0x3

.field static final TRANSACTION_getDeviceRootKeyUID:I = 0x2

.field static final TRANSACTION_isExistDeviceRootKey:I = 0x1

.field static final TRANSACTION_releaseServiceKeySession:I = 0x4

.field static final TRANSACTION_setDeviceRootKey:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 46
    :sswitch_0
    const-string/jumbo v9, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v9, 0x1

    return v9

    .line 51
    :sswitch_1
    const-string/jumbo v9, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->isExistDeviceRootKey(I)Z

    move-result v7

    .line 55
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v7, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v9, 0x1

    return v9

    .line 56
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_2
    const-string/jumbo v9, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    const/4 v9, 0x1

    return v9

    .line 71
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v9, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    .line 78
    sget-object v9, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 83
    :goto_1
    invoke-virtual {p0, v1, v3, v4}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v8

    .line 84
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 86
    const/4 v9, 0x1

    return v9

    .line 81
    .end local v8    # "_result":[B
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg2":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    goto :goto_1

    .line 90
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    :sswitch_4
    const-string/jumbo v9, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->releaseServiceKeySession()I

    move-result v5

    .line 92
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v9, 0x1

    return v9

    .line 98
    .end local v5    # "_result":I
    :sswitch_5
    const-string/jumbo v9, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 101
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->setDeviceRootKey([B)I

    move-result v5

    .line 102
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v9, 0x1

    return v9

    .line 42
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
