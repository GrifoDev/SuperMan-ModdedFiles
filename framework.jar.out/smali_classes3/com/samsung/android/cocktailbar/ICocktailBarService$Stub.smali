.class public abstract Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.super Landroid/os/Binder;
.source "ICocktailBarService.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/ICocktailBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/ICocktailBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cocktailbar.ICocktailBarService"

.field static final TRANSACTION_activateCocktailBar:I = 0x25

.field static final TRANSACTION_bindRemoteViewsService:I = 0x15

.field static final TRANSACTION_closeCocktail:I = 0xc

.field static final TRANSACTION_deactivateCocktailBar:I = 0x26

.field static final TRANSACTION_disableCocktail:I = 0xe

.field static final TRANSACTION_getAllCocktailIds:I = 0x6

.field static final TRANSACTION_getCategoryFilterStr:I = 0x2f

.field static final TRANSACTION_getCocktaiBarWakeUpState:I = 0x2a

.field static final TRANSACTION_getCocktail:I = 0x7

.field static final TRANSACTION_getCocktailBarStateInfo:I = 0x22

.field static final TRANSACTION_getCocktailBarVisibility:I = 0x21

.field static final TRANSACTION_getCocktailId:I = 0xd

.field static final TRANSACTION_getCocktailIds:I = 0xf

.field static final TRANSACTION_getConfigVersion:I = 0x2d

.field static final TRANSACTION_getEnabledCocktailIds:I = 0x5

.field static final TRANSACTION_getHideEdgeListStr:I = 0x30

.field static final TRANSACTION_getPreferWidth:I = 0x2e

.field static final TRANSACTION_getWindowType:I = 0x24

.field static final TRANSACTION_isBoundCocktailPackage:I = 0x10

.field static final TRANSACTION_isCocktailEnabled:I = 0x12

.field static final TRANSACTION_isEnabledCocktail:I = 0x11

.field static final TRANSACTION_notifyCocktailViewDataChanged:I = 0x13

.field static final TRANSACTION_notifyCocktailVisibiltyChanged:I = 0x1c

.field static final TRANSACTION_notifyKeyguardState:I = 0x1b

.field static final TRANSACTION_partiallyUpdateCocktail:I = 0x9

.field static final TRANSACTION_partiallyUpdateHelpView:I = 0xa

.field static final TRANSACTION_registerCocktailBarStateListenerCallback:I = 0x1f

.field static final TRANSACTION_removeCocktailUIService:I = 0x2c

.field static final TRANSACTION_requestToDisableCocktail:I = 0x18

.field static final TRANSACTION_requestToDisableCocktailByCategory:I = 0x1a

.field static final TRANSACTION_requestToUpdateCocktail:I = 0x17

.field static final TRANSACTION_requestToUpdateCocktailByCategory:I = 0x19

.field static final TRANSACTION_sendExtraDataToCocktailBar:I = 0x2b

.field static final TRANSACTION_setCocktailBarWakeUpState:I = 0x29

.field static final TRANSACTION_setCocktailHostCallbacks:I = 0x1

.field static final TRANSACTION_setEnabledCocktailIds:I = 0x4

.field static final TRANSACTION_setOnPullPendingIntent:I = 0x14

.field static final TRANSACTION_showCocktail:I = 0xb

.field static final TRANSACTION_startListening:I = 0x2

.field static final TRANSACTION_stopListening:I = 0x3

.field static final TRANSACTION_unbindRemoteViewsService:I = 0x16

.field static final TRANSACTION_unregisterCocktailBarStateListenerCallback:I = 0x20

.field static final TRANSACTION_updateCocktail:I = 0x8

.field static final TRANSACTION_updateCocktailBarPosition:I = 0x1e

.field static final TRANSACTION_updateCocktailBarVisibility:I = 0x1d

.field static final TRANSACTION_updateCocktailBarWindowType:I = 0x23

.field static final TRANSACTION_updateWakeupArea:I = 0x28

