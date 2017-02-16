.class public abstract Landroid/spay/ITAController$Stub;
.super Landroid/os/Binder;
.source "ITAController.java"

# interfaces
.implements Landroid/spay/ITAController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/ITAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/spay/ITAController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.spay.ITAController"

.field static final TRANSACTION_checkCertInfo:I = 0x6

.field static final TRANSACTION_clearDeviceCertificates:I = 0x5

.field static final TRANSACTION_loadTA:I = 0x1

.field static final TRANSACTION_makeSystemCall:I = 0x4

.field static final TRANSACTION_processTACommand:I = 0x3

.field static final TRANSACTION_unloadTA:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.spay.ITAController"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/spay/ITAController;
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
    const-string/jumbo v1, "android.spay.ITAController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/spay/ITAController;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/spay/ITAController;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/spay/ITAController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/spay/ITAController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 130
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.spay.ITAController"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x1

    return v2

    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.spay.ITAController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 57
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 59
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg2":J
    move-object v2, p0

    .line 60
    invoke-virtual/range {v2 .. v7}, Landroid/spay/ITAController$Stub;->loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v14

    .line 61
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v14, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v2, 0x1

    return v2

    .line 54
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v14    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 62
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "_arg1":J
    .restart local v6    # "_arg2":J
    .restart local v14    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 67
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v14    # "_result":Z
    :sswitch_2
    const-string/jumbo v2, "android.spay.ITAController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/spay/ITAController$Stub;->unloadTA()V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v2, 0x1

    return v2

    .line 74
    :sswitch_3
    const-string/jumbo v2, "android.spay.ITAController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    sget-object v2, Landroid/spay/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/spay/TACommandRequest;

    .line 82
    :goto_2
    invoke-virtual {p0, v9}, Landroid/spay/ITAController$Stub;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object v13

    .line 83
    .local v13, "_result":Landroid/spay/TACommandResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v13, :cond_3

    .line 85
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v2}, Landroid/spay/TACommandResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    :goto_3
    const/4 v2, 0x1

    return v2

    .line 80
    .end local v13    # "_result":Landroid/spay/TACommandResponse;
    :cond_2
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/spay/TACommandRequest;
    goto :goto_2

    .line 89
    .end local v9    # "_arg0":Landroid/spay/TACommandRequest;
    .restart local v13    # "_result":Landroid/spay/TACommandResponse;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 95
    .end local v13    # "_result":Landroid/spay/TACommandResponse;
    :sswitch_4
    const-string/jumbo v2, "android.spay.ITAController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 98
    .local v8, "_arg0":I
    invoke-virtual {p0, v8}, Landroid/spay/ITAController$Stub;->makeSystemCall(I)Z

    move-result v14

    .line 99
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v14, :cond_4

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v2, 0x1

    return v2

    .line 100
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 105
    .end local v8    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_5
    const-string/jumbo v2, "android.spay.ITAController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v10}, Landroid/spay/ITAController$Stub;->clearDeviceCertificates(Ljava/lang/String;)Z

    move-result v14

    .line 109
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v14, :cond_5

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v2, 0x1

    return v2

    .line 110
    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    .line 115
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_6
    const-string/jumbo v2, "android.spay.ITAController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 118
    .local v11, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v11}, Landroid/spay/ITAController$Stub;->checkCertInfo(Ljava/util/List;)Landroid/spay/CertInfo;

    move-result-object v12

    .line 119
    .local v12, "_result":Landroid/spay/CertInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v12, :cond_6

    .line 121
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v2}, Landroid/spay/CertInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    :goto_6
    const/4 v2, 0x1

    return v2

    .line 125
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
