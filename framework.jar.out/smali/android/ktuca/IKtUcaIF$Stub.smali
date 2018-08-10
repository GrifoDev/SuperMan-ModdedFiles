.class public abstract Landroid/ktuca/IKtUcaIF$Stub;
.super Landroid/os/Binder;
.source "IKtUcaIF.java"

# interfaces
.implements Landroid/ktuca/IKtUcaIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ktuca/IKtUcaIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ktuca/IKtUcaIF$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.ktuca.IKtUcaIF"

.field static final TRANSACTION_KUCA_CHInit:I = 0x13

.field static final TRANSACTION_KUCA_Close:I = 0x10

.field static final TRANSACTION_KUCA_CloseT:I = 0x19

.field static final TRANSACTION_KUCA_KUH_Establish:I = 0x15

.field static final TRANSACTION_KUCA_KUH_Release:I = 0x16

.field static final TRANSACTION_KUCA_KUH_Transmit:I = 0x17

.field static final TRANSACTION_KUCA_Open:I = 0xe

.field static final TRANSACTION_KUCA_OpenT:I = 0x18

.field static final TRANSACTION_KUCA_Transmit:I = 0xf

.field static final TRANSACTION_KUCA_UCAVersion:I = 0x12

.field static final TRANSACTION_KUCA_getHandle:I = 0x3

.field static final TRANSACTION_KUCA_getICCID:I = 0x6

.field static final TRANSACTION_KUCA_getIMSI:I = 0x5

.field static final TRANSACTION_KUCA_getMDN:I = 0x8

.field static final TRANSACTION_KUCA_getMODEL:I = 0x9

.field static final TRANSACTION_KUCA_getMSISDN:I = 0x4

.field static final TRANSACTION_KUCA_getPUID:I = 0x7

.field static final TRANSACTION_KUCA_getPinStatus:I = 0xc

.field static final TRANSACTION_KUCA_getSIMInfo:I = 0xa

.field static final TRANSACTION_KUCA_getSimStatus:I = 0x11

.field static final TRANSACTION_KUCA_printCHInfo:I = 0x14

.field static final TRANSACTION_KUCA_usimAUTH:I = 0xb

.field static final TRANSACTION_KUCA_verifyPin:I = 0xd

.field static final TRANSACTION_getResource:I = 0x1

