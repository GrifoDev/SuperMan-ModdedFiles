.class public abstract Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;
.super Landroid/os/Binder;
.source "ISemRemoteContentManager.java"

# interfaces
.implements Lcom/samsung/android/knox/ISemRemoteContentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ISemRemoteContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ISemRemoteContentManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ISemRemoteContentManager"

.field static final TRANSACTION_cancelCopyChunks:I = 0x17

.field static final TRANSACTION_changePermissionMigration:I = 0x11

.field static final TRANSACTION_copyChunks:I = 0x16

.field static final TRANSACTION_copyFile:I = 0xf

.field static final TRANSACTION_copyFileInternal:I = 0xe

.field static final TRANSACTION_deleteFile:I = 0x14

.field static final TRANSACTION_doSyncForSyncer:I = 0x1c

.field static final TRANSACTION_exchangeData:I = 0x19

.field static final TRANSACTION_executeCommandForPersona:I = 0x7

.field static final TRANSACTION_getCallerInfo:I = 0x8

.field static final TRANSACTION_getFileInfo:I = 0x15

.field static final TRANSACTION_getFiles:I = 0x13

.field static final TRANSACTION_getRCPInterface:I = 0xc

.field static final TRANSACTION_getRCPProxy:I = 0x9

.field static final TRANSACTION_handleShortcut:I = 0x1b

.field static final TRANSACTION_isFileExist:I = 0x12

.field static final TRANSACTION_moveFile:I = 0xd

.field static final TRANSACTION_moveFilesForApp:I = 0x10

.field static final TRANSACTION_moveFilesForAppEx:I = 0x1f

.field static final TRANSACTION_queryAllProviders:I = 0x2

.field static final TRANSACTION_queryProvider:I = 0x1

.field static final TRANSACTION_registerCommandExe:I = 0x5

.field static final TRANSACTION_registerExchangeData:I = 0x18

.field static final TRANSACTION_registerMonitorCb:I = 0x1a

.field static final TRANSACTION_registerObserver:I = 0x1d

.field static final TRANSACTION_registerProvider:I = 0x3

.field static final TRANSACTION_registerRCPGlobalContactsDir:I = 0xa

.field static final TRANSACTION_registerRCPInterface:I = 0xb

.field static final TRANSACTION_registerSync:I = 0x4

.field static final TRANSACTION_switchPersona:I = 0x6

