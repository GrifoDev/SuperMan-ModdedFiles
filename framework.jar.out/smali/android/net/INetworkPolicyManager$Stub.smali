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

.field static final TRANSACTION_addUidPolicy:I = 0x2

.field static final TRANSACTION_checkFireWallPermission:I = 0x1a

.field static final TRANSACTION_factoryReset:I = 0x13

.field static final TRANSACTION_getFirewallRuleMobileData:I = 0x18

.field static final TRANSACTION_getFirewallRuleWifi:I = 0x19

.field static final TRANSACTION_getMeteredIfaces:I = 0x1c

.field static final TRANSACTION_getNetworkPolicies:I = 0xa

.field static final TRANSACTION_getNetworkQuotaInfo:I = 0x11

.field static final TRANSACTION_getRestrictBackground:I = 0xd

.field static final TRANSACTION_getRestrictBackgroundByCaller:I = 0xf

.field static final TRANSACTION_getRoamingReduction:I = 0x1e

.field static final TRANSACTION_getUidPolicy:I = 0x4

.field static final TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final TRANSACTION_isNetworkMetered:I = 0x12

.field static final TRANSACTION_isUidForeground:I = 0x6

.field static final TRANSACTION_onScreenStateChanged:I = 0x1f

.field static final TRANSACTION_onTetheringChanged:I = 0xe

.field static final TRANSACTION_registerListener:I = 0x7

.field static final TRANSACTION_removeUidPolicy:I = 0x3

.field static final TRANSACTION_setDeviceIdleMode:I = 0x10

.field static final TRANSACTION_setFirewallRuleMobileData:I = 0x14

.field static final TRANSACTION_setFirewallRuleMobileDataMap:I = 0x16

.field static final TRANSACTION_setFirewallRuleWifi:I = 0x15

.field static final TRANSACTION_setFirewallRuleWifiMap:I = 0x17

.field static final TRANSACTION_setNetworkPolicies:I = 0x9

.field static final TRANSACTION_setRestrictBackground:I = 0xc

.field static final TRANSACTION_setRestrictBackgroundByPco:I = 0x1b

.field static final TRANSACTION_setRoamingReduction:I = 0x1d

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_snoozeLimit:I = 0xb

.field static final TRANSACTION_unregisterListener:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.INetworkPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.net.INetworkPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/INetworkPolicyManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v22

    return v22

    :sswitch_0
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_1
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_2
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_3
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_4
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :sswitch_5
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v22, 0x1

    return v22

    :sswitch_6
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->isUidForeground(I)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_0

    const/16 v22, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    :sswitch_7
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_8
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_9
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v22, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/net/NetworkPolicy;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_a
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v22, 0x1

    return v22

    :sswitch_b
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1

    sget-object v22, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkTemplate;

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :sswitch_c
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_2

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :sswitch_d
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_3

    const/16 v22, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_3
    const/16 v22, 0x0

    goto :goto_3

    :sswitch_e
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_4

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Landroid/net/INetworkPolicyManager$Stub;->onTetheringChanged(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    :sswitch_f
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundByCaller()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :sswitch_10
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_5

    const/4 v9, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    :sswitch_11
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_6

    sget-object v22, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkState;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_7

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/16 v22, 0x1

    return v22

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    :cond_7
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :sswitch_12
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_8

    sget-object v22, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkState;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/INetworkPolicyManager$Stub;->isNetworkMetered(Landroid/net/NetworkState;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_9

    const/16 v22, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    :cond_9
    const/16 v22, 0x0

    goto :goto_9

    :sswitch_13
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_14
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_a

    const/4 v13, 0x1

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileData(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_a
    const/4 v13, 0x0

    goto :goto_a

    :sswitch_15
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_b

    const/4 v13, 0x1

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifi(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_b
    const/4 v13, 0x0

    goto :goto_b

    :sswitch_16
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileDataMap(Ljava/util/Map;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_17
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifiMap(Ljava/util/Map;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_18
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleMobileData(I)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_c

    const/16 v22, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_c
    const/16 v22, 0x0

    goto :goto_c

    :sswitch_19
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleWifi(I)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_d

    const/16 v22, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_d
    const/16 v22, 0x0

    goto :goto_d

    :sswitch_1a
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_e

    const/4 v9, 0x1

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12, v14}, Landroid/net/INetworkPolicyManager$Stub;->checkFireWallPermission(ZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_e
    const/4 v9, 0x0

    goto :goto_e

    :sswitch_1b
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_f

    const/4 v9, 0x1

    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackgroundByPco(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_f
    const/4 v9, 0x0

    goto :goto_f

    :sswitch_1c
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getMeteredIfaces()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_1d
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/net/INetworkPolicyManager$Stub;->setRoamingReduction(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_1e
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getRoamingReduction(I)I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :sswitch_1f
    const-string/jumbo v22, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_10

    const/4 v9, 0x1

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Landroid/net/INetworkPolicyManager$Stub;->onScreenStateChanged(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_10
    const/4 v9, 0x0

    goto :goto_10

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
