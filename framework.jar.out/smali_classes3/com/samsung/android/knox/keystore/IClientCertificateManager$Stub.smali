.class public abstract Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;
.super Landroid/os/Binder;
.source "IClientCertificateManager.java"

# interfaces
.implements Lcom/samsung/android/knox/keystore/IClientCertificateManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/IClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.keystore.IClientCertificateManager"

.field static final TRANSACTION_addPackageToExemptList:I = 0x14

.field static final TRANSACTION_deleteCCMProfile:I = 0x7

.field static final TRANSACTION_deleteCSRProfile:I = 0xf

.field static final TRANSACTION_deleteCertificate:I = 0x9

.field static final TRANSACTION_generateCSR:I = 0x1

.field static final TRANSACTION_generateCSRUsingByteArray:I = 0x11

.field static final TRANSACTION_generateCSRUsingString:I = 0x12

.field static final TRANSACTION_generateCSRUsingTemplate:I = 0x10

.field static final TRANSACTION_generateKeyPair:I = 0x4

.field static final TRANSACTION_getAliasesForCaller:I = 0x19

.field static final TRANSACTION_getAliasesForPackage:I = 0x25

.field static final TRANSACTION_getAliasesForWiFi:I = 0x1b

.field static final TRANSACTION_getCCMProfile:I = 0x6

.field static final TRANSACTION_getCCMVersion:I = 0x16

.field static final TRANSACTION_getCertificateAliases:I = 0x20

.field static final TRANSACTION_getCertificateAliasesHavingPrivateKey:I = 0x21

.field static final TRANSACTION_getDefaultCertificateAlias:I = 0x18

.field static final TRANSACTION_getKeyChainMarkedAliases:I = 0x1e

.field static final TRANSACTION_getSlotIdForCaller:I = 0xc

.field static final TRANSACTION_getSlotIdForPackage:I = 0xd

.field static final TRANSACTION_hasGrant:I = 0x2a

.field static final TRANSACTION_hasGrantWithCxt:I = 0x2b

.field static final TRANSACTION_insertOrUpdateCCMProfile:I = 0x23

.field static final TRANSACTION_insertOrUpdateCertificateProfile:I = 0x24

.field static final TRANSACTION_installCertificate:I = 0x8

.field static final TRANSACTION_installKeyPair:I = 0x27

.field static final TRANSACTION_installObject:I = 0x3

.field static final TRANSACTION_installObjectWithProfile:I = 0x22

.field static final TRANSACTION_installObjectWithType:I = 0x17

.field static final TRANSACTION_isAccessControlMethodPassword:I = 0x1a

.field static final TRANSACTION_isCCMEmptyForKeyChain:I = 0x1f

.field static final TRANSACTION_isCCMPolicyEnabledByAdmin:I = 0x13

.field static final TRANSACTION_isCCMPolicyEnabledForCaller:I = 0xa

.field static final TRANSACTION_isCCMPolicyEnabledForPackage:I = 0xb

.field static final TRANSACTION_isKeyChainMarkedAlias:I = 0x1c

.field static final TRANSACTION_keychainMarkedReset:I = 0x1d

.field static final TRANSACTION_notifyLicenseStatus:I = 0x2d

.field static final TRANSACTION_registerForDefaultCertificate:I = 0x2

.field static final TRANSACTION_removeKeyPair:I = 0x28

.field static final TRANSACTION_removePackageFromExemptList:I = 0x15

.field static final TRANSACTION_setCCMProfile:I = 0x5

.field static final TRANSACTION_setCSRProfile:I = 0xe

.field static final TRANSACTION_setDefaultCCMProfile:I = 0x26

.field static final TRANSACTION_setGrant:I = 0x29

