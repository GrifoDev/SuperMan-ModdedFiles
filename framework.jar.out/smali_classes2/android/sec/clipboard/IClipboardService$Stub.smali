.class public abstract Landroid/sec/clipboard/IClipboardService$Stub;
.super Landroid/os/Binder;
.source "IClipboardService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardService"

.field static final TRANSACTION_addClip:I = 0x10

.field static final TRANSACTION_addClipboardEventListener:I = 0x1a

.field static final TRANSACTION_dismissDialog:I = 0x6

.field static final TRANSACTION_getClip:I = 0x17

.field static final TRANSACTION_getClipData:I = 0x9

.field static final TRANSACTION_getClipedStrings:I = 0x11

.field static final TRANSACTION_getClips:I = 0x16

.field static final TRANSACTION_getCount:I = 0x1

.field static final TRANSACTION_isClipboardAllowed:I = 0x12

.field static final TRANSACTION_isEnabled:I = 0xf

.field static final TRANSACTION_isPackageAllowed:I = 0x13

.field static final TRANSACTION_isShowing:I = 0x5

.field static final TRANSACTION_loadSEClipboard:I = 0xe

.field static final TRANSACTION_pasteClip:I = 0x15

.field static final TRANSACTION_registClipboardWorkingFormUiInterfaces:I = 0x7

.field static final TRANSACTION_removeAll:I = 0x14

.field static final TRANSACTION_removeClip:I = 0x18

.field static final TRANSACTION_removeClipboardEventListener:I = 0x1b

.field static final TRANSACTION_setClipData:I = 0xa

.field static final TRANSACTION_setClipDataFromOriginal:I = 0xc

.field static final TRANSACTION_setClipDataToSem:I = 0xb

.field static final TRANSACTION_setData:I = 0xd

.field static final TRANSACTION_showDialog:I = 0x2

.field static final TRANSACTION_showDialogWithType:I = 0x3

.field static final TRANSACTION_unRegistClipboardWorkingFormUiInterfaces:I = 0x8

.field static final TRANSACTION_updateClip:I = 0x19

