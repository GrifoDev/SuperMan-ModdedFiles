.class public abstract Landroid/security/IKeystoreServiceMDFPP$Stub;
.super Landroid/os/Binder;
.source "IKeystoreServiceMDFPP.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreServiceMDFPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.IKeystoreService"

.field static final TRANSACTION_abort:I = 0x1f

.field static final TRANSACTION_addAuthToken:I = 0x21

.field static final TRANSACTION_addRngEntropy:I = 0x17

.field static final TRANSACTION_attestKey:I = 0x24

.field static final TRANSACTION_begin:I = 0x1c

.field static final TRANSACTION_clear_uid:I = 0x16

.field static final TRANSACTION_del:I = 0x4

.field static final TRANSACTION_duplicate:I = 0x14

.field static final TRANSACTION_exist:I = 0x5

.field static final TRANSACTION_exportKey:I = 0x1b

.field static final TRANSACTION_finish:I = 0x1e

.field static final TRANSACTION_generate:I = 0xc

.field static final TRANSACTION_generateKey:I = 0x18

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_getKeyCharacteristics:I = 0x19

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_getState_MDFPP:I = 0x26

.field static final TRANSACTION_get_pubkey:I = 0x10

.field static final TRANSACTION_getmtime:I = 0x13

.field static final TRANSACTION_grant:I = 0x11

.field static final TRANSACTION_importKey:I = 0x1a

.field static final TRANSACTION_import_key:I = 0xd

.field static final TRANSACTION_insert:I = 0x3

.field static final TRANSACTION_isEmpty:I = 0xb

.field static final TRANSACTION_isOperationAuthorized:I = 0x20

.field static final TRANSACTION_is_hardware_backed:I = 0x15

.field static final TRANSACTION_list:I = 0x6

.field static final TRANSACTION_lock:I = 0x9

.field static final TRANSACTION_migrate_MDFPP_keystore:I = 0x25

.field static final TRANSACTION_onUserAdded:I = 0x22

.field static final TRANSACTION_onUserAdded_MDFPP:I = 0x28

.field static final TRANSACTION_onUserPasswordChanged:I = 0x8

.field static final TRANSACTION_onUserRemoved:I = 0x23

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_reset_MDFPP:I = 0x27

.field static final TRANSACTION_sign:I = 0xe

.field static final TRANSACTION_ungrant:I = 0x12

.field static final TRANSACTION_unlock:I = 0xa

.field static final TRANSACTION_update:I = 0x1d

