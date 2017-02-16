.class public abstract Landroid/net/INetworkPolicyManager$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyManager"

.field static final TRANSACTION_addRestrictBackgroundWhitelistedUid:I = 0x12

.field static final TRANSACTION_addUidPolicy:I = 0x2

.field static final TRANSACTION_checkFireWallPermission:I = 0x20

.field static final TRANSACTION_factoryReset:I = 0x19

.field static final TRANSACTION_getFirewallRuleMobileData:I = 0x1e

.field static final TRANSACTION_getFirewallRuleWifi:I = 0x1f

.field static final TRANSACTION_getMeteredIfaces:I = 0x7

.field static final TRANSACTION_getNetworkPolicies:I = 0xd

.field static final TRANSACTION_getNetworkQuotaInfo:I = 0x17

.field static final TRANSACTION_getRestrictBackground:I = 0x10

.field static final TRANSACTION_getRestrictBackgroundByCaller:I = 0x15

.field static final TRANSACTION_getRestrictBackgroundWhitelistedUids:I = 0x14

.field static final TRANSACTION_getRoamingReduction:I = 0x22

.field static final TRANSACTION_getUidPolicy:I = 0x4

.field static final TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final TRANSACTION_isNetworkMetered:I = 0x18

.field static final TRANSACTION_isUidForeground:I = 0x8

.field static final TRANSACTION_onScreenStateChanged:I = 0x23

.field static final TRANSACTION_onTetheringChanged:I = 0x11

.field static final TRANSACTION_registerListener:I = 0xa

.field static final TRANSACTION_removeRestrictBackgroundWhitelistedUid:I = 0x13

.field static final TRANSACTION_removeUidPolicy:I = 0x3

.field static final TRANSACTION_setConnectivityListener:I = 0x9

.field static final TRANSACTION_setDeviceIdleMode:I = 0x16

.field static final TRANSACTION_setFirewallRuleMobileData:I = 0x1a

.field static final TRANSACTION_setFirewallRuleMobileDataMap:I = 0x1c

.field static final TRANSACTION_setFirewallRuleWifi:I = 0x1b

.field static final TRANSACTION_setFirewallRuleWifiMap:I = 0x1d

.field static final TRANSACTION_setNetworkPolicies:I = 0xc

.field static final TRANSACTION_setRestrictBackground:I = 0xf

.field static final TRANSACTION_setRestrictBackgroundByPco:I = 0x6

.field static final TRANSACTION_setRoamingReduction:I = 0x21

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_snoozeLimit:I = 0xe

