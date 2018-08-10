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

.field static final TRANSACTION_addClip:I = 0x12

.field static final TRANSACTION_addClipboardEventListener:I = 0x1f

.field static final TRANSACTION_addUserChangedListener:I = 0x21

.field static final TRANSACTION_dismissDialog:I = 0x8

.field static final TRANSACTION_getClip:I = 0x1c

.field static final TRANSACTION_getClipData:I = 0xb

.field static final TRANSACTION_getClipedStrings:I = 0x13

.field static final TRANSACTION_getClips:I = 0x1b

.field static final TRANSACTION_getCount:I = 0x1

.field static final TRANSACTION_getFilter:I = 0x17

.field static final TRANSACTION_isClipboardAllowed:I = 0x14

.field static final TRANSACTION_isClipboardShareAllowed:I = 0x15

.field static final TRANSACTION_isEnabled:I = 0x11

.field static final TRANSACTION_isKnoxKeyguardShowing:I = 0x18

.field static final TRANSACTION_isPackageAllowed:I = 0x16

.field static final TRANSACTION_isShowing:I = 0x7

.field static final TRANSACTION_loadSEClipboard:I = 0x10

.field static final TRANSACTION_pasteClip:I = 0x1a

.field static final TRANSACTION_registClipboardWorkingFormUiInterfaces:I = 0x9

.field static final TRANSACTION_removeAll:I = 0x19

.field static final TRANSACTION_removeClip:I = 0x1d

.field static final TRANSACTION_removeClipboardEventListener:I = 0x20

.field static final TRANSACTION_removeUserChangedListener:I = 0x22

.field static final TRANSACTION_setClipData:I = 0xc

.field static final TRANSACTION_setClipDataFromOriginal:I = 0xe

.field static final TRANSACTION_setClipDataToSem:I = 0xd

.field static final TRANSACTION_setData:I = 0xf

.field static final TRANSACTION_showDialog:I = 0x3

.field static final TRANSACTION_showDialogWithType:I = 0x4

.field static final TRANSACTION_unRegistClipboardWorkingFormUiInterfaces:I = 0xa

.field static final TRANSACTION_updateClip:I = 0x1e

.field static final TRANSACTION_updateDialogShowingState:I = 0x2

.field static final TRANSACTION_updateFilter:I = 0x5

.field static final TRANSACTION_updateFilterWithInputType:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.sec.clipboard.IClipboardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/sec/clipboard/IClipboardService;

    return-object v0

    :cond_1
    new-instance v1, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v23

    return v23

    :sswitch_0
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v23, 0x1

    return v23

    :sswitch_1
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getCount()I

    move-result v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :sswitch_2
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_0

    const/4 v9, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/sec/clipboard/IClipboardService$Stub;->updateDialogShowingState(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->showDialog()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_4
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/sec/clipboard/IClipboardService$Stub;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_5
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/sec/clipboard/IClipboardService$Stub;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_6
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v14}, Landroid/sec/clipboard/IClipboardService$Stub;->updateFilterWithInputType(IILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_7
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->isShowing()Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_1

    const/16 v23, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_1
    const/16 v23, 0x0

    goto :goto_1

    :sswitch_8
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->dismissDialog()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_9
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/sec/clipboard/IClipboardService$Stub;->registClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_a
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/sec/clipboard/IClipboardService$Stub;->unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_b
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->getClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v19, :cond_2

    const/16 v23, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/16 v23, 0x1

    return v23

    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_c
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_3

    sget-object v23, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/content/clipboard/data/SemClipData;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v12, v15, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->setClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    :sswitch_d
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_4

    sget-object v23, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/content/clipboard/data/SemClipData;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v12, v15, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->setClipDataToSem(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    :sswitch_e
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_5

    sget-object v23, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/content/clipboard/data/SemClipData;

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Landroid/sec/clipboard/IClipboardService$Stub;->setClipDataFromOriginal(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    :sswitch_f
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_6

    sget-object v23, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/content/clipboard/data/SemClipData;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_7

    const/16 v16, 0x1

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v3, v12, v1, v2}, Landroid/sec/clipboard/IClipboardService$Stub;->setData(ILcom/samsung/android/content/clipboard/data/SemClipData;ZI)I

    move-result v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_6
    const/4 v12, 0x0

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    goto :goto_7

    :sswitch_10
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->loadSEClipboard()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_11
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->isEnabled()Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_8

    const/16 v23, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_8
    const/16 v23, 0x0

    goto :goto_8

    :sswitch_12
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_9

    sget-object v23, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Landroid/sec/clipboard/IClipboardService$Stub;->addClip(Landroid/content/ClipData;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    :sswitch_13
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/sec/clipboard/IClipboardService$Stub;->getClipedStrings(II)Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/16 v23, 0x1

    return v23

    :sswitch_14
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->isClipboardAllowed(I)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_a

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_a
    const/16 v23, 0x0

    goto :goto_a

    :sswitch_15
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->isClipboardShareAllowed(I)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_b

    const/16 v23, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_b
    const/16 v23, 0x0

    goto :goto_b

    :sswitch_16
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->isPackageAllowed(I)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_c

    const/16 v23, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_c
    const/16 v23, 0x0

    goto :goto_c

    :sswitch_17
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getFilter()I

    move-result v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :sswitch_18
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->isKnoxKeyguardShowing()Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_d

    const/16 v23, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_d
    const/16 v23, 0x0

    goto :goto_d

    :sswitch_19
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->removeAll()Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_e

    const/16 v23, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_e
    const/16 v23, 0x0

    goto :goto_e

    :sswitch_1a
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/sec/clipboard/IClipboardService$Stub;->pasteClip(Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_f

    const/16 v23, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_f
    const/16 v23, 0x0

    goto :goto_f

    :sswitch_1b
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getClips()Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v23, 0x1

    return v23

    :sswitch_1c
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/sec/clipboard/IClipboardService$Stub;->getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v19, :cond_10

    const/16 v23, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_10
    const/16 v23, 0x1

    return v23

    :cond_10
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    :sswitch_1d
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/sec/clipboard/IClipboardService$Stub;->removeClip(Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_11

    const/16 v23, 0x1

    :goto_11
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_11
    const/16 v23, 0x0

    goto :goto_11

    :sswitch_1e
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_12

    sget-object v23, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/content/clipboard/data/SemClipData;

    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Landroid/sec/clipboard/IClipboardService$Stub;->updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_13

    const/16 v23, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_12
    const/4 v12, 0x0

    goto :goto_12

    :cond_13
    const/16 v23, 0x0

    goto :goto_13

    :sswitch_1f
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Landroid/sec/clipboard/IClipboardService$Stub;->addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_20
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/sec/clipboard/IClipboardService$Stub;->removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_21
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/content/clipboard/IOnUserChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/clipboard/IOnUserChangedListener;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Landroid/sec/clipboard/IClipboardService$Stub;->addUserChangedListener(Lcom/samsung/android/content/clipboard/IOnUserChangedListener;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_22
    const-string/jumbo v23, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/content/clipboard/IOnUserChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/clipboard/IOnUserChangedListener;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/clipboard/IClipboardService$Stub;->removeUserChangedListener(Lcom/samsung/android/content/clipboard/IOnUserChangedListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