.field static final TRANSACTION_verify:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string/jumbo v0, "android.security.IKeystoreService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 60
    if-nez p0, :cond_0

    .line 61
    return-object v1

    .line 63
    :cond_0
    const-string/jumbo v1, "android.security.IKeystoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IKeystoreService;

    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Landroid/security/IKeystoreService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 67
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 73
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 60
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
    .line 79
    sparse-switch p1, :sswitch_data_0

    .line 716
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 83
    :sswitch_0
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    const/4 v4, 0x1

    return v4

    .line 88
    :sswitch_1
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 91
    .local v45, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->getState(I)I

    move-result v52

    .line 92
    .local v52, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v4, 0x1

    return v4

    .line 98
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_2
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 103
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreServiceMDFPP$Stub;->get(Ljava/lang/String;I)[B

    move-result-object v58

    .line 104
    .local v58, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 106
    const/4 v4, 0x1

    return v4

    .line 110
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v58    # "_result":[B
    :sswitch_3
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 114
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v49

    .line 116
    .local v49, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 118
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 119
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/security/IKeystoreServiceMDFPP$Stub;->insert(Ljava/lang/String;[BII)I

    move-result v52

    .line 120
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v4, 0x1

    return v4

    .line 126
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v49    # "_arg1":[B
    .end local v52    # "_result":I
    :sswitch_4
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 130
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 131
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreServiceMDFPP$Stub;->del(Ljava/lang/String;I)I

    move-result v52

    .line 132
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v4, 0x1

    return v4

    .line 138
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v52    # "_result":I
    :sswitch_5
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 142
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 143
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreServiceMDFPP$Stub;->exist(Ljava/lang/String;I)I

    move-result v52

    .line 144
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v4, 0x1

    return v4

    .line 150
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v52    # "_result":I
    :sswitch_6
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 154
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 155
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreServiceMDFPP$Stub;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v59

    .line 156
    .local v59, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 158
    const/4 v4, 0x1

    return v4

    .line 162
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeystoreServiceMDFPP$Stub;->reset()I

    move-result v52

    .line 164
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v4, 0x1

    return v4

    .line 170
    .end local v52    # "_result":I
    :sswitch_8
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 174
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 175
    .local v39, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreServiceMDFPP$Stub;->onUserPasswordChanged(ILjava/lang/String;)I

    move-result v52

    .line 176
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v4, 0x1

    return v4

    .line 182
    .end local v39    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_9
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 185
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->lock(I)I

    move-result v52

    .line 186
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v4, 0x1

    return v4

    .line 192
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_a
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 196
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 197
    .restart local v39    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreServiceMDFPP$Stub;->unlock(ILjava/lang/String;)I

    move-result v52

    .line 198
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v4, 0x1

    return v4

    .line 204
    .end local v39    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 207
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->isEmpty(I)I

    move-result v52

    .line 208
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v4, 0x1

    return v4

    .line 214
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 218
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 220
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 222
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 224
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 226
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    sget-object v4, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/security/KeystoreArguments;

    :goto_0
    move-object/from16 v4, p0

    .line 232
    invoke-virtual/range {v4 .. v10}, Landroid/security/IKeystoreServiceMDFPP$Stub;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result v52

    .line 233
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v4, 0x1

    return v4

    .line 230
    .end local v52    # "_result":I
    :cond_0
    const/4 v10, 0x0

    .local v10, "_arg5":Landroid/security/KeystoreArguments;
    goto :goto_0

    .line 239
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/security/KeystoreArguments;
    :sswitch_d
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 243
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v49

    .line 245
    .restart local v49    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 247
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 248
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/security/IKeystoreServiceMDFPP$Stub;->import_key(Ljava/lang/String;[BII)I

    move-result v52

    .line 249
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v4, 0x1

    return v4

    .line 255
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v49    # "_arg1":[B
    .end local v52    # "_result":I
    :sswitch_e
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 259
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v49

    .line 260
    .restart local v49    # "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->sign(Ljava/lang/String;[B)[B

    move-result-object v58

    .line 261
    .restart local v58    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 263
    const/4 v4, 0x1

    return v4

    .line 267
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":[B
    .end local v58    # "_result":[B
    :sswitch_f
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 271
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v49

    .line 273
    .restart local v49    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 274
    .local v14, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1, v14}, Landroid/security/IKeystoreServiceMDFPP$Stub;->verify(Ljava/lang/String;[B[B)I

    move-result v52

    .line 275
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v4, 0x1

    return v4

    .line 281
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg2":[B
    .end local v49    # "_arg1":[B
    .end local v52    # "_result":I
    :sswitch_10
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 284
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/security/IKeystoreServiceMDFPP$Stub;->get_pubkey(Ljava/lang/String;)[B

    move-result-object v58

    .line 285
    .restart local v58    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 287
    const/4 v4, 0x1

    return v4

    .line 291
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":[B
    :sswitch_11
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 295
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 296
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreServiceMDFPP$Stub;->grant(Ljava/lang/String;I)I

    move-result v52

    .line 297
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v4, 0x1

    return v4

    .line 303
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v52    # "_result":I
    :sswitch_12
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 307
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 308
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreServiceMDFPP$Stub;->ungrant(Ljava/lang/String;I)I

    move-result v52

    .line 309
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v4, 0x1

    return v4

    .line 315
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v52    # "_result":I
    :sswitch_13
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 319
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 320
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreServiceMDFPP$Stub;->getmtime(Ljava/lang/String;I)J

    move-result-wide v54

    .line 321
    .local v54, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    move-object/from16 v0, p3

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    const/4 v4, 0x1

    return v4

    .line 327
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v54    # "_result":J
    :sswitch_14
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 331
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 333
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v51

    .line 335
    .local v51, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 336
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/security/IKeystoreServiceMDFPP$Stub;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v52

    .line 337
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v4, 0x1

    return v4

    .line 343
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v51    # "_arg2":Ljava/lang/String;
    .end local v52    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 346
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/security/IKeystoreServiceMDFPP$Stub;->is_hardware_backed(Ljava/lang/String;)I

    move-result v52

    .line 347
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v4, 0x1

    return v4

    .line 353
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v52    # "_result":I
    :sswitch_16
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v46

    .line 356
    .local v46, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreServiceMDFPP$Stub;->clear_uid(J)I

    move-result v52

    .line 357
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v4, 0x1

    return v4

    .line 363
    .end local v46    # "_arg0":J
    .end local v52    # "_result":I
    :sswitch_17
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v48

    .line 366
    .local v48, "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->addRngEntropy([B)I

    move-result v52

    .line 367
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    const/4 v4, 0x1

    return v4

    .line 373
    .end local v48    # "_arg0":[B
    .end local v52    # "_result":I
    :sswitch_18
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 377
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 378
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    .line 384
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 386
    .restart local v14    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 388
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 390
    .restart local v9    # "_arg4":I
    new-instance v17, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct/range {v17 .. v17}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v17, "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v11, p0

    move-object v12, v5

    move v15, v8

    move/from16 v16, v9

    .line 391
    invoke-virtual/range {v11 .. v17}, Landroid/security/IKeystoreServiceMDFPP$Stub;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v52

    .line 392
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    if-eqz v17, :cond_2

    .line 395
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 401
    :goto_2
    const/4 v4, 0x1

    return v4

    .line 381
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":[B
    .end local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :cond_1
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_1

    .line 399
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v14    # "_arg2":[B
    .restart local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v52    # "_result":I
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 405
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":[B
    .end local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :sswitch_19
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 409
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 410
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/security/keymaster/KeymasterBlob;

    .line 416
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 417
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/security/keymaster/KeymasterBlob;

    .line 423
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 425
    .restart local v8    # "_arg3":I
    new-instance v23, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct/range {v23 .. v23}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v23, "_arg4":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move/from16 v22, v8

    .line 426
    invoke-virtual/range {v18 .. v23}, Landroid/security/IKeystoreServiceMDFPP$Stub;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v52

    .line 427
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    if-eqz v23, :cond_5

    .line 430
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    const/4 v4, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 436
    :goto_5
    const/4 v4, 0x1

    return v4

    .line 413
    .end local v8    # "_arg3":I
    .end local v23    # "_arg4":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :cond_3
    const/16 v20, 0x0

    .local v20, "_arg1":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_3

    .line 420
    .end local v20    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    :cond_4
    const/16 v21, 0x0

    .local v21, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_4

    .line 434
    .end local v21    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .restart local v8    # "_arg3":I
    .restart local v23    # "_arg4":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v52    # "_result":I
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 440
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v23    # "_arg4":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :sswitch_1a
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 444
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 445
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    .line 451
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 453
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v28

    .line 455
    .local v28, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 457
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 459
    .local v30, "_arg5":I
    new-instance v31, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct/range {v31 .. v31}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v31, "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v24, p0

    move-object/from16 v25, v5

    move-object/from16 v26, v13

    move/from16 v27, v7

    move/from16 v29, v9

    .line 460
    invoke-virtual/range {v24 .. v31}, Landroid/security/IKeystoreServiceMDFPP$Stub;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v52

    .line 461
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    if-eqz v31, :cond_7

    .line 464
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    const/4 v4, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 470
    :goto_7
    const/4 v4, 0x1

    return v4

    .line 448
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v28    # "_arg3":[B
    .end local v30    # "_arg5":I
    .end local v31    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_6

    .line 468
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v7    # "_arg2":I
    .restart local v9    # "_arg4":I
    .restart local v28    # "_arg3":[B
    .restart local v30    # "_arg5":I
    .restart local v31    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v52    # "_result":I
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 474
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v28    # "_arg3":[B
    .end local v30    # "_arg5":I
    .end local v31    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :sswitch_1b
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 478
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 480
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 481
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/security/keymaster/KeymasterBlob;

    .line 487
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 488
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/security/keymaster/KeymasterBlob;

    .line 494
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v32, p0

    move-object/from16 v33, v5

    move/from16 v34, v6

    move-object/from16 v35, v21

    move/from16 v37, v9

    .line 495
    invoke-virtual/range {v32 .. v37}, Landroid/security/IKeystoreServiceMDFPP$Stub;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object v53

    .line 496
    .local v53, "_result":Landroid/security/keymaster/ExportResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v53, :cond_a

    .line 498
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    const/4 v4, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/ExportResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 504
    :goto_a
    const/4 v4, 0x1

    return v4

    .line 484
    .end local v9    # "_arg4":I
    .end local v53    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_8
    const/16 v21, 0x0

    .restart local v21    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_8

    .line 491
    .end local v21    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :cond_9
    const/16 v36, 0x0

    .local v36, "_arg3":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_9

    .line 502
    .end local v36    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    .restart local v9    # "_arg4":I
    .restart local v53    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 508
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v9    # "_arg4":I
    .end local v53    # "_result":Landroid/security/keymaster/ExportResult;
    :sswitch_1c
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v38

    .line 512
    .local v38, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 514
    .restart local v39    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 516
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v41, 0x1

    .line 518
    .local v41, "_arg3":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 519
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/security/keymaster/KeymasterArguments;

    .line 525
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v43

    .line 527
    .local v43, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .local v44, "_arg6":I
    move-object/from16 v37, p0

    move/from16 v40, v7

    .line 528
    invoke-virtual/range {v37 .. v44}, Landroid/security/IKeystoreServiceMDFPP$Stub;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object v56

    .line 529
    .local v56, "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    if-eqz v56, :cond_d

    .line 531
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v4, 0x1

    move-object/from16 v0, v56

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 537
    :goto_d
    const/4 v4, 0x1

    return v4

    .line 516
    .end local v41    # "_arg3":Z
    .end local v43    # "_arg5":[B
    .end local v44    # "_arg6":I
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_b
    const/16 v41, 0x0

    .restart local v41    # "_arg3":Z
    goto :goto_b

    .line 522
    :cond_c
    const/16 v42, 0x0

    .local v42, "_arg4":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_c

    .line 535
    .end local v42    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    .restart local v43    # "_arg5":[B
    .restart local v44    # "_arg6":I
    .restart local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 541
    .end local v7    # "_arg2":I
    .end local v38    # "_arg0":Landroid/os/IBinder;
    .end local v39    # "_arg1":Ljava/lang/String;
    .end local v41    # "_arg3":Z
    .end local v43    # "_arg5":[B
    .end local v44    # "_arg6":I
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1d
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v38

    .line 545
    .restart local v38    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 546
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    .line 552
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 553
    .restart local v14    # "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v13, v14}, Landroid/security/IKeystoreServiceMDFPP$Stub;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v56

    .line 554
    .restart local v56    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v56, :cond_f

    .line 556
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v4, 0x1

    move-object/from16 v0, v56

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 562
    :goto_f
    const/4 v4, 0x1

    return v4

    .line 549
    .end local v14    # "_arg2":[B
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_e
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_e

    .line 560
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v14    # "_arg2":[B
    .restart local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 566
    .end local v14    # "_arg2":[B
    .end local v38    # "_arg0":Landroid/os/IBinder;
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1e
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v38

    .line 570
    .restart local v38    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 571
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    .line 577
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 579
    .restart local v14    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v28

    .line 580
    .restart local v28    # "_arg3":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/security/IKeystoreServiceMDFPP$Stub;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v56

    .line 581
    .restart local v56    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    if-eqz v56, :cond_11

    .line 583
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    const/4 v4, 0x1

    move-object/from16 v0, v56

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 589
    :goto_11
    const/4 v4, 0x1

    return v4

    .line 574
    .end local v14    # "_arg2":[B
    .end local v28    # "_arg3":[B
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_10
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_10

    .line 587
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v14    # "_arg2":[B
    .restart local v28    # "_arg3":[B
    .restart local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 593
    .end local v14    # "_arg2":[B
    .end local v28    # "_arg3":[B
    .end local v38    # "_arg0":Landroid/os/IBinder;
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1f
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v38

    .line 596
    .restart local v38    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->abort(Landroid/os/IBinder;)I

    move-result v52

    .line 597
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    const/4 v4, 0x1

    return v4

    .line 603
    .end local v38    # "_arg0":Landroid/os/IBinder;
    .end local v52    # "_result":I
    :sswitch_20
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v38

    .line 606
    .restart local v38    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->isOperationAuthorized(Landroid/os/IBinder;)Z

    move-result v57

    .line 607
    .local v57, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    if-eqz v57, :cond_12

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    const/4 v4, 0x1

    return v4

    .line 608
    :cond_12
    const/4 v4, 0x0

    goto :goto_12

    .line 613
    .end local v38    # "_arg0":Landroid/os/IBinder;
    .end local v57    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v48

    .line 616
    .restart local v48    # "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->addAuthToken([B)I

    move-result v52

    .line 617
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    const/4 v4, 0x1

    return v4

    .line 623
    .end local v48    # "_arg0":[B
    .end local v52    # "_result":I
    :sswitch_22
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 627
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 628
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1, v6}, Landroid/security/IKeystoreServiceMDFPP$Stub;->onUserAdded(II)I

    move-result v52

    .line 629
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    const/4 v4, 0x1

    return v4

    .line 635
    .end local v6    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_23
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 638
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->onUserRemoved(I)I

    move-result v52

    .line 639
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v4, 0x1

    return v4

    .line 645
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_24
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 649
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 650
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    .line 656
    :goto_13
    new-instance v50, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct/range {v50 .. v50}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 657
    .local v50, "_arg2":Landroid/security/keymaster/KeymasterCertificateChain;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v5, v13, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v52

    .line 658
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    if-eqz v50, :cond_14

    .line 661
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v4, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeymasterCertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    .line 667
    :goto_14
    const/4 v4, 0x1

    return v4

    .line 653
    .end local v50    # "_arg2":Landroid/security/keymaster/KeymasterCertificateChain;
    .end local v52    # "_result":I
    :cond_13
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_13

    .line 665
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v50    # "_arg2":Landroid/security/keymaster/KeymasterCertificateChain;
    .restart local v52    # "_result":I
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 671
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v50    # "_arg2":Landroid/security/keymaster/KeymasterCertificateChain;
    .end local v52    # "_result":I
    :sswitch_25
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 675
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 677
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 678
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/security/IKeystoreServiceMDFPP$Stub;->migrate_MDFPP_keystore(Ljava/lang/String;II)I

    move-result v52

    .line 679
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    const/4 v4, 0x1

    return v4

    .line 685
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v52    # "_result":I
    :sswitch_26
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 688
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->getState_MDFPP(I)I

    move-result v52

    .line 689
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    const/4 v4, 0x1

    return v4

    .line 695
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_27
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 698
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->reset_MDFPP(I)I

    move-result v52

    .line 699
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v4, 0x1

    return v4

    .line 705
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_28
    const-string/jumbo v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 709
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 710
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1, v6}, Landroid/security/IKeystoreServiceMDFPP$Stub;->onUserAdded_MDFPP(II)I

    move-result v52

    .line 711
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    move-object/from16 v0, p3

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/4 v4, 0x1

    return v4

    .line 79
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
