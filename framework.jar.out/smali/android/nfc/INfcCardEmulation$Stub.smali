.class public abstract Landroid/nfc/INfcCardEmulation$Stub;
.super Landroid/os/Binder;
.source "INfcCardEmulation.java"

# interfaces
.implements Landroid/nfc/INfcCardEmulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcCardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcCardEmulation$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcCardEmulation"

.field static final TRANSACTION_disableAutoRouting:I = 0xe

.field static final TRANSACTION_enableAutoRouting:I = 0xd

.field static final TRANSACTION_getAidGroupForService:I = 0x6

.field static final TRANSACTION_getAidSizeForServiceInPercent:I = 0x16

.field static final TRANSACTION_getPaymentDefaultServiceInfo:I = 0x19

.field static final TRANSACTION_getPaymentPriority:I = 0x18

.field static final TRANSACTION_getServices:I = 0x8

.field static final TRANSACTION_getUsedAidTableSizeInPercent:I = 0x15

.field static final TRANSACTION_initializePaymentDefault:I = 0x17

.field static final TRANSACTION_isDefaultServiceForAid:I = 0x2

.field static final TRANSACTION_isDefaultServiceForCategory:I = 0x1

.field static final TRANSACTION_isRegisteredService:I = 0x14

.field static final TRANSACTION_registerAidGroupForService:I = 0x5

.field static final TRANSACTION_registerService:I = 0x12

.field static final TRANSACTION_removeAidGroupForService:I = 0x7

.field static final TRANSACTION_setAidsPolicyForService:I = 0x11

.field static final TRANSACTION_setDefaultForNextTap:I = 0x4

.field static final TRANSACTION_setDefaultServiceForCategory:I = 0x3

.field static final TRANSACTION_setLockPassword:I = 0x1a

.field static final TRANSACTION_setOtherService:I = 0xf

.field static final TRANSACTION_setPreferredService:I = 0x9

.field static final TRANSACTION_supportsAidPrefixRegistration:I = 0xb

.field static final TRANSACTION_supportsAutoRouting:I = 0xc

.field static final TRANSACTION_unregisterOtherService:I = 0x13

.field static final TRANSACTION_unsetOtherService:I = 0x10

