.class public abstract Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;
.super Landroid/os/Binder;
.source "ISamsungKeyProvisioningManagerService.java"

# interfaces
.implements Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.SamsungKeyProvisioningManagerService.ISamsungKeyProvisioningManagerService"

.field static final TRANSACTION_create_keySession:I = 0x5

.field static final TRANSACTION_get_keyUid:I = 0x4

.field static final TRANSACTION_release_keySession:I = 0x6

.field static final TRANSACTION_set_otaServer:I = 0x1

.field static final TRANSACTION_verify_key:I = 0x3

.field static final TRANSACTION_write_key:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.service.SamsungKeyProvisioningManagerService.ISamsungKeyProvisioningManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.service.SamsungKeyProvisioningManagerService.ISamsungKeyProvisioningManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    const-string/jumbo v1, "com.samsung.android.service.SamsungKeyProvisioningManagerService.ISamsungKeyProvisioningManagerService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_1
    const-string/jumbo v1, "com.samsung.android.service.SamsungKeyProvisioningManagerService.ISamsungKeyProvisioningManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;->set_otaServer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_2
    const-string/jumbo v1, "com.samsung.android.service.SamsungKeyProvisioningManagerService.ISamsungKeyProvisioningManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;->write_key(BBLjava/lang/String;[BB)I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_3
    const-string/jumbo v1, "com.samsung.android.service.SamsungKeyProvisioningManagerService.ISamsungKeyProvisioningManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;->verify_key(BBLjava/lang/String;)I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_4
    const-string/jumbo v1, "com.samsung.android.service.SamsungKeyProvisioningManagerService.ISamsungKeyProvisioningManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-gez v12, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;->get_keyUid(BBLjava/lang/String;[B)I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v1, 0x1

    return v1

    :cond_0
    new-array v5, v12, [B

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "com.samsung.android.service.SamsungKeyProvisioningManagerService.ISamsungKeyProvisioningManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-gez v10, :cond_1

    const/4 v9, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    invoke-virtual {p0, v2, v8, v9, v11}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;->create_keySession(BLjava/lang/String;[BB)I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v1, 0x1

    return v1

    :cond_1
    new-array v9, v10, [B

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "com.samsung.android.service.SamsungKeyProvisioningManagerService.ISamsungKeyProvisioningManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;->release_keySession()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

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