.field static final TRANSACTION_updateFilter:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;
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
    const-string/jumbo v1, "android.sec.clipboard.IClipboardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/sec/clipboard/IClipboardService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 20
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

    .line 364
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v19

    return v19

    .line 43
    :sswitch_0
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v19, 0x1

    return v19

    .line 48
    :sswitch_1
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getCount()I

    move-result v14

    .line 50
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/16 v19, 0x1

    return v19

    .line 56
    .end local v14    # "_result":I
    :sswitch_2
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->showDialog()V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/16 v19, 0x1

    return v19

    .line 63
    :sswitch_3
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v8

    .line 68
    .local v8, "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Landroid/sec/clipboard/IClipboardService$Stub;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/16 v19, 0x1

    return v19

    .line 74
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_4
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v8

    .line 79
    .restart local v8    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Landroid/sec/clipboard/IClipboardService$Stub;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/16 v19, 0x1

    return v19

    .line 85
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_5
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->isShowing()Z

    move-result v18

    .line 87
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v18, :cond_0

    const/16 v19, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/16 v19, 0x1

    return v19

    .line 88
    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    .line 93
    .end local v18    # "_result":Z
    :sswitch_6
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->dismissDialog()V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/16 v19, 0x1

    return v19

    .line 100
    :sswitch_7
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v4

    .line 103
    .local v4, "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/sec/clipboard/IClipboardService$Stub;->registClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/16 v19, 0x1

    return v19

    .line 109
    .end local v4    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :sswitch_8
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v4

    .line 112
    .restart local v4    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/sec/clipboard/IClipboardService$Stub;->unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/16 v19, 0x1

    return v19

    .line 118
    .end local v4    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :sswitch_9
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/sec/clipboard/IClipboardService$Stub;->getClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v15

    .line 122
    .local v15, "_result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v15, :cond_1

    .line 124
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    :goto_1
    const/16 v19, 0x1

    return v19

    .line 128
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 134
    .end local v2    # "_arg0":I
    .end local v15    # "_result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_a
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_2

    .line 139
    sget-object v19, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 145
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 148
    .local v13, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v11, v13}, Landroid/sec/clipboard/IClipboardService$Stub;->setClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v14

    .line 149
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/16 v19, 0x1

    return v19

    .line 142
    .end local v11    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg3":I
    .end local v14    # "_result":I
    :cond_2
    const/4 v9, 0x0

    .local v9, "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_2

    .line 155
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_b
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_3

    .line 160
    sget-object v19, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 166
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 168
    .restart local v11    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 169
    .restart local v13    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v11, v13}, Landroid/sec/clipboard/IClipboardService$Stub;->setClipDataToSem(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v14

    .line 170
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/16 v19, 0x1

    return v19

    .line 163
    .end local v11    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg3":I
    .end local v14    # "_result":I
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_3

    .line 176
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_c
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_4

    .line 181
    sget-object v19, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 186
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/sec/clipboard/IClipboardService$Stub;->setClipDataFromOriginal(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v14

    .line 187
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/16 v19, 0x1

    return v19

    .line 184
    .end local v14    # "_result":I
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_4

    .line 193
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_d
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_5

    .line 198
    sget-object v19, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 204
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_6

    const/4 v12, 0x1

    .line 206
    .local v12, "_arg2":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 207
    .restart local v13    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v12, v13}, Landroid/sec/clipboard/IClipboardService$Stub;->setData(ILcom/samsung/android/content/clipboard/data/SemClipData;ZI)I

    move-result v14

    .line 208
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/16 v19, 0x1

    return v19

    .line 201
    .end local v12    # "_arg2":Z
    .end local v13    # "_arg3":I
    .end local v14    # "_result":I
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_5

    .line 204
    .end local v9    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "_arg2":Z
    goto :goto_6

    .line 214
    .end local v2    # "_arg0":I
    .end local v12    # "_arg2":Z
    :sswitch_e
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->loadSEClipboard()V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/16 v19, 0x1

    return v19

    .line 221
    :sswitch_f
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->isEnabled()Z

    move-result v18

    .line 223
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v18, :cond_7

    const/16 v19, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/16 v19, 0x1

    return v19

    .line 224
    :cond_7
    const/16 v19, 0x0

    goto :goto_7

    .line 229
    .end local v18    # "_result":Z
    :sswitch_10
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_8

    .line 232
    sget-object v19, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;

    .line 238
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 239
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Landroid/sec/clipboard/IClipboardService$Stub;->addClip(Landroid/content/ClipData;I)V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    const/16 v19, 0x1

    return v19

    .line 235
    .end local v7    # "_arg1":I
    :cond_8
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/content/ClipData;
    goto :goto_8

    .line 245
    .end local v3    # "_arg0":Landroid/content/ClipData;
    :sswitch_11
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 250
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/sec/clipboard/IClipboardService$Stub;->getClipedStrings(II)Ljava/util/List;

    move-result-object v17

    .line 251
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 253
    const/16 v19, 0x1

    return v19

    .line 257
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_12
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/sec/clipboard/IClipboardService$Stub;->isClipboardAllowed(I)Z

    move-result v18

    .line 261
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v18, :cond_9

    const/16 v19, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/16 v19, 0x1

    return v19

    .line 262
    :cond_9
    const/16 v19, 0x0

    goto :goto_9

    .line 267
    .end local v2    # "_arg0":I
    .end local v18    # "_result":Z
    :sswitch_13
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/sec/clipboard/IClipboardService$Stub;->isPackageAllowed(I)Z

    move-result v18

    .line 271
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v18, :cond_a

    const/16 v19, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/16 v19, 0x1

    return v19

    .line 272
    :cond_a
    const/16 v19, 0x0

    goto :goto_a

    .line 277
    .end local v2    # "_arg0":I
    .end local v18    # "_result":Z
    :sswitch_14
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->removeAll()Z

    move-result v18

    .line 279
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v18, :cond_b

    const/16 v19, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/16 v19, 0x1

    return v19

    .line 280
    :cond_b
    const/16 v19, 0x0

    goto :goto_b

    .line 285
    .end local v18    # "_result":Z
    :sswitch_15
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/sec/clipboard/IClipboardService$Stub;->pasteClip(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/16 v19, 0x1

    return v19

    .line 294
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getClips()Ljava/util/List;

    move-result-object v16

    .line 296
    .local v16, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 298
    const/16 v19, 0x1

    return v19

    .line 302
    .end local v16    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    :sswitch_17
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 305
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/sec/clipboard/IClipboardService$Stub;->getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v15

    .line 306
    .restart local v15    # "_result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    if-eqz v15, :cond_c

    .line 308
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 314
    :goto_c
    const/16 v19, 0x1

    return v19

    .line 312
    :cond_c
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 318
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_18
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 321
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/sec/clipboard/IClipboardService$Stub;->removeClip(Ljava/lang/String;)Z

    move-result v18

    .line 322
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v18, :cond_d

    const/16 v19, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/16 v19, 0x1

    return v19

    .line 323
    :cond_d
    const/16 v19, 0x0

    goto :goto_d

    .line 328
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":Z
    :sswitch_19
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 332
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_e

    .line 333
    sget-object v19, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 338
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Landroid/sec/clipboard/IClipboardService$Stub;->updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v18

    .line 339
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v18, :cond_f

    const/16 v19, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/16 v19, 0x1

    return v19

    .line 336
    .end local v18    # "_result":Z
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_e

    .line 340
    .end local v9    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v18    # "_result":Z
    :cond_f
    const/16 v19, 0x0

    goto :goto_f

    .line 345
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":Z
    :sswitch_1a
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    move-result-object v5

    .line 349
    .local v5, "_arg0":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 350
    .local v10, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Landroid/sec/clipboard/IClipboardService$Stub;->addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/16 v19, 0x1

    return v19

    .line 356
    .end local v5    # "_arg0":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    .end local v10    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v19, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    move-result-object v5

    .line 359
    .restart local v5    # "_arg0":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/sec/clipboard/IClipboardService$Stub;->removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/16 v19, 0x1

    return v19

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
