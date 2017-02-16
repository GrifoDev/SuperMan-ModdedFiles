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

.field static final TRANSACTION_addPackageToExemptList:I = 0x11

.field static final TRANSACTION_deleteCCMProfile:I = 0x6

.field static final TRANSACTION_deleteCSRProfile:I = 0xe

.field static final TRANSACTION_deleteCertificate:I = 0x8

.field static final TRANSACTION_generateCSR:I = 0x1

.field static final TRANSACTION_generateCSRUsingTemplate:I = 0xf

.field static final TRANSACTION_getAliasesForCaller:I = 0x16

.field static final TRANSACTION_getAliasesForPackage:I = 0x22

.field static final TRANSACTION_getAliasesForWiFi:I = 0x18

.field static final TRANSACTION_getCCMProfile:I = 0x5

.field static final TRANSACTION_getCCMVersion:I = 0x13

.field static final TRANSACTION_getCertificateAliases:I = 0x1d

.field static final TRANSACTION_getCertificateAliasesHavingPrivateKey:I = 0x1e

.field static final TRANSACTION_getDefaultCertificateAlias:I = 0x15

.field static final TRANSACTION_getKeyChainMarkedAliases:I = 0x1b

.field static final TRANSACTION_getSlotIdForCaller:I = 0xb

.field static final TRANSACTION_getSlotIdForPackage:I = 0xc

.field static final TRANSACTION_insertOrUpdateCCMProfile:I = 0x20

.field static final TRANSACTION_insertOrUpdateCertificateProfile:I = 0x21

.field static final TRANSACTION_installCertificate:I = 0x7

.field static final TRANSACTION_installObject:I = 0x3

.field static final TRANSACTION_installObjectWithProfile:I = 0x1f

.field static final TRANSACTION_installObjectWithType:I = 0x14

.field static final TRANSACTION_isAccessControlMethodPassword:I = 0x17

.field static final TRANSACTION_isCCMEmptyForKeyChain:I = 0x1c

.field static final TRANSACTION_isCCMPolicyEnabledByAdmin:I = 0x10

.field static final TRANSACTION_isCCMPolicyEnabledForCaller:I = 0x9

.field static final TRANSACTION_isCCMPolicyEnabledForPackage:I = 0xa

.field static final TRANSACTION_isKeyChainMarkedAlias:I = 0x19

.field static final TRANSACTION_keychainMarkedReset:I = 0x1a

.field static final TRANSACTION_registerForDefaultCertificate:I = 0x2

.field static final TRANSACTION_removePackageFromExemptList:I = 0x12

.field static final TRANSACTION_setCCMProfile:I = 0x4

.field static final TRANSACTION_setCSRProfile:I = 0xd