.field static final TRANSACTION_updateWakeupGesture:I = 0x27


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v26

    return v26

    :sswitch_0
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v26, 0x1

    return v26

    :sswitch_1
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v6, v14, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_2
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v6, v14, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_3
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->stopListening(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_4
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setEnabledCocktailIds([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_5
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getEnabledCocktailIds()[I

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v26, 0x1

    return v26

    :sswitch_6
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getAllCocktailIds()[I

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v26, 0x1

    return v26

    :sswitch_7
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_0

    const/16 v26, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cocktailbar/Cocktail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/16 v26, 0x1

    return v26

    :cond_0
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_8
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_1

    sget-object v26, Lcom/samsung/android/cocktailbar/CocktailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/cocktailbar/CocktailInfo;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v13, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :sswitch_9
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_2

    sget-object v26, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/RemoteViews;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v12, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :sswitch_a
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_3

    sget-object v26, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/RemoteViews;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v12, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    :sswitch_b
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->showCocktail(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_c
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v10, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->closeCocktail(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_d
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_4

    sget-object v26, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    :sswitch_e
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_5

    sget-object v26, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    :sswitch_f
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_6

    sget-object v26, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v26, 0x1

    return v26

    :cond_6
    const/4 v11, 0x0

    goto :goto_6

    :sswitch_10
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isBoundCocktailPackage(Ljava/lang/String;I)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_7

    const/16 v26, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_7
    const/16 v26, 0x0

    goto :goto_7

    :sswitch_11
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_8

    sget-object v26, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_9

    const/16 v26, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_8
    const/4 v11, 0x0

    goto :goto_8

    :cond_9
    const/16 v26, 0x0

    goto :goto_9

    :sswitch_12
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_a

    sget-object v26, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isCocktailEnabled(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_b

    const/16 v26, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_a
    const/4 v11, 0x0

    goto :goto_a

    :cond_b
    const/16 v26, 0x0

    goto :goto_b

    :sswitch_13
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v10, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_14
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_c

    sget-object v26, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v7, v10, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setOnPullPendingIntent(Ljava/lang/String;IILandroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_c
    const/16 v18, 0x0

    goto :goto_c

    :sswitch_15
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_d

    sget-object v26, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v7, v10, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_d
    const/16 v17, 0x0

    goto :goto_d

    :sswitch_16
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_e

    sget-object v26, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v10, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_e
    const/16 v17, 0x0

    goto :goto_e

    :sswitch_17
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktail(I)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_f

    const/16 v26, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_f
    const/16 v26, 0x0

    goto :goto_f

    :sswitch_18
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktail(I)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_10

    const/16 v26, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_10
    const/16 v26, 0x0

    goto :goto_10

    :sswitch_19
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktailByCategory(I)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_11

    const/16 v26, 0x1

    :goto_11
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_11
    const/16 v26, 0x0

    goto :goto_11

    :sswitch_1a
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktailByCategory(I)Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_12

    const/16 v26, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_12
    const/16 v26, 0x0

    goto :goto_12

    :sswitch_1b
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_13

    const/4 v8, 0x1

    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyKeyguardState(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_13
    const/4 v8, 0x0

    goto :goto_13

    :sswitch_1c
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailVisibiltyChanged(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_1d
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarVisibility(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_1e
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarPosition(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_1f
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_14

    sget-object v26, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_14
    const/4 v11, 0x0

    goto :goto_14

    :sswitch_20
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_21
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailBarVisibility()I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :sswitch_22
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_15

    const/16 v26, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_15
    const/16 v26, 0x1

    return v26

    :cond_15
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    :sswitch_23
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarWindowType(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_24
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getWindowType()I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :sswitch_25
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->activateCocktailBar()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_26
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->deactivateCocktailBar()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_27
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_16

    const/4 v15, 0x1

    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateWakeupGesture(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_16
    const/4 v15, 0x0

    goto :goto_16

    :sswitch_28
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateWakeupArea(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_29
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_17

    const/4 v8, 0x1

    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailBarWakeUpState(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_17
    const/4 v8, 0x0

    goto :goto_17

    :sswitch_2a
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktaiBarWakeUpState()Z

    move-result v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_18

    const/16 v26, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_18
    const/16 v26, 0x0

    goto :goto_18

    :sswitch_2b
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_19

    sget-object v26, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_19
    const/4 v4, 0x0

    goto :goto_19

    :sswitch_2c
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->removeCocktailUIService()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_2d
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getConfigVersion()I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :sswitch_2e
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getPreferWidth()I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :sswitch_2f
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCategoryFilterStr()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v26, 0x1

    return v26

    :sswitch_30
    const-string/jumbo v26, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getHideEdgeListStr()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v26, 0x1

    return v26

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
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
