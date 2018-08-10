.class public abstract Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;
.super Landroid/os/Binder;
.source "ISemAuthnrService.java"

# interfaces
.implements Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.authnrservice.manager.ISemAuthnrService"

.field static final TRANSACTION_deleteFile:I = 0xb

.field static final TRANSACTION_getDrkKeyHandle:I = 0x9

.field static final TRANSACTION_getFiles:I = 0xc

.field static final TRANSACTION_getMatchedFilePaths:I = 0x11

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_getWrappedObject:I = 0x6

.field static final TRANSACTION_initialize:I = 0x2

.field static final TRANSACTION_initializeDrk:I = 0x7

.field static final TRANSACTION_initializeWithPreloadedTa:I = 0xd

.field static final TRANSACTION_process:I = 0x4

.field static final TRANSACTION_processWithPreloadedTa:I = 0xf

.field static final TRANSACTION_readFile:I = 0x10

.field static final TRANSACTION_setChallenge:I = 0x5

.field static final TRANSACTION_terminate:I = 0x3

.field static final TRANSACTION_terminateDrk:I = 0x8

.field static final TRANSACTION_terminateWithPreloadedTa:I = 0xe

.field static final TRANSACTION_writeFile:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_0
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_1
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getVersion()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_2
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->initialize(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->terminate()Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_4
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->process([B)[B

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x1

    return v2

    :sswitch_5
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->setChallenge([B)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_3

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_6
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getWrappedObject([B)[B

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x1

    return v2

    :sswitch_7
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->initializeDrk()Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_4

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :sswitch_8
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->terminateDrk()Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_5

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :sswitch_9
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getDrkKeyHandle()[B

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x1

    return v2

    :sswitch_a
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->writeFile([BLjava/lang/String;)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_6

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    :sswitch_b
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->deleteFile(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_7

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    :sswitch_c
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v2, 0x1

    return v2

    :sswitch_d
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->initializeWithPreloadedTa()Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_8

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_8
    const/4 v2, 0x0

    goto :goto_8

    :sswitch_e
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->terminateWithPreloadedTa()Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_9

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_9
    const/4 v2, 0x0

    goto :goto_9

    :sswitch_f
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->processWithPreloadedTa([BLjava/lang/String;)[B

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x1

    return v2

    :sswitch_10
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_11
    const-string/jumbo v2, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v2, 0x1

    return v2

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
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
