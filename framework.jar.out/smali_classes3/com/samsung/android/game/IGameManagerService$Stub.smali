.class public abstract Lcom/samsung/android/game/IGameManagerService$Stub;
.super Landroid/os/Binder;
.source "IGameManagerService.java"

# interfaces
.implements Lcom/samsung/android/game/IGameManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/IGameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/IGameManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.game.IGameManagerService"

.field static final TRANSACTION_addGame:I = 0xa

.field static final TRANSACTION_cancelDeathRestart:I = 0x10

.field static final TRANSACTION_getForegroundApp:I = 0x3

.field static final TRANSACTION_getGameList:I = 0x4

.field static final TRANSACTION_getGameMap:I = 0x9

.field static final TRANSACTION_getMode:I = 0x7

.field static final TRANSACTION_getVersion:I = 0xd

.field static final TRANSACTION_identifyForegroundApp:I = 0x2

.field static final TRANSACTION_identifyGamePackage:I = 0x1

.field static final TRANSACTION_initGameManager:I = 0xb

.field static final TRANSACTION_notifyMultiWindowStyleChangedLocked:I = 0xc

.field static final TRANSACTION_registerCallback:I = 0x5

.field static final TRANSACTION_requestDeathRestart:I = 0xf

.field static final TRANSACTION_requestWithJson:I = 0xe

.field static final TRANSACTION_setMode:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.game.IGameManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/game/IGameManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/game/IGameManagerService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/game/IGameManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/IGameManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v17

    return v17

    :sswitch_0
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :sswitch_1
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/game/IGameManagerService$Stub;->identifyGamePackage(Ljava/lang/String;)I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :sswitch_2
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->identifyForegroundApp()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :sswitch_3
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getForegroundApp()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :sswitch_4
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getGameList()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/16 v17, 0x1

    return v17

    :sswitch_5
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/game/IGameManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerCallback;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/game/IGameManagerService$Stub;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_0

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    :sswitch_6
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/game/IGameManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerCallback;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/game/IGameManagerService$Stub;->unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    :sswitch_7
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getMode()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :sswitch_8
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->setMode(I)Z

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_2

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    :sswitch_9
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getGameMap()Ljava/util/Map;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/16 v17, 0x1

    return v17

    :sswitch_a
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_3

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/samsung/android/game/IGameManagerService$Stub;->addGame(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_4

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    :sswitch_b
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/samsung/android/game/IGameManagerService$Stub;->initGameManager(ILjava/util/Map;)Z

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_5

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_5
    const/16 v17, 0x0

    goto :goto_5

    :sswitch_c
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_6

    sget-object v17, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_7

    const/4 v10, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/samsung/android/game/IGameManagerService$Stub;->notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    goto :goto_7

    :sswitch_d
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :sswitch_e
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/samsung/android/game/IGameManagerService$Stub;->requestWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :sswitch_f
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_8

    sget-object v17, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/game/IGameManagerService$Stub;->requestDeathRestart(Landroid/os/IBinder;Landroid/content/Intent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :cond_8
    const/4 v7, 0x0

    goto :goto_8

    :sswitch_10
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/game/IGameManagerService$Stub;->cancelDeathRestart(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

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