.field static final TRANSACTION_releaseResource:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p0, p0, v0}, Landroid/ktuca/IKtUcaIF$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/ktuca/IKtUcaIF;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.ktuca.IKtUcaIF"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/ktuca/IKtUcaIF;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/ktuca/IKtUcaIF;

    return-object v0

    :cond_1
    new-instance v1, Landroid/ktuca/IKtUcaIF$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/ktuca/IKtUcaIF$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/ktuca/IKtUcaIF$Stub;->getResource()I

    move-result v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_2
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/ktuca/IKtUcaIF$Stub;->releaseResource()I

    move-result v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_3
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :sswitch_4
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_1

    const/4 v13, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_0
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_0

    :cond_1
    move/from16 v0, v28

    new-array v13, v0, [I

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_2

    const/4 v6, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_3

    const/4 v13, 0x0

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_2
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_2

    :cond_3
    move/from16 v0, v28

    new-array v13, v0, [I

    goto :goto_3

    :sswitch_6
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_4

    const/4 v6, 0x0

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_5

    const/4 v13, 0x0

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_4
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_4

    :cond_5
    move/from16 v0, v28

    new-array v13, v0, [I

    goto :goto_5

    :sswitch_7
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_6

    const/4 v6, 0x0

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_7

    const/4 v13, 0x0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_6
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_6

    :cond_7
    move/from16 v0, v28

    new-array v13, v0, [I

    goto :goto_7

    :sswitch_8
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_8

    const/4 v6, 0x0

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_9

    const/4 v13, 0x0

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_8
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_8

    :cond_9
    move/from16 v0, v28

    new-array v13, v0, [I

    goto :goto_9

    :sswitch_9
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_a

    const/4 v6, 0x0

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_b

    const/4 v13, 0x0

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v10 .. v15}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_a
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_a

    :cond_b
    move/from16 v0, v28

    new-array v13, v0, [I

    goto :goto_b

    :sswitch_a
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_c

    const/4 v6, 0x0

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_d

    const/4 v13, 0x0

    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v13}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_c
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_c

    :cond_d
    move/from16 v0, v28

    new-array v13, v0, [I

    goto :goto_d

    :sswitch_b
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-gez v30, :cond_e

    const/4 v8, 0x0

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-gez v31, :cond_f

    const/4 v9, 0x0

    :goto_f
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_e
    move/from16 v0, v30

    new-array v8, v0, [B

    goto :goto_e

    :cond_f
    move/from16 v0, v31

    new-array v9, v0, [I

    goto :goto_f

    :sswitch_c
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_10

    const/4 v7, 0x0

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-gez v30, :cond_11

    const/16 v29, 0x0

    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v29

    invoke-virtual {v0, v5, v1, v7, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_10
    move/from16 v0, v28

    new-array v7, v0, [B

    goto :goto_10

    :cond_11
    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v29, v0

    goto :goto_11

    :sswitch_d
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-gez v30, :cond_12

    const/4 v8, 0x0

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-gez v31, :cond_13

    const/4 v9, 0x0

    :goto_13
    move-object/from16 v16, p0

    move-object/from16 v17, v5

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-virtual/range {v16 .. v21}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_12
    move/from16 v0, v30

    new-array v8, v0, [B

    goto :goto_12

    :cond_13
    move/from16 v0, v31

    new-array v9, v0, [I

    goto :goto_13

    :sswitch_e
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_14

    const/4 v6, 0x0

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_15

    const/4 v13, 0x0

    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v13}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Open([B[B[I)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_14
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_14

    :cond_15
    move/from16 v0, v28

    new-array v13, v0, [I

    goto :goto_15

    :sswitch_f
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-gez v30, :cond_16

    const/4 v8, 0x0

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-gez v31, :cond_17

    const/4 v9, 0x0

    :goto_17
    move-object/from16 v20, p0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-virtual/range {v20 .. v25}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_16
    move/from16 v0, v30

    new-array v8, v0, [B

    goto :goto_16

    :cond_17
    move/from16 v0, v31

    new-array v9, v0, [I

    goto :goto_17

    :sswitch_10
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Close([BB)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    return v4

    :sswitch_11
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_18

    const/4 v6, 0x0

    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSimStatus([B[B)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    return v4

    :cond_18
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_18

    :sswitch_12
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_19

    const/4 v6, 0x0

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_1a

    const/4 v13, 0x0

    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v13}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_19
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_19

    :cond_1a
    move/from16 v0, v28

    new-array v13, v0, [I

    goto :goto_1a

    :sswitch_13
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_1b

    const/4 v6, 0x0

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_1c

    const/4 v13, 0x0

    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6, v13}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CHInit(B[B[I)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_1b
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_1b

    :cond_1c
    move/from16 v0, v28

    new-array v13, v0, [I

    goto :goto_1c

    :sswitch_14
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_printCHInfo(B)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    return v4

    :sswitch_15
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Establish(B)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    return v4

    :sswitch_16
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Release(B)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    return v4

    :sswitch_17
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-gez v30, :cond_1d

    const/4 v8, 0x0

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-gez v31, :cond_1e

    const/4 v9, 0x0

    :goto_1e
    move-object/from16 v20, p0

    move-object/from16 v22, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-virtual/range {v20 .. v25}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_1d
    move/from16 v0, v30

    new-array v8, v0, [B

    goto :goto_1d

    :cond_1e
    move/from16 v0, v31

    new-array v9, v0, [I

    goto :goto_1e

    :sswitch_18
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-gez v27, :cond_1f

    const/4 v6, 0x0

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-gez v28, :cond_20

    const/4 v13, 0x0

    :goto_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v13}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_OpenT([B[B[I)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4

    :cond_1f
    move/from16 v0, v27

    new-array v6, v0, [B

    goto :goto_1f

    :cond_20
    move/from16 v0, v28

    new-array v13, v0, [I

    goto :goto_20

    :sswitch_19
    const-string/jumbo v4, "android.ktuca.IKtUcaIF"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CloseT([BB)J

    move-result-wide v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    return v4

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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
