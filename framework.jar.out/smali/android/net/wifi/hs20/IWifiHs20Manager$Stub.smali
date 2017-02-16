.class public abstract Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;
.super Landroid/os/Binder;
.source "IWifiHs20Manager.java"

# interfaces
.implements Landroid/net/wifi/hs20/IWifiHs20Manager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/IWifiHs20Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hs20/IWifiHs20Manager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.hs20.IWifiHs20Manager"

.field static final TRANSACTION_cancelSubscription:I = 0x4

.field static final TRANSACTION_deleteSubscription:I = 0x9

.field static final TRANSACTION_enableSubscription:I = 0x8

.field static final TRANSACTION_getCertID:I = 0xf

.field static final TRANSACTION_getCredentials:I = 0xc

.field static final TRANSACTION_getDMData:I = 0xa

.field static final TRANSACTION_getFormatType:I = 0xd

.field static final TRANSACTION_getKeyPass:I = 0xe

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getSubscribedSpList:I = 0x6

.field static final TRANSACTION_handleDMRequest:I = 0xb

.field static final TRANSACTION_isSubscrptionInProgress:I = 0x3

.field static final TRANSACTION_modifyPasspointCred:I = 0x10

.field static final TRANSACTION_startOSUProcess:I = 0x2

.field static final TRANSACTION_startPolicyUpdate:I = 0x5

.field static final TRANSACTION_updateCredPriorities:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/hs20/IWifiHs20Manager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/hs20/IWifiHs20Manager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/wifi/hs20/IWifiHs20Manager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 241
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    .line 46
    :sswitch_0
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v14, 0x1

    return v14

    .line 51
    :sswitch_1
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v10

    .line 53
    .local v10, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v10, :cond_0

    .line 55
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v14}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    :goto_0
    const/4 v14, 0x1

    return v14

    .line 59
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v10    # "_result":Landroid/os/Messenger;
    :sswitch_2
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1

    .line 68
    sget-object v14, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .line 73
    :goto_1
    invoke-virtual {p0, v2}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->startOSUProcess(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v14, 0x1

    return v14

    .line 71
    :cond_1
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    goto :goto_1

    .line 79
    .end local v2    # "_arg0":Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    :sswitch_3
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->isSubscrptionInProgress()Z

    move-result v12

    .line 81
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v12, :cond_2

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v14, 0x1

    return v14

    .line 82
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 87
    .end local v12    # "_result":Z
    :sswitch_4
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->cancelSubscription()V

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    const/4 v14, 0x1

    return v14

    .line 94
    :sswitch_5
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->startPolicyUpdate(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v14, 0x1

    return v14

    .line 103
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getSubscribedSpList()Ljava/util/List;

    move-result-object v11

    .line 105
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hs20/WifiHs20SubscribedSp;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 107
    const/4 v14, 0x1

    return v14

    .line 111
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hs20/WifiHs20SubscribedSp;>;"
    :sswitch_7
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    .line 114
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 119
    :goto_3
    invoke-virtual {p0, v3}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->updateCredPriorities(Landroid/os/Bundle;)Z

    move-result v12

    .line 120
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v12, :cond_4

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v14, 0x1

    return v14

    .line 117
    .end local v12    # "_result":Z
    :cond_3
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 121
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .restart local v12    # "_result":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    .line 126
    .end local v12    # "_result":Z
    :sswitch_8
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_5

    const/4 v6, 0x1

    .line 131
    .local v6, "_arg1":Z
    :goto_5
    invoke-virtual {p0, v1, v6}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->enableSubscription(IZ)Z

    move-result v12

    .line 132
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v12, :cond_6

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v14, 0x1

    return v14

    .line 130
    .end local v6    # "_arg1":Z
    .end local v12    # "_result":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .line 133
    .restart local v6    # "_arg1":Z
    .restart local v12    # "_result":Z
    :cond_6
    const/4 v14, 0x0

    goto :goto_6

    .line 138
    .end local v1    # "_arg0":I
    .end local v6    # "_arg1":Z
    .end local v12    # "_result":Z
    :sswitch_9
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->deleteSubscription(I)Z

    move-result v12

    .line 142
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v12, :cond_7

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v14, 0x1

    return v14

    .line 143
    :cond_7
    const/4 v14, 0x0

    goto :goto_7

    .line 148
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_a
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_8

    .line 151
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 156
    :goto_8
    invoke-virtual {p0, v3}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getDMData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 157
    .local v9, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v9, :cond_9

    .line 159
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 165
    :goto_9
    const/4 v14, 0x1

    return v14

    .line 154
    .end local v9    # "_result":Landroid/os/Bundle;
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Bundle;
    goto :goto_8

    .line 163
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .restart local v9    # "_result":Landroid/os/Bundle;
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 169
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_b
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_a

    .line 172
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 177
    :goto_a
    invoke-virtual {p0, v3}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->handleDMRequest(Landroid/os/Bundle;)Z

    move-result v12

    .line 178
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v12, :cond_b

    const/4 v14, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v14, 0x1

    return v14

    .line 175
    .end local v12    # "_result":Z
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Bundle;
    goto :goto_a

    .line 179
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .restart local v12    # "_result":Z
    :cond_b
    const/4 v14, 0x0

    goto :goto_b

    .line 184
    .end local v12    # "_result":Z
    :sswitch_c
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 190
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v5, v7}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getCredentials(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 192
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v9, :cond_c

    .line 194
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    :goto_c
    const/4 v14, 0x1

    return v14

    .line 198
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 204
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_d
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 207
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getFormatType(Ljava/lang/String;)I

    move-result v8

    .line 208
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v14, 0x1

    return v14

    .line 214
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_e
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getKeyPass()[B

    move-result-object v13

    .line 216
    .local v13, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 218
    const/4 v14, 0x1

    return v14

    .line 222
    .end local v13    # "_result":[B
    :sswitch_f
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getCertID(I)I

    move-result v8

    .line 226
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v14, 0x1

    return v14

    .line 232
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_10
    const-string/jumbo v14, "android.net.wifi.hs20.IWifiHs20Manager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->modifyPasspointCred(Ljava/lang/String;)I

    move-result v8

    .line 236
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v14, 0x1

    return v14

    .line 42
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
