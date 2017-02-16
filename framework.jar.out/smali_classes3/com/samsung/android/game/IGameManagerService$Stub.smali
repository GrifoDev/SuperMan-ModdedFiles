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

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.samsung.android.game.IGameManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/game/IGameManagerService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/samsung/android/game/IGameManagerService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/game/IGameManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/IGameManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 215
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v17

    return v17

    .line 45
    :sswitch_0
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v17, 0x1

    return v17

    .line 50
    :sswitch_1
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/game/IGameManagerService$Stub;->identifyGamePackage(Ljava/lang/String;)I

    move-result v11

    .line 54
    .local v11, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/16 v17, 0x1

    return v17

    .line 60
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_2
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->identifyForegroundApp()I

    move-result v11

    .line 62
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/16 v17, 0x1

    return v17

    .line 68
    .end local v11    # "_result":I
    :sswitch_3
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getForegroundApp()Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    const/16 v17, 0x1

    return v17

    .line 76
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getGameList()Ljava/util/List;

    move-result-object v13

    .line 78
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 80
    const/16 v17, 0x1

    return v17

    .line 84
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/game/IGameManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerCallback;

    move-result-object v5

    .line 87
    .local v5, "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/game/IGameManagerService$Stub;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v15

    .line 88
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v15, :cond_0

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/16 v17, 0x1

    return v17

    .line 89
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 94
    .end local v5    # "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    .end local v15    # "_result":Z
    :sswitch_6
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/game/IGameManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerCallback;

    move-result-object v5

    .line 97
    .restart local v5    # "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/game/IGameManagerService$Stub;->unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v15

    .line 98
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v15, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/16 v17, 0x1

    return v17

    .line 99
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 104
    .end local v5    # "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    .end local v15    # "_result":Z
    :sswitch_7
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getMode()I

    move-result v11

    .line 106
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/16 v17, 0x1

    return v17

    .line 112
    .end local v11    # "_result":I
    :sswitch_8
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->setMode(I)Z

    move-result v15

    .line 116
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v15, :cond_2

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/16 v17, 0x1

    return v17

    .line 117
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 122
    .end local v2    # "_arg0":I
    .end local v15    # "_result":Z
    :sswitch_9
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getGameMap()Ljava/util/Map;

    move-result-object v14

    .line 124
    .local v14, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 126
    const/16 v17, 0x1

    return v17

    .line 130
    .end local v14    # "_result":Ljava/util/Map;
    :sswitch_a
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 134
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_3

    const/4 v10, 0x1

    .line 135
    .local v10, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/samsung/android/game/IGameManagerService$Stub;->addGame(Ljava/lang/String;Z)Z

    move-result v15

    .line 136
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v15, :cond_4

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/16 v17, 0x1

    return v17

    .line 134
    .end local v10    # "_arg1":Z
    .end local v15    # "_result":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 137
    .restart local v10    # "_arg1":Z
    .restart local v15    # "_result":Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    .line 142
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Z
    .end local v15    # "_result":Z
    :sswitch_b
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    .line 147
    .local v16, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v9

    .line 148
    .local v9, "_arg1":Ljava/util/Map;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/samsung/android/game/IGameManagerService$Stub;->initGameManager(ILjava/util/Map;)Z

    move-result v15

    .line 149
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v15, :cond_5

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/16 v17, 0x1

    return v17

    .line 150
    :cond_5
    const/16 v17, 0x0

    goto :goto_5

    .line 155
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":Ljava/util/Map;
    .end local v15    # "_result":Z
    .end local v16    # "cl":Ljava/lang/ClassLoader;
    :sswitch_c
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_6

    .line 158
    sget-object v17, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 164
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_7

    const/4 v10, 0x1

    .line 165
    .restart local v10    # "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/samsung/android/game/IGameManagerService$Stub;->notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Z)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    const/16 v17, 0x1

    return v17

    .line 161
    .end local v10    # "_arg1":Z
    :cond_6
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 164
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    :cond_7
    const/4 v10, 0x0

    goto :goto_7

    .line 171
    :sswitch_d
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getVersion()Ljava/lang/String;

    move-result-object v12

    .line 173
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    const/16 v17, 0x1

    return v17

    .line 179
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 183
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/samsung/android/game/IGameManagerService$Stub;->requestWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 185
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    const/16 v17, 0x1

    return v17

    .line 191
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 195
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_8

    .line 196
    sget-object v17, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 201
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/game/IGameManagerService$Stub;->requestDeathRestart(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/16 v17, 0x1

    return v17

    .line 199
    :cond_8
    const/4 v7, 0x0

    .local v7, "_arg1":Landroid/content/Intent;
    goto :goto_8

    .line 207
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/content/Intent;
    :sswitch_10
    const-string/jumbo v17, "com.samsung.android.game.IGameManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 210
    .restart local v4    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/game/IGameManagerService$Stub;->cancelDeathRestart(Landroid/os/IBinder;)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/16 v17, 0x1

    return v17

    .line 41
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