.field static final TRANSACTION_unRegisterObserver:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.knox.ISemRemoteContentManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemRemoteContentManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.samsung.android.knox.ISemRemoteContentManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/knox/ISemRemoteContentManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 54
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 498
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 56
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg6":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 63
    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v45

    .line 64
    .local v45, "_result":Landroid/content/CustomCursor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v45, :cond_0

    .line 66
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v4, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 70
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":[Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":[Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v45    # "_result":Landroid/content/CustomCursor;
    :sswitch_2
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 82
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 84
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 86
    .restart local v8    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 88
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 90
    .restart local v10    # "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg6":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 91
    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v51

    .line 92
    .local v51, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/CustomCursor;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    const/4 v4, 0x1

    return v4

    .line 98
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":[Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":[Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v51    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/CustomCursor;>;"
    :sswitch_3
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IProviderCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IProviderCallBack;

    move-result-object v38

    .line 104
    .local v38, "_arg1":Landroid/content/IProviderCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 105
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1, v7}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;I)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v4, 0x1

    return v4

    .line 111
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v38    # "_arg1":Landroid/content/IProviderCallBack;
    :sswitch_4
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ISyncCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncCallBack;

    move-result-object v36

    .line 115
    .local v36, "_arg0":Landroid/content/ISyncCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 116
    .local v37, "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerSync(Landroid/content/ISyncCallBack;I)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v4, 0x1

    return v4

    .line 122
    .end local v36    # "_arg0":Landroid/content/ISyncCallBack;
    .end local v37    # "_arg1":I
    :sswitch_5
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ICommandExeCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ICommandExeCallBack;

    move-result-object v33

    .line 126
    .local v33, "_arg0":Landroid/content/ICommandExeCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 127
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerCommandExe(Landroid/content/ICommandExeCallBack;I)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v4, 0x1

    return v4

    .line 133
    .end local v33    # "_arg0":Landroid/content/ICommandExeCallBack;
    .end local v37    # "_arg1":I
    :sswitch_6
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 136
    .local v13, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->switchPersona(I)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v4, 0x1

    return v4

    .line 142
    .end local v13    # "_arg0":I
    :sswitch_7
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    sget-object v4, Landroid/app/Command;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/Command;

    .line 150
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->executeCommandForPersona(Landroid/app/Command;)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v4, 0x1

    return v4

    .line 148
    :cond_1
    const/16 v32, 0x0

    .local v32, "_arg0":Landroid/app/Command;
    goto :goto_1

    .line 156
    .end local v32    # "_arg0":Landroid/app/Command;
    :sswitch_8
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 159
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v45

    .line 160
    .restart local v45    # "_result":Landroid/content/CustomCursor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v45, :cond_2

    .line 162
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v4, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    :goto_2
    const/4 v4, 0x1

    return v4

    .line 166
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 172
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Landroid/content/CustomCursor;
    :sswitch_9
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;

    move-result-object v48

    .line 174
    .local v48, "_result":Landroid/content/IRCPGlobalContactsDir;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v48, :cond_3

    invoke-interface/range {v48 .. v48}, Landroid/content/IRCPGlobalContactsDir;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 176
    const/4 v4, 0x1

    return v4

    .line 175
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 180
    .end local v48    # "_result":Landroid/content/IRCPGlobalContactsDir;
    :sswitch_a
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IRCPGlobalContactsDir$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPGlobalContactsDir;

    move-result-object v34

    .line 184
    .local v34, "_arg0":Landroid/content/IRCPGlobalContactsDir;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 185
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;I)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v4, 0x1

    return v4

    .line 191
    .end local v34    # "_arg0":Landroid/content/IRCPGlobalContactsDir;
    .end local v37    # "_arg1":I
    :sswitch_b
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IRCPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterface;

    move-result-object v35

    .line 195
    .local v35, "_arg0":Landroid/content/IRCPInterface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 196
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerRCPInterface(Landroid/content/IRCPInterface;I)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    const/4 v4, 0x1

    return v4

    .line 202
    .end local v35    # "_arg0":Landroid/content/IRCPInterface;
    .end local v37    # "_arg1":I
    :sswitch_c
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v49

    .line 204
    .local v49, "_result":Landroid/content/IRCPInterface;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v49, :cond_4

    invoke-interface/range {v49 .. v49}, Landroid/content/IRCPInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 206
    const/4 v4, 0x1

    return v4

    .line 205
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 210
    .end local v49    # "_result":Landroid/content/IRCPInterface;
    :sswitch_d
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 214
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 216
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 218
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 219
    .local v16, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v6, v7, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v44

    .line 220
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v4, 0x1

    return v4

    .line 226
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v13    # "_arg0":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v44    # "_result":I
    :sswitch_e
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 230
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 232
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 234
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 235
    .restart local v16    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v6, v7, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v44

    .line 236
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v4, 0x1

    return v4

    .line 242
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v13    # "_arg0":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v44    # "_result":I
    :sswitch_f
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 246
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 248
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 250
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 251
    .restart local v16    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v6, v7, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v44

    .line 252
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v4, 0x1

    return v4

    .line 258
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v13    # "_arg0":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v44    # "_result":I
    :sswitch_10
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 262
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v40

    .line 264
    .local v40, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v42

    .line 265
    .local v42, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v42

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v46

    .line 266
    .local v46, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    move-object/from16 v0, p3

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 268
    const/4 v4, 0x1

    return v4

    .line 272
    .end local v13    # "_arg0":I
    .end local v40    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v42    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v46    # "_result":J
    :sswitch_11
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 276
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 278
    .restart local v37    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 280
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 281
    .local v43, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v43

    invoke-virtual {v0, v5, v1, v7, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v44

    .line 282
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v4, 0x1

    return v4

    .line 288
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v37    # "_arg1":I
    .end local v43    # "_arg3":I
    .end local v44    # "_result":I
    :sswitch_12
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 292
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 293
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->isFileExist(Ljava/lang/String;I)Z

    move-result v53

    .line 294
    .local v53, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v53, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v4, 0x1

    return v4

    .line 295
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 300
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":I
    .end local v53    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 305
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v52

    .line 306
    .local v52, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 308
    const/4 v4, 0x1

    return v4

    .line 312
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":I
    .end local v52    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_14
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 316
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 317
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->deleteFile(Ljava/lang/String;I)Z

    move-result v53

    .line 318
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v53, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v4, 0x1

    return v4

    .line 319
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 324
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":I
    .end local v53    # "_result":Z
    :sswitch_15
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 328
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 329
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v50

    .line 330
    .local v50, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v50, :cond_7

    .line 332
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v4, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 338
    :goto_7
    const/4 v4, 0x1

    return v4

    .line 336
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 342
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":I
    .end local v50    # "_result":Landroid/os/Bundle;
    :sswitch_16
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 346
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 348
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 350
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 352
    .restart local v16    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 354
    .local v17, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 356
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 358
    .local v20, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v22, 0x1

    .local v22, "_arg7":Z
    :goto_8
    move-object/from16 v12, p0

    move-object v14, v6

    move v15, v7

    .line 359
    invoke-virtual/range {v12 .. v22}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v44

    .line 360
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v4, 0x1

    return v4

    .line 358
    .end local v22    # "_arg7":Z
    .end local v44    # "_result":I
    :cond_8
    const/16 v22, 0x0

    goto :goto_8

    .line 366
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v13    # "_arg0":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":J
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":J
    :sswitch_17
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 369
    .local v30, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->cancelCopyChunks(J)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    const/4 v4, 0x1

    return v4

    .line 375
    .end local v30    # "_arg0":J
    :sswitch_18
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 379
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRunnableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRunnableCallback;

    move-result-object v39

    .line 381
    .local v39, "_arg1":Landroid/os/IRunnableCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 382
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1, v7}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;I)Z

    move-result v53

    .line 383
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v53, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v4, 0x1

    return v4

    .line 384
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 389
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v39    # "_arg1":Landroid/os/IRunnableCallback;
    .end local v53    # "_result":Z
    :sswitch_19
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 393
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 395
    .restart local v37    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 396
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/Bundle;

    .line 401
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v41

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v50

    .line 402
    .restart local v50    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v50, :cond_b

    .line 404
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v4, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 410
    :goto_b
    const/4 v4, 0x1

    return v4

    .line 399
    .end local v50    # "_result":Landroid/os/Bundle;
    :cond_a
    const/16 v41, 0x0

    .local v41, "_arg2":Landroid/os/Bundle;
    goto :goto_a

    .line 408
    .end local v41    # "_arg2":Landroid/os/Bundle;
    .restart local v50    # "_result":Landroid/os/Bundle;
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 414
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":I
    .end local v50    # "_result":Landroid/os/Bundle;
    :sswitch_1a
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 418
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRunnableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRunnableCallback;

    move-result-object v39

    .line 419
    .restart local v39    # "_arg1":Landroid/os/IRunnableCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerMonitorCb(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v53

    .line 420
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v53, :cond_c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v4, 0x1

    return v4

    .line 421
    :cond_c
    const/4 v4, 0x0

    goto :goto_c

    .line 426
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":Landroid/os/IRunnableCallback;
    .end local v53    # "_result":Z
    :sswitch_1b
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 430
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 432
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 434
    .local v26, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 435
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Bitmap;

    .line 441
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 443
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .local v29, "_arg5":Ljava/lang/String;
    move-object/from16 v23, p0

    move/from16 v24, v13

    move-object/from16 v25, v6

    move-object/from16 v28, v9

    .line 444
    invoke-virtual/range {v23 .. v29}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    const/4 v4, 0x1

    return v4

    .line 438
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v29    # "_arg5":Ljava/lang/String;
    :cond_d
    const/16 v27, 0x0

    .local v27, "_arg3":Landroid/graphics/Bitmap;
    goto :goto_d

    .line 450
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg0":I
    .end local v26    # "_arg2":Ljava/lang/String;
    .end local v27    # "_arg3":Landroid/graphics/Bitmap;
    :sswitch_1c
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 454
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 455
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->doSyncForSyncer(Ljava/lang/String;I)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v4, 0x1

    return v4

    .line 461
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":I
    :sswitch_1d
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 465
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 466
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerObserver(Ljava/lang/String;I)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    const/4 v4, 0x1

    return v4

    .line 472
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":I
    :sswitch_1e
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 476
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 477
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->unRegisterObserver(Ljava/lang/String;I)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    const/4 v4, 0x1

    return v4

    .line 483
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":I
    :sswitch_1f
    const-string/jumbo v4, "com.samsung.android.knox.ISemRemoteContentManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 487
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v40

    .line 489
    .restart local v40    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v42

    .line 491
    .restart local v42    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 492
    .restart local v43    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide v46

    .line 493
    .restart local v46    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    move-object/from16 v0, p3

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 495
    const/4 v4, 0x1

    return v4

    .line 39
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
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
