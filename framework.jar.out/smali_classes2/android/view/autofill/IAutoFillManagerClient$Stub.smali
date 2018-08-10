.class public abstract Landroid/view/autofill/IAutoFillManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManagerClient.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManagerClient"

.field static final TRANSACTION_authenticate:I = 0x3

.field static final TRANSACTION_autofill:I = 0x2

.field static final TRANSACTION_notifyNoFillUi:I = 0x7

.field static final TRANSACTION_requestHideFillUi:I = 0x6

.field static final TRANSACTION_requestShowFillUi:I = 0x5

.field static final TRANSACTION_setState:I = 0x1

.field static final TRANSACTION_setTrackedViews:I = 0x4

.field static final TRANSACTION_startIntentSender:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.view.autofill.IAutoFillManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.view.autofill.IAutoFillManagerClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/autofill/IAutoFillManagerClient;

    return-object v0

    :cond_1
    new-instance v1, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string/jumbo v3, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    const-string/jumbo v3, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v14, 0x1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v14, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setState(ZZZ)V

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    :sswitch_2
    const-string/jumbo v3, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    sget-object v3, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v13, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->autofill(ILjava/util/List;Ljava/util/List;)V

    const/4 v3, 0x1

    return v3

    :sswitch_3
    const-string/jumbo v3, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/IntentSender;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    const/4 v3, 0x1

    return v3

    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    goto :goto_4

    :sswitch_4
    const-string/jumbo v3, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/view/autofill/AutofillId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v18, 0x1

    :goto_5
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/view/autofill/AutofillId;

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v15, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    const/4 v3, 0x1

    return v3

    :cond_5
    const/16 v18, 0x0

    goto :goto_5

    :sswitch_5
    const-string/jumbo v3, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;

    move-result-object v9

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    const/4 v3, 0x1

    return v3

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    goto :goto_7

    :sswitch_6
    const-string/jumbo v3, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    const/4 v3, 0x1

    return v3

    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    :sswitch_7
    const-string/jumbo v3, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;)V

    const/4 v3, 0x1

    return v3

    :cond_9
    const/4 v5, 0x0

    goto :goto_9

    :sswitch_8
    const-string/jumbo v3, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentSender;

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->startIntentSender(Landroid/content/IntentSender;)V

    const/4 v3, 0x1

    return v3

    :cond_a
    const/4 v10, 0x0

    goto :goto_a

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