.field static final TRANSACTION_unregisterListener:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.INetworkPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.INetworkPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/INetworkPolicyManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 412
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v21

    return v21

    .line 47
    :sswitch_0
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/16 v21, 0x1

    return v21

    .line 52
    :sswitch_1
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 57
    .local v11, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/16 v21, 0x1

    return v21

    .line 63
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_2
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 68
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/16 v21, 0x1

    return v21

    .line 74
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_3
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 79
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/16 v21, 0x1

    return v21

    .line 85
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_4
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    move-result v14

    .line 89
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/16 v21, 0x1

    return v21

    .line 95
    .end local v3    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_5
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v17

    .line 99
    .local v17, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 101
    const/16 v21, 0x1

    return v21

    .line 105
    .end local v3    # "_arg0":I
    .end local v17    # "_result":[I
    :sswitch_6
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_0

    const/4 v9, 0x1

    .line 108
    .local v9, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackgroundByPco(Z)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/16 v21, 0x1

    return v21

    .line 107
    .end local v9    # "_arg0":Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 114
    :sswitch_7
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getMeteredIfaces()[Ljava/lang/String;

    move-result-object v19

    .line 116
    .local v19, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 118
    const/16 v21, 0x1

    return v21

    .line 122
    .end local v19    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->isUidForeground(I)Z

    move-result v16

    .line 126
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v16, :cond_1

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/16 v21, 0x1

    return v21

    .line 127
    :cond_1
    const/16 v21, 0x0

    goto :goto_1

    .line 132
    .end local v3    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_9
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v4

    .line 135
    .local v4, "_arg0":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/INetworkPolicyManager$Stub;->setConnectivityListener(Landroid/net/INetworkPolicyListener;)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/16 v21, 0x1

    return v21

    .line 141
    .end local v4    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_a
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v4

    .line 144
    .restart local v4    # "_arg0":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    const/16 v21, 0x1

    return v21

    .line 150
    .end local v4    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_b
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v4

    .line 153
    .restart local v4    # "_arg0":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/16 v21, 0x1

    return v21

    .line 159
    .end local v4    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_c
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    sget-object v21, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/net/NetworkPolicy;

    .line 162
    .local v10, "_arg0":[Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    const/16 v21, 0x1

    return v21

    .line 168
    .end local v10    # "_arg0":[Landroid/net/NetworkPolicy;
    :sswitch_d
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v18

    .line 172
    .local v18, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 174
    const/16 v21, 0x1

    return v21

    .line 178
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":[Landroid/net/NetworkPolicy;
    :sswitch_e
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_2

    .line 181
    sget-object v21, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkTemplate;

    .line 186
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/16 v21, 0x1

    return v21

    .line 184
    :cond_2
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_2

    .line 192
    .end local v6    # "_arg0":Landroid/net/NetworkTemplate;
    :sswitch_f
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_3

    const/4 v9, 0x1

    .line 195
    .restart local v9    # "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/16 v21, 0x1

    return v21

    .line 194
    .end local v9    # "_arg0":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 201
    :sswitch_10
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    move-result v16

    .line 203
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v16, :cond_4

    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/16 v21, 0x1

    return v21

    .line 204
    :cond_4
    const/16 v21, 0x0

    goto :goto_4

    .line 209
    .end local v16    # "_result":Z
    :sswitch_11
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 213
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_5

    const/4 v13, 0x1

    .line 214
    .local v13, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Landroid/net/INetworkPolicyManager$Stub;->onTetheringChanged(Ljava/lang/String;Z)V

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/16 v21, 0x1

    return v21

    .line 213
    .end local v13    # "_arg1":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 220
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->addRestrictBackgroundWhitelistedUid(I)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/16 v21, 0x1

    return v21

    .line 229
    .end local v3    # "_arg0":I
    :sswitch_13
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 232
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->removeRestrictBackgroundWhitelistedUid(I)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    const/16 v21, 0x1

    return v21

    .line 238
    .end local v3    # "_arg0":I
    :sswitch_14
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundWhitelistedUids()[I

    move-result-object v17

    .line 240
    .restart local v17    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 242
    const/16 v21, 0x1

    return v21

    .line 246
    .end local v17    # "_result":[I
    :sswitch_15
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundByCaller()I

    move-result v14

    .line 248
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/16 v21, 0x1

    return v21

    .line 254
    .end local v14    # "_result":I
    :sswitch_16
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_6

    const/4 v9, 0x1

    .line 257
    .restart local v9    # "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/16 v21, 0x1

    return v21

    .line 256
    .end local v9    # "_arg0":Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    .line 263
    :sswitch_17
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_7

    .line 266
    sget-object v21, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkState;

    .line 271
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;

    move-result-object v15

    .line 272
    .local v15, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v15, :cond_8

    .line 274
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 280
    :goto_8
    const/16 v21, 0x1

    return v21

    .line 269
    .end local v15    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_7
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/NetworkState;
    goto :goto_7

    .line 278
    .end local v5    # "_arg0":Landroid/net/NetworkState;
    .restart local v15    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_8
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 284
    .end local v15    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_18
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_9

    .line 287
    sget-object v21, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkState;

    .line 292
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/INetworkPolicyManager$Stub;->isNetworkMetered(Landroid/net/NetworkState;)Z

    move-result v16

    .line 293
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v16, :cond_a

    const/16 v21, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/16 v21, 0x1

    return v21

    .line 290
    .end local v16    # "_result":Z
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/NetworkState;
    goto :goto_9

    .line 294
    .end local v5    # "_arg0":Landroid/net/NetworkState;
    .restart local v16    # "_result":Z
    :cond_a
    const/16 v21, 0x0

    goto :goto_a

    .line 299
    .end local v16    # "_result":Z
    :sswitch_19
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 302
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    const/16 v21, 0x1

    return v21

    .line 308
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 312
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_b

    const/4 v13, 0x1

    .line 313
    .restart local v13    # "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileData(IZ)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/16 v21, 0x1

    return v21

    .line 312
    .end local v13    # "_arg1":Z
    :cond_b
    const/4 v13, 0x0

    goto :goto_b

    .line 319
    .end local v3    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 323
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_c

    const/4 v13, 0x1

    .line 324
    .restart local v13    # "_arg1":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifi(IZ)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/16 v21, 0x1

    return v21

    .line 323
    .end local v13    # "_arg1":Z
    :cond_c
    const/4 v13, 0x0

    goto :goto_c

    .line 330
    .end local v3    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    .line 333
    .local v20, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v8

    .line 334
    .local v8, "_arg0":Ljava/util/Map;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileDataMap(Ljava/util/Map;)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/16 v21, 0x1

    return v21

    .line 340
    .end local v8    # "_arg0":Ljava/util/Map;
    .end local v20    # "cl":Ljava/lang/ClassLoader;
    :sswitch_1d
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    .line 343
    .restart local v20    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v8

    .line 344
    .restart local v8    # "_arg0":Ljava/util/Map;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifiMap(Ljava/util/Map;)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    const/16 v21, 0x1

    return v21

    .line 350
    .end local v8    # "_arg0":Ljava/util/Map;
    .end local v20    # "cl":Ljava/lang/ClassLoader;
    :sswitch_1e
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 353
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleMobileData(I)Z

    move-result v16

    .line 354
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    if-eqz v16, :cond_d

    const/16 v21, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/16 v21, 0x1

    return v21

    .line 355
    :cond_d
    const/16 v21, 0x0

    goto :goto_d

    .line 360
    .end local v3    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_1f
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 363
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleWifi(I)Z

    move-result v16

    .line 364
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v16, :cond_e

    const/16 v21, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    const/16 v21, 0x1

    return v21

    .line 365
    :cond_e
    const/16 v21, 0x0

    goto :goto_e

    .line 370
    .end local v3    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_20
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_f

    const/4 v9, 0x1

    .line 374
    .local v9, "_arg0":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 375
    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Landroid/net/INetworkPolicyManager$Stub;->checkFireWallPermission(ZLjava/lang/String;)V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    const/16 v21, 0x1

    return v21

    .line 372
    .end local v9    # "_arg0":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_f
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Z
    goto :goto_f

    .line 381
    .end local v9    # "_arg0":Z
    :sswitch_21
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 385
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 386
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/net/INetworkPolicyManager$Stub;->setRoamingReduction(II)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/16 v21, 0x1

    return v21

    .line 392
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_22
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 395
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getRoamingReduction(I)I

    move-result v14

    .line 396
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    const/16 v21, 0x1

    return v21

    .line 402
    .end local v3    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_23
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_10

    const/4 v9, 0x1

    .line 406
    .restart local v9    # "_arg0":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 407
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Landroid/net/INetworkPolicyManager$Stub;->onScreenStateChanged(ZI)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    const/16 v21, 0x1

    return v21

    .line 404
    .end local v9    # "_arg0":Z
    .end local v11    # "_arg1":I
    :cond_10
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Z
    goto :goto_10

    .line 43
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
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
