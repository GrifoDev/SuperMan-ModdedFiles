.class public abstract Lcom/samsung/android/cover/ICoverManager$Stub;
.super Landroid/os/Binder;
.source "ICoverManager.java"

# interfaces
.implements Lcom/samsung/android/cover/ICoverManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/ICoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cover.ICoverManager"

.field static final TRANSACTION_addLedNotification:I = 0x11

.field static final TRANSACTION_disableCoverManager:I = 0xa

.field static final TRANSACTION_disableLcdOffByCover:I = 0x14

.field static final TRANSACTION_enableLcdOffByCover:I = 0x15

.field static final TRANSACTION_getCoverState:I = 0x7

.field static final TRANSACTION_getCoverStateForExternal:I = 0x1b

.field static final TRANSACTION_getCoverSwitchState:I = 0x8

.field static final TRANSACTION_getVersion:I = 0xb

.field static final TRANSACTION_isCoverManagerDisabled:I = 0x9

.field static final TRANSACTION_notifyCoverAttachStateChanged:I = 0x5

.field static final TRANSACTION_notifyCoverSwitchStateChanged:I = 0x4

.field static final TRANSACTION_notifySmartCoverAttachStateChanged:I = 0x6

.field static final TRANSACTION_onCoverAppCovered:I = 0x18

.field static final TRANSACTION_readTouchChannelCountForExternal:I = 0x1c

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerListenerCallback:I = 0x2

.field static final TRANSACTION_registerListenerCallbackForExternal:I = 0x19

.field static final TRANSACTION_registerNfcTouchListenerCallback:I = 0xe

.field static final TRANSACTION_removeLedNotification:I = 0x12

.field static final TRANSACTION_requestCoverAuthentication:I = 0x16

.field static final TRANSACTION_sendDataToCover:I = 0xc

.field static final TRANSACTION_sendDataToNfcLedCover:I = 0x10

.field static final TRANSACTION_sendPowerKeyToCover:I = 0xd

.field static final TRANSACTION_sendSystemEvent:I = 0x13

.field static final TRANSACTION_sendTouchRegionForExternal:I = 0x1d

.field static final TRANSACTION_setCoverPackage:I = 0x1e

.field static final TRANSACTION_setFotaInProgress:I = 0x17

.field static final TRANSACTION_unregisterCallback:I = 0x3

.field static final TRANSACTION_unregisterCallbackForExternal:I = 0x1a

.field static final TRANSACTION_unregisterNfcTouchListenerCallback:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.cover.ICoverManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cover/ICoverManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/cover/ICoverManager;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v25

    return v25

    :sswitch_0
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :sswitch_1
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_0

    sget-object v25, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1

    sget-object v25, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v8, v13, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_2

    const/16 v25, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :cond_2
    const/16 v25, 0x0

    goto :goto_2

    :sswitch_4
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_3

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v15}, Lcom/samsung/android/cover/ICoverManager$Stub;->notifyCoverSwitchStateChanged(JZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    :sswitch_5
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_4

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v15}, Lcom/samsung/android/cover/ICoverManager$Stub;->notifyCoverAttachStateChanged(JZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_4
    const/4 v15, 0x0

    goto :goto_4

    :sswitch_6
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_5

    const/4 v15, 0x1

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_6

    sget-object v25, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/cover/CoverState;

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v7, v15, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_5
    const/4 v15, 0x0

    goto :goto_5

    :cond_6
    const/16 v19, 0x0

    goto :goto_6

    :sswitch_7
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_7

    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cover/CoverState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/16 v25, 0x1

    return v25

    :cond_7
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :sswitch_8
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getCoverSwitchState()Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_8

    const/16 v25, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :cond_8
    const/16 v25, 0x0

    goto :goto_8

    :sswitch_9
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->isCoverManagerDisabled()Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_9

    const/16 v25, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :cond_9
    const/16 v25, 0x0

    goto :goto_9

    :sswitch_a
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_a

    const/4 v10, 0x1

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v14, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_a
    const/4 v10, 0x0

    goto :goto_a

    :sswitch_b
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getVersion()I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :sswitch_c
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendDataToCover(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :sswitch_d
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendPowerKeyToCover()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :sswitch_e
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_b

    sget-object v25, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ComponentName;

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_b
    const/16 v18, 0x0

    goto :goto_b

    :sswitch_f
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_c

    const/16 v25, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :cond_c
    const/16 v25, 0x0

    goto :goto_c

    :sswitch_10
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendDataToNfcLedCover(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :sswitch_11
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_d

    sget-object v25, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/cover/ICoverManager$Stub;->addLedNotification(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_d
    const/4 v5, 0x0

    goto :goto_d

    :sswitch_12
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_e

    sget-object v25, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/cover/ICoverManager$Stub;->removeLedNotification(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    :sswitch_13
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_f

    sget-object v25, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendSystemEvent(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_f
    const/4 v5, 0x0

    goto :goto_f

    :sswitch_14
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_10

    sget-object v25, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/samsung/android/cover/ICoverManager$Stub;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_11

    const/16 v25, 0x1

    :goto_11
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :cond_10
    const/4 v13, 0x0

    goto :goto_10

    :cond_11
    const/16 v25, 0x0

    goto :goto_11

    :sswitch_15
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_12

    sget-object v25, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/samsung/android/cover/ICoverManager$Stub;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_13

    const/16 v25, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :cond_12
    const/4 v13, 0x0

    goto :goto_12

    :cond_13
    const/16 v25, 0x0

    goto :goto_13

    :sswitch_16
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_14

    sget-object v25, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/samsung/android/cover/ICoverManager$Stub;->requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_15

    const/16 v25, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :cond_14
    const/4 v13, 0x0

    goto :goto_14

    :cond_15
    const/16 v25, 0x0

    goto :goto_15

    :sswitch_17
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_16

    const/4 v10, 0x1

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_17

    sget-object v25, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ComponentName;

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v14, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_18

    const/16 v25, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :cond_16
    const/4 v10, 0x0

    goto :goto_16

    :cond_17
    const/16 v18, 0x0

    goto :goto_17

    :cond_18
    const/16 v25, 0x0

    goto :goto_18

    :sswitch_18
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_19

    const/4 v10, 0x1

    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/cover/ICoverManager$Stub;->onCoverAppCovered(Z)I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :cond_19
    const/4 v10, 0x0

    goto :goto_19

    :sswitch_19
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1a

    sget-object v25, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v8, v13, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :cond_1a
    const/4 v13, 0x0

    goto :goto_1a

    :sswitch_1a
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterCallbackForExternal(Landroid/os/IBinder;)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_1b

    const/16 v25, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    return v25

    :cond_1b
    const/16 v25, 0x0

    goto :goto_1b

    :sswitch_1b
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_1c

    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cover/CoverState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1c
    const/16 v25, 0x1

    return v25

    :cond_1c
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    :sswitch_1c
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->readTouchChannelCountForExternal()Landroid/graphics/Point;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_1d

    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1d
    const/16 v25, 0x1

    return v25

    :cond_1d
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    :sswitch_1d
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v12, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendTouchRegionForExternal([BII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

    :sswitch_1e
    const-string/jumbo v25, "com.samsung.android.cover.ICoverManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/cover/ICoverManager$Stub;->setCoverPackage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v25, 0x1

    return v25

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
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
