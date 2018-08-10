.class public abstract Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;
.super Landroid/os/Binder;
.source "IEngineeringModeService.java"

# interfaces
.implements Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

.field static final TRANSACTION_getExpiryDate:I = 0x10

.field static final TRANSACTION_getID:I = 0x6

.field static final TRANSACTION_getNumOfModes:I = 0x7

.field static final TRANSACTION_getRequestMsg:I = 0x2

.field static final TRANSACTION_getServerTime:I = 0xe

.field static final TRANSACTION_getStatus:I = 0x1

.field static final TRANSACTION_getTUC:I = 0xf

.field static final TRANSACTION_getToken:I = 0xd

.field static final TRANSACTION_installToken:I = 0x3

.field static final TRANSACTION_isTokenInstalled:I = 0x4

.field static final TRANSACTION_makeITLReq:I = 0xc

.field static final TRANSACTION_makeTokenReq:I = 0x9

.field static final TRANSACTION_makeTokenReqForESS:I = 0xa

.field static final TRANSACTION_recoveryITL:I = 0xb

.field static final TRANSACTION_removeToken:I = 0x5

.field static final TRANSACTION_sendFuseCmd:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    :sswitch_0
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getStatus(ILjava/lang/String;)I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_2
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v14, 0x1

    return v14

    :sswitch_3
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->installToken([B)I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_4
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->isTokenInstalled()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_5
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->removeToken()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_6
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getID()[B

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v14, 0x1

    return v14

    :sswitch_7
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getNumOfModes()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_8
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->sendFuseCmd()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_9
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v5, v6, v8}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v14, 0x1

    return v14

    :sswitch_a
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->makeTokenReqForESS(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v14, 0x1

    return v14

    :sswitch_b
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->recoveryITL([B)I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_c
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v14, 0x1

    return v14

    :sswitch_d
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getToken()[B

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v14, 0x1

    return v14

    :sswitch_e
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getServerTime()J

    move-result-wide v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v14, 0x1

    return v14

    :sswitch_f
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getTUC(I)I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_10
    const-string/jumbo v14, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getExpiryDate()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
