.class public abstract Lcom/samsung/android/dapmanager/IMlDapService$Stub;
.super Landroid/os/Binder;
.source "IMlDapService.java"

# interfaces
.implements Lcom/samsung/android/dapmanager/IMlDapService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dapmanager/IMlDapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dapmanager/IMlDapService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.dapmanager.IMlDapService"

.field static final TRANSACTION_checkDeviceCertificate:I = 0x3

.field static final TRANSACTION_deleteDeviceKey:I = 0x4

.field static final TRANSACTION_finalizeOta:I = 0xb

.field static final TRANSACTION_generateSignature:I = 0x9

.field static final TRANSACTION_getCaCertificate:I = 0x1

.field static final TRANSACTION_getDeviceCertificate:I = 0x5

.field static final TRANSACTION_getExtendPcr:I = 0x8

.field static final TRANSACTION_getManufacturerCertificate:I = 0x6

.field static final TRANSACTION_getPcr:I = 0x7

.field static final TRANSACTION_initializeOta:I = 0xa

.field static final TRANSACTION_storeDeviceCertificate:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.dapmanager.IMlDapService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/dapmanager/IMlDapService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/dapmanager/IMlDapService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/dapmanager/IMlDapService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/dapmanager/IMlDapService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_1
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v8, v3}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->getCaCertificate(I[B)[B

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v1, 0x1

    return v1

    :sswitch_2
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->storeDeviceCertificate([B[B[BIII)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_3
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->checkDeviceCertificate()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_4
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->deleteDeviceKey()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_5
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->getDeviceCertificate()Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/dapmanager/BufferData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->getManufacturerCertificate()Lcom/samsung/android/dapmanager/IoBufferData;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_1

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/dapmanager/IoBufferData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->getPcr()Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_2

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/dapmanager/BufferData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_8
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p0, v2, v9}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->getExtendPcr([BI)Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_3

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/dapmanager/BufferData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :sswitch_9
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p0, v2, v9}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->generateSignature([BI)Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_4

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/dapmanager/BufferData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v1, 0x1

    return v1

    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :sswitch_a
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->initializeOta()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_b
    const-string/jumbo v1, "com.samsung.android.dapmanager.IMlDapService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;->finalizeOta()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

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
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
