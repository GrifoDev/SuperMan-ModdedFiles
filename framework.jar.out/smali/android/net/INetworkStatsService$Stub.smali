.class public abstract Landroid/net/INetworkStatsService$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsService.java"

# interfaces
.implements Landroid/net/INetworkStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsService"

.field static final TRANSACTION_advisePersistThreshold:I = 0xa

.field static final TRANSACTION_forceUpdate:I = 0x9

.field static final TRANSACTION_forceUpdateIfaces:I = 0x8

.field static final TRANSACTION_getDataLayerSnapshotForUid:I = 0x4

.field static final TRANSACTION_getMobileIfaces:I = 0x5

.field static final TRANSACTION_getNetworkStatsVideoCall:I = 0xf

.field static final TRANSACTION_getNetworkTotalBytes:I = 0x3

.field static final TRANSACTION_incrementOperationCount:I = 0x6

.field static final TRANSACTION_isDuringVideoCall:I = 0x10

.field static final TRANSACTION_openSession:I = 0x1

.field static final TRANSACTION_openSessionForUsageStats:I = 0x2

.field static final TRANSACTION_registerUsageCallback:I = 0xb

.field static final TRANSACTION_setUidForeground:I = 0x7

.field static final TRANSACTION_startNetworkStatsOnPorts:I = 0xd

.field static final TRANSACTION_stopNetworkStatsOnPorts:I = 0xe

.field static final TRANSACTION_unregisterUsageRequest:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.net.INetworkStatsService"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;
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
    const-string/jumbo v1, "android.net.INetworkStatsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkStatsService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/INetworkStatsService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkStatsService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkStatsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 28
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

    .line 253
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v24

    .line 50
    .local v24, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Landroid/net/INetworkStatsSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 52
    const/4 v4, 0x1

    return v4

    .line 51
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 56
    .end local v24    # "_result":Landroid/net/INetworkStatsSession;
    :sswitch_2
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 59
    .local v14, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/INetworkStatsService$Stub;->openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v24

    .line 60
    .restart local v24    # "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Landroid/net/INetworkStatsSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 62
    const/4 v4, 0x1

    return v4

    .line 61
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 66
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v24    # "_result":Landroid/net/INetworkStatsSession;
    :sswitch_3
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 75
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 77
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .local v8, "_arg2":J
    move-object/from16 v4, p0

    .line 78
    invoke-virtual/range {v4 .. v9}, Landroid/net/INetworkStatsService$Stub;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v22

    .line 79
    .local v22, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    const/4 v4, 0x1

    return v4

    .line 72
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v22    # "_result":J
    :cond_2
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_2

    .line 85
    .end local v5    # "_arg0":Landroid/net/NetworkTemplate;
    :sswitch_4
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 88
    .local v10, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/INetworkStatsService$Stub;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    move-result-object v25

    .line 89
    .local v25, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v25, :cond_3

    .line 91
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    :goto_3
    const/4 v4, 0x1

    return v4

    .line 95
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 101
    .end local v10    # "_arg0":I
    .end local v25    # "_result":Landroid/net/NetworkStats;
    :sswitch_5
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v27

    .line 103
    .local v27, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 105
    const/4 v4, 0x1

    return v4

    .line 109
    .end local v27    # "_result":[Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 113
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 115
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 116
    .local v18, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v15, v1}, Landroid/net/INetworkStatsService$Stub;->incrementOperationCount(III)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v4, 0x1

    return v4

    .line 122
    .end local v10    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v18    # "_arg2":I
    :sswitch_7
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 126
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v17, 0x1

    .line 127
    .local v17, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Landroid/net/INetworkStatsService$Stub;->setUidForeground(IZ)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v4, 0x1

    return v4

    .line 126
    .end local v17    # "_arg1":Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    .line 133
    .end local v10    # "_arg0":I
    :sswitch_8
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->forceUpdateIfaces()V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v4, 0x1

    return v4

    .line 140
    :sswitch_9
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->forceUpdate()V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    const/4 v4, 0x1

    return v4

    .line 147
    :sswitch_a
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 150
    .local v12, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/net/INetworkStatsService$Stub;->advisePersistThreshold(J)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v4, 0x1

    return v4

    .line 156
    .end local v12    # "_arg0":J
    :sswitch_b
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 160
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 161
    sget-object v4, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/DataUsageRequest;

    .line 167
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 168
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Messenger;

    .line 174
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 175
    .local v20, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/net/INetworkStatsService$Stub;->registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;

    move-result-object v21

    .line 176
    .local v21, "_result":Landroid/net/DataUsageRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v21, :cond_7

    .line 178
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/DataUsageRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    :goto_7
    const/4 v4, 0x1

    return v4

    .line 164
    .end local v20    # "_arg3":Landroid/os/IBinder;
    .end local v21    # "_result":Landroid/net/DataUsageRequest;
    :cond_5
    const/16 v16, 0x0

    .local v16, "_arg1":Landroid/net/DataUsageRequest;
    goto :goto_5

    .line 171
    .end local v16    # "_arg1":Landroid/net/DataUsageRequest;
    :cond_6
    const/16 v19, 0x0

    .local v19, "_arg2":Landroid/os/Messenger;
    goto :goto_6

    .line 182
    .end local v19    # "_arg2":Landroid/os/Messenger;
    .restart local v20    # "_arg3":Landroid/os/IBinder;
    .restart local v21    # "_result":Landroid/net/DataUsageRequest;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 188
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg3":Landroid/os/IBinder;
    .end local v21    # "_result":Landroid/net/DataUsageRequest;
    :sswitch_c
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 191
    sget-object v4, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/DataUsageRequest;

    .line 196
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/INetworkStatsService$Stub;->unregisterUsageRequest(Landroid/net/DataUsageRequest;)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    const/4 v4, 0x1

    return v4

    .line 194
    :cond_8
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/net/DataUsageRequest;
    goto :goto_8

    .line 202
    .end local v11    # "_arg0":Landroid/net/DataUsageRequest;
    :sswitch_d
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 206
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 208
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 209
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v15, v1}, Landroid/net/INetworkStatsService$Stub;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v4, 0x1

    return v4

    .line 215
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":I
    .end local v18    # "_arg2":I
    :sswitch_e
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 219
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 221
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 222
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v15, v1}, Landroid/net/INetworkStatsService$Stub;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/4 v4, 0x1

    return v4

    .line 228
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":I
    .end local v18    # "_arg2":I
    :sswitch_f
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 232
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 233
    .restart local v15    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Landroid/net/INetworkStatsService$Stub;->getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;

    move-result-object v25

    .line 234
    .restart local v25    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v25, :cond_9

    .line 236
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 242
    :goto_9
    const/4 v4, 0x1

    return v4

    .line 240
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 246
    .end local v10    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v25    # "_result":Landroid/net/NetworkStats;
    :sswitch_10
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->isDuringVideoCall()Z

    move-result v26

    .line 248
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v26, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v4, 0x1

    return v4

    .line 249
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