.field static final TRANSACTION_setDefaultCCMProfile:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.samsung.android.knox.keystore.IClientCertificateManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
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
    const-string/jumbo v1, "com.samsung.android.knox.keystore.IClientCertificateManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 45
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

    .line 668
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 46
    :sswitch_0
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    return v4

    .line 51
    :sswitch_1
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 60
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 62
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v10, 0x1

    .local v10, "_arg5":Z
    :goto_1
    move-object/from16 v4, p0

    .line 69
    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSR(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v44

    .line 70
    .local v44, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 72
    const/4 v4, 0x1

    return v4

    .line 57
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Z
    .end local v44    # "_result":[B
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_0

    .line 68
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 76
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 85
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 87
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 89
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 91
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v16, 0x1

    .local v16, "_arg4":Z
    :goto_3
    move-object/from16 v11, p0

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    .line 92
    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->registerForDefaultCertificate(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v37

    .line 93
    .local v37, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v4, 0x1

    return v4

    .line 82
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Z
    .end local v37    # "_result":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2

    .line 91
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    .line 99
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 108
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 110
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 112
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 114
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 116
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 118
    .local v23, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    .line 120
    .local v24, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 122
    .local v25, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v26, 0x1

    .local v26, "_arg8":Z
    :goto_5
    move-object/from16 v17, p0

    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    .line 123
    invoke-virtual/range {v17 .. v26}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObject(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I

    move-result v37

    .line 124
    .restart local v37    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v4, 0x1

    return v4

    .line 105
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg5":I
    .end local v24    # "_arg6":[B
    .end local v25    # "_arg7":Ljava/lang/String;
    .end local v26    # "_arg8":Z
    .end local v37    # "_result":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_4

    .line 122
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v23    # "_arg5":I
    .restart local v24    # "_arg6":[B
    .restart local v25    # "_arg7":Ljava/lang/String;
    :cond_5
    const/16 v26, 0x0

    goto :goto_5

    .line 130
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg5":I
    .end local v24    # "_arg6":[B
    .end local v25    # "_arg7":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 133
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 139
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 140
    sget-object v4, Lcom/samsung/android/knox/keystore/CCMProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/knox/keystore/CCMProfile;

    .line 145
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z

    move-result v43

    .line 146
    .local v43, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v43, :cond_8

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v4, 0x1

    return v4

    .line 136
    .end local v43    # "_result":Z
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_6

    .line 143
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_7
    const/16 v34, 0x0

    .local v34, "_arg1":Lcom/samsung/android/knox/keystore/CCMProfile;
    goto :goto_7

    .line 147
    .end local v34    # "_arg1":Lcom/samsung/android/knox/keystore/CCMProfile;
    .restart local v43    # "_result":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 152
    .end local v43    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 155
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 160
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;

    move-result-object v40

    .line 161
    .local v40, "_result":Lcom/samsung/android/knox/keystore/CCMProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v40, :cond_a

    .line 163
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v4, 0x1

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/knox/keystore/CCMProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 169
    :goto_a
    const/4 v4, 0x1

    return v4

    .line 158
    .end local v40    # "_result":Lcom/samsung/android/knox/keystore/CCMProfile;
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_9

    .line 167
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v40    # "_result":Lcom/samsung/android/knox/keystore/CCMProfile;
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 173
    .end local v40    # "_result":Lcom/samsung/android/knox/keystore/CCMProfile;
    :sswitch_6
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 176
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 181
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v43

    .line 182
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v43, :cond_c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v4, 0x1

    return v4

    .line 179
    .end local v43    # "_result":Z
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_b

    .line 183
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v43    # "_result":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_c

    .line 188
    .end local v43    # "_result":Z
    :sswitch_7
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 191
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 197
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 198
    sget-object v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/knox/keystore/CertificateProfile;

    .line 204
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v36

    .line 206
    .local v36, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 207
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v36

    invoke-virtual {v0, v5, v1, v2, v8}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v43

    .line 208
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v43, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v4, 0x1

    return v4

    .line 194
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v36    # "_arg2":[B
    .end local v43    # "_result":Z
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_d

    .line 201
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_e
    const/16 v29, 0x0

    .local v29, "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    goto :goto_e

    .line 209
    .end local v29    # "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v36    # "_arg2":[B
    .restart local v43    # "_result":Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .line 214
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v36    # "_arg2":[B
    .end local v43    # "_result":Z
    :sswitch_8
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 217
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 223
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 224
    .local v19, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v43

    .line 225
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v43, :cond_11

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v4, 0x1

    return v4

    .line 220
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :cond_10
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_10

    .line 226
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v43    # "_result":Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 231
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 234
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 239
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v43

    .line 240
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v43, :cond_13

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v4, 0x1

    return v4

    .line 237
    .end local v43    # "_result":Z
    :cond_12
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_12

    .line 241
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v43    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 246
    .end local v43    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 249
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 255
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 256
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v43

    .line 257
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v43, :cond_15

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v4, 0x1

    return v4

    .line 252
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_14

    .line 258
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v43    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    .line 263
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 266
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 272
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 273
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getSlotIdForCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v38

    .line 274
    .local v38, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    const/4 v4, 0x1

    return v4

    .line 269
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":J
    :cond_16
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_16

    .line 280
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_c
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 283
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 289
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 291
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 292
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1, v7}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getSlotIdForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v38

    .line 293
    .restart local v38    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 295
    const/4 v4, 0x1

    return v4

    .line 286
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":J
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_17

    .line 299
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_d
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    .line 302
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 308
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 309
    sget-object v4, Lcom/samsung/android/knox/keystore/CSRProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/samsung/android/knox/keystore/CSRProfile;

    .line 314
    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setCSRProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CSRProfile;)Z

    move-result v43

    .line 315
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v43, :cond_1a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v4, 0x1

    return v4

    .line 305
    .end local v43    # "_result":Z
    :cond_18
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_18

    .line 312
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_19
    const/16 v35, 0x0

    .local v35, "_arg1":Lcom/samsung/android/knox/keystore/CSRProfile;
    goto :goto_19

    .line 316
    .end local v35    # "_arg1":Lcom/samsung/android/knox/keystore/CSRProfile;
    .restart local v43    # "_result":Z
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    .line 321
    .end local v43    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 324
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 330
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 331
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCSRProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v43

    .line 332
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v43, :cond_1c

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v4, 0x1

    return v4

    .line 327
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :cond_1b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_1b

    .line 333
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v43    # "_result":Z
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1c

    .line 338
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 341
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 347
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 349
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 351
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 352
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1, v7, v8}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingTemplate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v44

    .line 353
    .restart local v44    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 355
    const/4 v4, 0x1

    return v4

    .line 344
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":[B
    :cond_1d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_1d

    .line 359
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_10
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 362
    .local v33, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v43

    .line 363
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v43, :cond_1e

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v4, 0x1

    return v4

    .line 364
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1e

    .line 369
    .end local v33    # "_arg0":I
    .end local v43    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 372
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 378
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 379
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->addPackageToExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v43

    .line 380
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    if-eqz v43, :cond_20

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const/4 v4, 0x1

    return v4

    .line 375
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :cond_1f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_1f

    .line 381
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v43    # "_result":Z
    :cond_20
    const/4 v4, 0x0

    goto :goto_20

    .line 386
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    .line 389
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 395
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 396
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->removePackageFromExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v43

    .line 397
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v43, :cond_22

    const/4 v4, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/4 v4, 0x1

    return v4

    .line 392
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :cond_21
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_21

    .line 398
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v43    # "_result":Z
    :cond_22
    const/4 v4, 0x0

    goto :goto_22

    .line 403
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCCMVersion()Ljava/lang/String;

    move-result-object v41

    .line 405
    .local v41, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    const/4 v4, 0x1

    return v4

    .line 411
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    .line 414
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 420
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 422
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 424
    .local v20, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 426
    .local v21, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v17, p0

    move-object/from16 v18, v5

    move-object/from16 v22, v9

    .line 427
    invoke-virtual/range {v17 .. v22}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObjectWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I[BLjava/lang/String;)Z

    move-result v43

    .line 428
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v43, :cond_24

    const/4 v4, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v4, 0x1

    return v4

    .line 417
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v21    # "_arg3":[B
    .end local v43    # "_result":Z
    :cond_23
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_23

    .line 429
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v20    # "_arg2":I
    .restart local v21    # "_arg3":[B
    .restart local v43    # "_result":Z
    :cond_24
    const/4 v4, 0x0

    goto :goto_24

    .line 434
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v21    # "_arg3":[B
    .end local v43    # "_result":Z
    :sswitch_15
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getDefaultCertificateAlias()Ljava/lang/String;

    move-result-object v41

    .line 436
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    const/4 v4, 0x1

    return v4

    .line 442
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    .line 445
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 450
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForCaller(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v42

    .line 451
    .local v42, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 453
    const/4 v4, 0x1

    return v4

    .line 448
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_25
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_25

    .line 457
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_17
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 460
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 465
    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v43

    .line 466
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v43, :cond_27

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/4 v4, 0x1

    return v4

    .line 463
    .end local v43    # "_result":Z
    :cond_26
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_26

    .line 467
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v43    # "_result":Z
    :cond_27
    const/4 v4, 0x0

    goto :goto_27

    .line 472
    .end local v43    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v42

    .line 474
    .restart local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 476
    const/4 v4, 0x1

    return v4

    .line 480
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_19
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 483
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 489
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 490
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isKeyChainMarkedAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v43

    .line 491
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v43, :cond_29

    const/4 v4, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/4 v4, 0x1

    return v4

    .line 486
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :cond_28
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_28

    .line 492
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v43    # "_result":Z
    :cond_29
    const/4 v4, 0x0

    goto :goto_29

    .line 497
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_1a
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    .line 500
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 505
    :goto_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v43

    .line 506
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v43, :cond_2b

    const/4 v4, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v4, 0x1

    return v4

    .line 503
    .end local v43    # "_result":Z
    :cond_2a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2a

    .line 507
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v43    # "_result":Z
    :cond_2b
    const/4 v4, 0x0

    goto :goto_2b

    .line 512
    .end local v43    # "_result":Z
    :sswitch_1b
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 515
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 520
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v42

    .line 521
    .restart local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 523
    const/4 v4, 0x1

    return v4

    .line 518
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2c

    .line 527
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_1c
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 530
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 535
    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMEmptyForKeyChain(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v43

    .line 536
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    if-eqz v43, :cond_2e

    const/4 v4, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    const/4 v4, 0x1

    return v4

    .line 533
    .end local v43    # "_result":Z
    :cond_2d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2d

    .line 537
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v43    # "_result":Z
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2e

    .line 542
    .end local v43    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    .line 545
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 550
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCertificateAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v42

    .line 551
    .restart local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 553
    const/4 v4, 0x1

    return v4

    .line 548
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2f

    .line 557
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_1e
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    .line 560
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 565
    :goto_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCertificateAliasesHavingPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v42

    .line 566
    .restart local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 568
    const/4 v4, 0x1

    return v4

    .line 563
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_30
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_30

    .line 572
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_1f
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    .line 575
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 581
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    .line 582
    sget-object v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/knox/keystore/CertificateProfile;

    .line 588
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 590
    .restart local v20    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 592
    .restart local v21    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v27, p0

    move-object/from16 v28, v5

    move/from16 v30, v20

    move-object/from16 v31, v21

    move-object/from16 v32, v9

    .line 593
    invoke-virtual/range {v27 .. v32}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v43

    .line 594
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    if-eqz v43, :cond_33

    const/4 v4, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v4, 0x1

    return v4

    .line 578
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v21    # "_arg3":[B
    .end local v43    # "_result":Z
    :cond_31
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_31

    .line 585
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_32
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    goto :goto_32

    .line 595
    .end local v29    # "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v20    # "_arg2":I
    .restart local v21    # "_arg3":[B
    .restart local v43    # "_result":Z
    :cond_33
    const/4 v4, 0x0

    goto :goto_33

    .line 600
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v21    # "_arg3":[B
    .end local v43    # "_result":Z
    :sswitch_20
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    .line 603
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 609
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    .line 610
    sget-object v4, Lcom/samsung/android/knox/keystore/CCMProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/knox/keystore/CCMProfile;

    .line 615
    :goto_35
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->insertOrUpdateCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z

    move-result v43

    .line 616
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    if-eqz v43, :cond_36

    const/4 v4, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    const/4 v4, 0x1

    return v4

    .line 606
    .end local v43    # "_result":Z
    :cond_34
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_34

    .line 613
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_35
    const/16 v34, 0x0

    .restart local v34    # "_arg1":Lcom/samsung/android/knox/keystore/CCMProfile;
    goto :goto_35

    .line 617
    .end local v34    # "_arg1":Lcom/samsung/android/knox/keystore/CCMProfile;
    .restart local v43    # "_result":Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_36

    .line 622
    .end local v43    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    .line 625
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 631
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    .line 632
    sget-object v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/knox/keystore/CertificateProfile;

    .line 637
    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->insertOrUpdateCertificateProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;)Z

    move-result v43

    .line 638
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    if-eqz v43, :cond_39

    const/4 v4, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    const/4 v4, 0x1

    return v4

    .line 628
    .end local v43    # "_result":Z
    :cond_37
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_37

    .line 635
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_38
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    goto :goto_38

    .line 639
    .end local v29    # "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    .restart local v43    # "_result":Z
    :cond_39
    const/4 v4, 0x0

    goto :goto_39

    .line 644
    .end local v43    # "_result":Z
    :sswitch_22
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 647
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 653
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 654
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v42

    .line 655
    .restart local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 657
    const/4 v4, 0x1

    return v4

    .line 650
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_3a

    .line 661
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_23
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setDefaultCCMProfile()Z

    move-result v43

    .line 663
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    if-eqz v43, :cond_3b

    const/4 v4, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    const/4 v4, 0x1

    return v4

    .line 664
    :cond_3b
    const/4 v4, 0x0

    goto :goto_3b

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