.field static final TRANSACTION_updateDBdata:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.knox.keystore.IClientCertificateManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.knox.keystore.IClientCertificateManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 54
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
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSR(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v11, p0

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->registerForDefaultCertificate(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v46

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    :sswitch_3
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v26, 0x1

    :goto_5
    move-object/from16 v17, p0

    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-virtual/range {v17 .. v26}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObject(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I

    move-result v46

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    const/16 v26, 0x0

    goto :goto_5

    :sswitch_4
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v30

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)[B

    move-result-object v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    return v4

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    :sswitch_5
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/samsung/android/knox/keystore/CCMProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/knox/keystore/CCMProfile;

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    :cond_8
    const/16 v42, 0x0

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    :sswitch_6
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;

    move-result-object v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_b

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/knox/keystore/CCMProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    const/4 v4, 0x1

    return v4

    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    :sswitch_7
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_c
    const/4 v5, 0x0

    goto :goto_c

    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    :sswitch_8
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/knox/keystore/CertificateProfile;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v34

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v34

    invoke-virtual {v0, v5, v1, v2, v8}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_10

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    :cond_f
    const/16 v29, 0x0

    goto :goto_f

    :cond_10
    const/4 v4, 0x0

    goto :goto_10

    :sswitch_9
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_12

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_11
    const/4 v5, 0x0

    goto :goto_11

    :cond_12
    const/4 v4, 0x0

    goto :goto_12

    :sswitch_a
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_14

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_13
    const/4 v5, 0x0

    goto :goto_13

    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    :sswitch_b
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_16

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_15
    const/4 v5, 0x0

    goto :goto_15

    :cond_16
    const/4 v4, 0x0

    goto :goto_16

    :sswitch_c
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getSlotIdForCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v48

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    return v4

    :cond_17
    const/4 v5, 0x0

    goto :goto_17

    :sswitch_d
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1, v7}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getSlotIdForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v48

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    return v4

    :cond_18
    const/4 v5, 0x0

    goto :goto_18

    :sswitch_e
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/samsung/android/knox/keystore/CSRProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/samsung/android/knox/keystore/CSRProfile;

    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setCSRProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CSRProfile;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_1b

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_19
    const/4 v5, 0x0

    goto :goto_19

    :cond_1a
    const/16 v43, 0x0

    goto :goto_1a

    :cond_1b
    const/4 v4, 0x0

    goto :goto_1b

    :sswitch_f
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCSRProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_1d

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_1c
    const/4 v5, 0x0

    goto :goto_1c

    :cond_1d
    const/4 v4, 0x0

    goto :goto_1d

    :sswitch_10
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1, v7, v8}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingTemplate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    return v4

    :cond_1e
    const/4 v5, 0x0

    goto :goto_1e

    :sswitch_11
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v17, p0

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    invoke-virtual/range {v17 .. v22}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingByteArray(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    return v4

    :cond_1f
    const/4 v5, 0x0

    goto :goto_1f

    :sswitch_12
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v27, p0

    move-object/from16 v28, v5

    move-object/from16 v29, v19

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v32, v22

    invoke-virtual/range {v27 .. v32}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    return v4

    :cond_20
    const/4 v5, 0x0

    goto :goto_20

    :sswitch_13
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_21

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_21
    const/4 v4, 0x0

    goto :goto_21

    :sswitch_14
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->addPackageToExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_23

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_22
    const/4 v5, 0x0

    goto :goto_22

    :cond_23
    const/4 v4, 0x0

    goto :goto_23

    :sswitch_15
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->removePackageFromExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_25

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_24
    const/4 v5, 0x0

    goto :goto_24

    :cond_25
    const/4 v4, 0x0

    goto :goto_25

    :sswitch_16
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCCMVersion()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_17
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v27, p0

    move-object/from16 v28, v5

    move-object/from16 v29, v19

    move-object/from16 v31, v21

    move-object/from16 v32, v9

    invoke-virtual/range {v27 .. v32}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObjectWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I[BLjava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_27

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_26
    const/4 v5, 0x0

    goto :goto_26

    :cond_27
    const/4 v4, 0x0

    goto :goto_27

    :sswitch_18
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getDefaultCertificateAlias()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_19
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForCaller(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v51

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :cond_28
    const/4 v5, 0x0

    goto :goto_28

    :sswitch_1a
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_2a

    const/4 v4, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_29
    const/4 v5, 0x0

    goto :goto_29

    :cond_2a
    const/4 v4, 0x0

    goto :goto_2a

    :sswitch_1b
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v51

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1c
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isKeyChainMarkedAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_2c

    const/4 v4, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_2b
    const/4 v5, 0x0

    goto :goto_2b

    :cond_2c
    const/4 v4, 0x0

    goto :goto_2c

    :sswitch_1d
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_2e

    const/4 v4, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_2d
    const/4 v5, 0x0

    goto :goto_2d

    :cond_2e
    const/4 v4, 0x0

    goto :goto_2e

    :sswitch_1e
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v51

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :cond_2f
    const/4 v5, 0x0

    goto :goto_2f

    :sswitch_1f
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMEmptyForKeyChain(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_31

    const/4 v4, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_30
    const/4 v5, 0x0

    goto :goto_30

    :cond_31
    const/4 v4, 0x0

    goto :goto_31

    :sswitch_20
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCertificateAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v51

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :cond_32
    const/4 v5, 0x0

    goto :goto_32

    :sswitch_21
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCertificateAliasesHavingPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v51

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :cond_33
    const/4 v5, 0x0

    goto :goto_33

    :sswitch_22
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    sget-object v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/knox/keystore/CertificateProfile;

    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v27, p0

    move-object/from16 v28, v5

    move-object/from16 v31, v21

    move-object/from16 v32, v9

    invoke-virtual/range {v27 .. v32}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_36

    const/4 v4, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_34
    const/4 v5, 0x0

    goto :goto_34

    :cond_35
    const/16 v29, 0x0

    goto :goto_35

    :cond_36
    const/4 v4, 0x0

    goto :goto_36

    :sswitch_23
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    sget-object v4, Lcom/samsung/android/knox/keystore/CCMProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/knox/keystore/CCMProfile;

    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->insertOrUpdateCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_39

    const/4 v4, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_37
    const/4 v5, 0x0

    goto :goto_37

    :cond_38
    const/16 v42, 0x0

    goto :goto_38

    :cond_39
    const/4 v4, 0x0

    goto :goto_39

    :sswitch_24
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    sget-object v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/knox/keystore/CertificateProfile;

    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->insertOrUpdateCertificateProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_3c

    const/4 v4, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_3a
    const/4 v5, 0x0

    goto :goto_3a

    :cond_3b
    const/16 v29, 0x0

    goto :goto_3b

    :cond_3c
    const/4 v4, 0x0

    goto :goto_3c

    :sswitch_25
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v51

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :cond_3d
    const/4 v5, 0x0

    goto :goto_3d

    :sswitch_26
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setDefaultCCMProfile()Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_3e

    const/4 v4, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_3e
    const/4 v4, 0x0

    goto :goto_3e

    :sswitch_27
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v34

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v31, p0

    move-object/from16 v32, v5

    move-object/from16 v35, v21

    move-object/from16 v36, v9

    invoke-virtual/range {v31 .. v37}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installKeyPair(Lcom/samsung/android/knox/ContextInfo;[B[B[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_40

    const/4 v4, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_3f
    const/4 v5, 0x0

    goto :goto_3f

    :cond_40
    const/4 v4, 0x0

    goto :goto_40

    :sswitch_28
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->removeKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_42

    const/4 v4, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_41
    const/4 v5, 0x0

    goto :goto_41

    :cond_42
    const/4 v4, 0x0

    goto :goto_42

    :sswitch_29
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43

    const/16 v45, 0x1

    :goto_43
    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v19

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setGrant(ILjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_43
    const/16 v45, 0x0

    goto :goto_43

    :sswitch_2a
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->hasGrant(Ljava/lang/String;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_44

    const/4 v4, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_44
    const/4 v4, 0x0

    goto :goto_44

    :sswitch_2b
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/samsung/android/knox/ContextInfo;

    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->hasGrantWithCxt(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_46

    const/4 v4, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_45
    const/16 v41, 0x0

    goto :goto_45

    :cond_46
    const/4 v4, 0x0

    goto :goto_46

    :sswitch_2c
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47

    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/ContentValues;

    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_48

    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/ContentValues;

    :goto_48
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->updateDBdata(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_49

    const/4 v4, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_47
    const/16 v40, 0x0

    goto :goto_47

    :cond_48
    const/16 v44, 0x0

    goto :goto_48

    :cond_49
    const/4 v4, 0x0

    goto :goto_49

    :sswitch_2d
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->notifyLicenseStatus()Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_4a

    const/4 v4, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_4a
    const/4 v4, 0x0

    goto :goto_4a

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
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