.field static final TRANSACTION_unsetPreferredService:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.nfc.INfcCardEmulation"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcCardEmulation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcCardEmulation;
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
    const-string/jumbo v1, "android.nfc.INfcCardEmulation"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcCardEmulation;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcCardEmulation;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcCardEmulation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcCardEmulation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 19
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

    .line 452
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v18

    return v18

    .line 45
    :sswitch_0
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v18, 0x1

    return v18

    .line 50
    :sswitch_1
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_0

    .line 55
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v17

    .line 63
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v17, :cond_1

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/16 v18, 0x1

    return v18

    .line 58
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":Z
    :cond_0
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/content/ComponentName;
    goto :goto_0

    .line 64
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":Ljava/lang/String;
    .restart local v17    # "_result":Z
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 69
    .end local v2    # "_arg0":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_2
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_2

    .line 74
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 80
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 81
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v17

    .line 82
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v17, :cond_3

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/16 v18, 0x1

    return v18

    .line 77
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2

    .line 83
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":Ljava/lang/String;
    .restart local v17    # "_result":Z
    :cond_3
    const/16 v18, 0x0

    goto :goto_3

    .line 88
    .end local v2    # "_arg0":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_3
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_4

    .line 93
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 99
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 100
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v17

    .line 101
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v17, :cond_5

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/16 v18, 0x1

    return v18

    .line 96
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":Z
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_4

    .line 102
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":Ljava/lang/String;
    .restart local v17    # "_result":Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_5

    .line 107
    .end local v2    # "_arg0":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_4
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_6

    .line 112
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 117
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v17

    .line 118
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v17, :cond_7

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/16 v18, 0x1

    return v18

    .line 115
    .end local v17    # "_result":Z
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_6

    .line 119
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .restart local v17    # "_result":Z
    :cond_7
    const/16 v18, 0x0

    goto :goto_7

    .line 124
    .end local v2    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_5
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 128
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_8

    .line 129
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 135
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_9

    .line 136
    sget-object v18, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/nfc/cardemulation/AidGroup;

    .line 141
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v8}, Landroid/nfc/INfcCardEmulation$Stub;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v17

    .line 142
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v17, :cond_a

    const/16 v18, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/16 v18, 0x1

    return v18

    .line 132
    .end local v17    # "_result":Z
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_8

    .line 139
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :cond_9
    const/4 v8, 0x0

    .local v8, "_arg2":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_9

    .line 143
    .end local v8    # "_arg2":Landroid/nfc/cardemulation/AidGroup;
    .restart local v17    # "_result":Z
    :cond_a
    const/16 v18, 0x0

    goto :goto_a

    .line 148
    .end local v2    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_6
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_b

    .line 153
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 159
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 160
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9}, Landroid/nfc/INfcCardEmulation$Stub;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v14

    .line 161
    .local v14, "_result":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v14, :cond_c

    .line 163
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/nfc/cardemulation/AidGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 169
    :goto_c
    const/16 v18, 0x1

    return v18

    .line 156
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v14    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_b

    .line 167
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":Ljava/lang/String;
    .restart local v14    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 173
    .end local v2    # "_arg0":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v14    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :sswitch_7
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_d

    .line 178
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 184
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 185
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9}, Landroid/nfc/INfcCardEmulation$Stub;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v17

    .line 186
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v17, :cond_e

    const/16 v18, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/16 v18, 0x1

    return v18

    .line 181
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":Z
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d

    .line 187
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":Ljava/lang/String;
    .restart local v17    # "_result":Z
    :cond_e
    const/16 v18, 0x0

    goto :goto_e

    .line 192
    .end local v2    # "_arg0":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_8
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/nfc/INfcCardEmulation$Stub;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 198
    .local v16, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 200
    const/16 v18, 0x1

    return v18

    .line 204
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :sswitch_9
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_f

    .line 207
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 212
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/nfc/INfcCardEmulation$Stub;->setPreferredService(Landroid/content/ComponentName;)Z

    move-result v17

    .line 213
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v17, :cond_10

    const/16 v18, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/16 v18, 0x1

    return v18

    .line 210
    .end local v17    # "_result":Z
    :cond_f
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 214
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .restart local v17    # "_result":Z
    :cond_10
    const/16 v18, 0x0

    goto :goto_10

    .line 219
    .end local v17    # "_result":Z
    :sswitch_a
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcCardEmulation$Stub;->unsetPreferredService()Z

    move-result v17

    .line 221
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v17, :cond_11

    const/16 v18, 0x1

    :goto_11
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/16 v18, 0x1

    return v18

    .line 222
    :cond_11
    const/16 v18, 0x0

    goto :goto_11

    .line 227
    .end local v17    # "_result":Z
    :sswitch_b
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcCardEmulation$Stub;->supportsAidPrefixRegistration()Z

    move-result v17

    .line 229
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v17, :cond_12

    const/16 v18, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/16 v18, 0x1

    return v18

    .line 230
    :cond_12
    const/16 v18, 0x0

    goto :goto_12

    .line 235
    .end local v17    # "_result":Z
    :sswitch_c
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcCardEmulation$Stub;->supportsAutoRouting()Z

    move-result v17

    .line 237
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v17, :cond_13

    const/16 v18, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/16 v18, 0x1

    return v18

    .line 238
    :cond_13
    const/16 v18, 0x0

    goto :goto_13

    .line 243
    .end local v17    # "_result":Z
    :sswitch_d
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcCardEmulation$Stub;->enableAutoRouting()Z

    move-result v17

    .line 245
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v17, :cond_14

    const/16 v18, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/16 v18, 0x1

    return v18

    .line 246
    :cond_14
    const/16 v18, 0x0

    goto :goto_14

    .line 251
    .end local v17    # "_result":Z
    :sswitch_e
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcCardEmulation$Stub;->disableAutoRouting()Z

    move-result v17

    .line 253
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v17, :cond_15

    const/16 v18, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/16 v18, 0x1

    return v18

    .line 254
    :cond_15
    const/16 v18, 0x0

    goto :goto_15

    .line 259
    .end local v17    # "_result":Z
    :sswitch_f
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_16

    .line 264
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 269
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/nfc/INfcCardEmulation$Stub;->setOtherService(ILandroid/content/ComponentName;)Z

    move-result v17

    .line 270
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v17, :cond_17

    const/16 v18, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/16 v18, 0x1

    return v18

    .line 267
    .end local v17    # "_result":Z
    :cond_16
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_16

    .line 271
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .restart local v17    # "_result":Z
    :cond_17
    const/16 v18, 0x0

    goto :goto_17

    .line 276
    .end local v2    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_10
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_18

    .line 281
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 286
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/nfc/INfcCardEmulation$Stub;->unsetOtherService(ILandroid/content/ComponentName;)Z

    move-result v17

    .line 287
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v17, :cond_19

    const/16 v18, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/16 v18, 0x1

    return v18

    .line 284
    .end local v17    # "_result":Z
    :cond_18
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_18

    .line 288
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .restart local v17    # "_result":Z
    :cond_19
    const/16 v18, 0x0

    goto :goto_19

    .line 293
    .end local v2    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_11
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 297
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_1a

    .line 298
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 304
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 306
    .local v10, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 307
    .local v11, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v10, v11}, Landroid/nfc/INfcCardEmulation$Stub;->setAidsPolicyForService(ILandroid/content/ComponentName;Ljava/util/List;I)Z

    move-result v17

    .line 308
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v17, :cond_1b

    const/16 v18, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/16 v18, 0x1

    return v18

    .line 301
    .end local v10    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "_arg3":I
    .end local v17    # "_result":Z
    :cond_1a
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1a

    .line 309
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .restart local v10    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "_arg3":I
    .restart local v17    # "_result":Z
    :cond_1b
    const/16 v18, 0x0

    goto :goto_1b

    .line 314
    .end local v2    # "_arg0":I
    .end local v10    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "_arg3":I
    .end local v17    # "_result":Z
    :sswitch_12
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 318
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_1c

    .line 319
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 325
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 327
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 328
    .restart local v11    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9, v11}, Landroid/nfc/INfcCardEmulation$Stub;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I

    move-result v12

    .line 329
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/16 v18, 0x1

    return v18

    .line 322
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg3":I
    .end local v12    # "_result":I
    :cond_1c
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1c

    .line 335
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_13
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_1d

    .line 340
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 345
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/nfc/INfcCardEmulation$Stub;->unregisterOtherService(ILandroid/content/ComponentName;)I

    move-result v12

    .line 346
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/16 v18, 0x1

    return v18

    .line 343
    .end local v12    # "_result":I
    :cond_1d
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1d

    .line 352
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_14
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 356
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_1e

    .line 357
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 363
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 364
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9}, Landroid/nfc/INfcCardEmulation$Stub;->isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v17

    .line 365
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v17, :cond_1f

    const/16 v18, 0x1

    :goto_1f
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/16 v18, 0x1

    return v18

    .line 360
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":Z
    :cond_1e
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1e

    .line 366
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":Ljava/lang/String;
    .restart local v17    # "_result":Z
    :cond_1f
    const/16 v18, 0x0

    goto :goto_1f

    .line 371
    .end local v2    # "_arg0":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_15
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 375
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 376
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/nfc/INfcCardEmulation$Stub;->getUsedAidTableSizeInPercent(ILjava/lang/String;)I

    move-result v12

    .line 377
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    const/16 v18, 0x1

    return v18

    .line 383
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_16
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 387
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_20

    .line 388
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 393
    :goto_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/nfc/INfcCardEmulation$Stub;->getAidSizeForServiceInPercent(ILandroid/content/ComponentName;)I

    move-result v12

    .line 394
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    const/16 v18, 0x1

    return v18

    .line 391
    .end local v12    # "_result":I
    :cond_20
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_20

    .line 400
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_17
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 404
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 405
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Landroid/nfc/INfcCardEmulation$Stub;->initializePaymentDefault(II)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/16 v18, 0x1

    return v18

    .line 411
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_18
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 414
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->getPaymentPriority(I)Landroid/content/ComponentName;

    move-result-object v13

    .line 415
    .local v13, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v13, :cond_21

    .line 417
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 423
    :goto_21
    const/16 v18, 0x1

    return v18

    .line 421
    :cond_21
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 427
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Landroid/content/ComponentName;
    :sswitch_19
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 430
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->getPaymentDefaultServiceInfo(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v15

    .line 431
    .local v15, "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v15, :cond_22

    .line 433
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 439
    :goto_22
    const/16 v18, 0x1

    return v18

    .line 437
    :cond_22
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 443
    .end local v2    # "_arg0":I
    .end local v15    # "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    :sswitch_1a
    const-string/jumbo v18, "android.nfc.INfcCardEmulation"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/nfc/INfcCardEmulation$Stub;->setLockPassword(Ljava/lang/String;)Z

    move-result v17

    .line 447
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v17, :cond_23

    const/16 v18, 0x1

    :goto_23
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/16 v18, 0x1

    return v18

    .line 448
    :cond_23
    const/16 v18, 0x0

    goto :goto_23

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
