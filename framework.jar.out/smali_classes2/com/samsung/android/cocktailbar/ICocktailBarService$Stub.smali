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

.field static final TRANSACTION_activateCocktailBar:I = 0x28

.field static final TRANSACTION_bindRemoteViewsService:I = 0x14

.field static final TRANSACTION_closeCocktail:I = 0xc

.field static final TRANSACTION_cocktailBarreboot:I = 0x37

.field static final TRANSACTION_cocktailBarshutdown:I = 0x36

.field static final TRANSACTION_deactivateCocktailBar:I = 0x29

.field static final TRANSACTION_disableCocktail:I = 0xe

.field static final TRANSACTION_getAllCocktailIds:I = 0x6

.field static final TRANSACTION_getCategoryFilterStr:I = 0x3a

.field static final TRANSACTION_getCocktaiBarWakeUpState:I = 0x31

.field static final TRANSACTION_getCocktail:I = 0x7

.field static final TRANSACTION_getCocktailBarStateInfo:I = 0x25

.field static final TRANSACTION_getCocktailBarVisibility:I = 0x24

.field static final TRANSACTION_getCocktailId:I = 0xd

.field static final TRANSACTION_getCocktailIds:I = 0xf

.field static final TRANSACTION_getConfigVersion:I = 0x38

.field static final TRANSACTION_getEnabledCocktailIds:I = 0x5

.field static final TRANSACTION_getHideEdgeListStr:I = 0x3b

.field static final TRANSACTION_getPreferWidth:I = 0x39

.field static final TRANSACTION_getWindowType:I = 0x27

.field static final TRANSACTION_isAllowTransientBarCocktailBar:I = 0x33

.field static final TRANSACTION_isBoundCocktailPackage:I = 0x10

.field static final TRANSACTION_isEnabledCocktail:I = 0x11

.field static final TRANSACTION_notifyCocktailViewDataChanged:I = 0x12

.field static final TRANSACTION_notifyCocktailVisibiltyChanged:I = 0x1b

.field static final TRANSACTION_notifyKeyguardState:I = 0x1a

.field static final TRANSACTION_partiallyUpdateCocktail:I = 0x9

.field static final TRANSACTION_partiallyUpdateHelpView:I = 0xa

.field static final TRANSACTION_registerCocktailBarStateListenerCallback:I = 0x22

.field static final TRANSACTION_removeCocktailUIService:I = 0x35

.field static final TRANSACTION_requestToDisableCocktail:I = 0x17

.field static final TRANSACTION_requestToDisableCocktailByCategory:I = 0x19

.field static final TRANSACTION_requestToUpdateCocktail:I = 0x16

.field static final TRANSACTION_requestToUpdateCocktailByCategory:I = 0x18

.field static final TRANSACTION_sendDragEvent:I = 0x1c

.field static final TRANSACTION_sendExtraDataToCocktailBar:I = 0x34

.field static final TRANSACTION_setCocktailBarStatus:I = 0x21

.field static final TRANSACTION_setCocktailBarWakeUpState:I = 0x30

.field static final TRANSACTION_setCocktailHostCallbacks:I = 0x1

.field static final TRANSACTION_setDisableTickerView:I = 0x2a

.field static final TRANSACTION_setEnabledCocktailIds:I = 0x4

.field static final TRANSACTION_setOnPullPendingIntent:I = 0x13

.field static final TRANSACTION_showAndLockCocktailBar:I = 0x1d

.field static final TRANSACTION_showCocktail:I = 0xb

.field static final TRANSACTION_startListening:I = 0x2

.field static final TRANSACTION_stopListening:I = 0x3

.field static final TRANSACTION_switchDefaultCocktail:I = 0x32

.field static final TRANSACTION_unbindRemoteViewsService:I = 0x15

.field static final TRANSACTION_unlockCocktailBar:I = 0x1e

.field static final TRANSACTION_unregisterCocktailBarStateListenerCallback:I = 0x23

.field static final TRANSACTION_updateCocktail:I = 0x8

.field static final TRANSACTION_updateCocktailBarPosition:I = 0x20

.field static final TRANSACTION_updateCocktailBarVisibility:I = 0x1f

.field static final TRANSACTION_updateCocktailBarWindowType:I = 0x26

.field static final TRANSACTION_updateLongpressGesture:I = 0x2d

.field static final TRANSACTION_updateSysfsBarLength:I = 0x2f

.field static final TRANSACTION_updateSysfsDeadZone:I = 0x2e

.field static final TRANSACTION_updateWakeupArea:I = 0x2c

.field static final TRANSACTION_updateWakeupGesture:I = 0x2b


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;
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
    const-string/jumbo v1, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 28
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

    .line 711
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v27

    return v27

    .line 43
    :sswitch_0
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v27, 0x1

    return v27

    .line 48
    :sswitch_1
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v6

    .line 52
    .local v6, "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 54
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 55
    .local v17, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v15, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/16 v27, 0x1

    return v27

    .line 61
    .end local v6    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    :sswitch_2
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v6

    .line 65
    .restart local v6    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 67
    .restart local v15    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 68
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v15, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/16 v27, 0x1

    return v27

    .line 74
    .end local v6    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    :sswitch_3
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->stopListening(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/16 v27, 0x1

    return v27

    .line 83
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 86
    .local v9, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setEnabledCocktailIds([I)V

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    const/16 v27, 0x1

    return v27

    .line 92
    .end local v9    # "_arg0":[I
    :sswitch_5
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getEnabledCocktailIds()[I

    move-result-object v26

    .line 94
    .local v26, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 96
    const/16 v27, 0x1

    return v27

    .line 100
    .end local v26    # "_result":[I
    :sswitch_6
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getAllCocktailIds()[I

    move-result-object v26

    .line 102
    .restart local v26    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 104
    const/16 v27, 0x1

    return v27

    .line 108
    .end local v26    # "_result":[I
    :sswitch_7
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v22

    .line 112
    .local v22, "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v22, :cond_0

    .line 114
    const/16 v27, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/16 v27, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cocktailbar/Cocktail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    :goto_0
    const/16 v27, 0x1

    return v27

    .line 118
    :cond_0
    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 124
    .end local v3    # "_arg0":I
    .end local v22    # "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    :sswitch_8
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 128
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_1

    .line 129
    sget-object v27, Lcom/samsung/android/cocktailbar/CocktailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 135
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 136
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v14, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/16 v27, 0x1

    return v27

    .line 132
    .end local v17    # "_arg2":I
    :cond_1
    const/4 v14, 0x0

    .local v14, "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    goto :goto_1

    .line 142
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :sswitch_9
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 146
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_2

    .line 147
    sget-object v27, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/RemoteViews;

    .line 153
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 154
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v13, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/16 v27, 0x1

    return v27

    .line 150
    .end local v17    # "_arg2":I
    :cond_2
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/widget/RemoteViews;
    goto :goto_2

    .line 160
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_a
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 164
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_3

    .line 165
    sget-object v27, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/RemoteViews;

    .line 171
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 172
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v13, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/16 v27, 0x1

    return v27

    .line 168
    .end local v17    # "_arg2":I
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_3

    .line 178
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_b
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 182
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 183
    .local v10, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->showCocktail(Ljava/lang/String;I)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/16 v27, 0x1

    return v27

    .line 189
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    :sswitch_c
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 193
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 195
    .restart local v10    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 196
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v10, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->closeCocktail(Ljava/lang/String;II)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    const/16 v27, 0x1

    return v27

    .line 202
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    .end local v17    # "_arg2":I
    :sswitch_d
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 206
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_4

    .line 207
    sget-object v27, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 212
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result v21

    .line 213
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/16 v27, 0x1

    return v27

    .line 210
    .end local v21    # "_result":I
    :cond_4
    const/4 v11, 0x0

    .local v11, "_arg1":Landroid/content/ComponentName;
    goto :goto_4

    .line 219
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Landroid/content/ComponentName;
    :sswitch_e
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 223
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_5

    .line 224
    sget-object v27, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 229
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/16 v27, 0x1

    return v27

    .line 227
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Landroid/content/ComponentName;
    goto :goto_5

    .line 235
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Landroid/content/ComponentName;
    :sswitch_f
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 239
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_6

    .line 240
    sget-object v27, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 245
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I

    move-result-object v26

    .line 246
    .restart local v26    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 248
    const/16 v27, 0x1

    return v27

    .line 243
    .end local v26    # "_result":[I
    :cond_6
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Landroid/content/ComponentName;
    goto :goto_6

    .line 252
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Landroid/content/ComponentName;
    :sswitch_10
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 256
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 257
    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isBoundCocktailPackage(Ljava/lang/String;I)Z

    move-result v25

    .line 258
    .local v25, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v25, :cond_7

    const/16 v27, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/16 v27, 0x1

    return v27

    .line 259
    :cond_7
    const/16 v27, 0x0

    goto :goto_7

    .line 264
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    .end local v25    # "_result":Z
    :sswitch_11
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 268
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_8

    .line 269
    sget-object v27, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 274
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v25

    .line 275
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v25, :cond_9

    const/16 v27, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/16 v27, 0x1

    return v27

    .line 272
    .end local v25    # "_result":Z
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Landroid/content/ComponentName;
    goto :goto_8

    .line 276
    .end local v11    # "_arg1":Landroid/content/ComponentName;
    .restart local v25    # "_result":Z
    :cond_9
    const/16 v27, 0x0

    goto :goto_9

    .line 281
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v25    # "_result":Z
    :sswitch_12
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 285
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 287
    .restart local v10    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 288
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v10, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/16 v27, 0x1

    return v27

    .line 294
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    .end local v17    # "_arg2":I
    :sswitch_13
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 298
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 300
    .restart local v10    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 302
    .restart local v17    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_a

    .line 303
    sget-object v27, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    .line 308
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v7, v10, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setOnPullPendingIntent(Ljava/lang/String;IILandroid/app/PendingIntent;)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/16 v27, 0x1

    return v27

    .line 306
    :cond_a
    const/16 v19, 0x0

    .local v19, "_arg3":Landroid/app/PendingIntent;
    goto :goto_a

    .line 314
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v19    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_14
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 318
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 320
    .restart local v10    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_b

    .line 321
    sget-object v27, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 327
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 328
    .local v20, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v7, v10, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/16 v27, 0x1

    return v27

    .line 324
    .end local v20    # "_arg3":Landroid/os/IBinder;
    :cond_b
    const/16 v18, 0x0

    .local v18, "_arg2":Landroid/content/Intent;
    goto :goto_b

    .line 334
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    .end local v18    # "_arg2":Landroid/content/Intent;
    :sswitch_15
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 338
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 340
    .restart local v10    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_c

    .line 341
    sget-object v27, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 346
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v10, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/16 v27, 0x1

    return v27

    .line 344
    :cond_c
    const/16 v18, 0x0

    .restart local v18    # "_arg2":Landroid/content/Intent;
    goto :goto_c

    .line 352
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    .end local v18    # "_arg2":Landroid/content/Intent;
    :sswitch_16
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 355
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktail(I)Z

    move-result v25

    .line 356
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v25, :cond_d

    const/16 v27, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    const/16 v27, 0x1

    return v27

    .line 357
    :cond_d
    const/16 v27, 0x0

    goto :goto_d

    .line 362
    .end local v3    # "_arg0":I
    .end local v25    # "_result":Z
    :sswitch_17
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 365
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktail(I)Z

    move-result v25

    .line 366
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v25, :cond_e

    const/16 v27, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    const/16 v27, 0x1

    return v27

    .line 367
    :cond_e
    const/16 v27, 0x0

    goto :goto_e

    .line 372
    .end local v3    # "_arg0":I
    .end local v25    # "_result":Z
    :sswitch_18
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 375
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktailByCategory(I)Z

    move-result v25

    .line 376
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v25, :cond_f

    const/16 v27, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/16 v27, 0x1

    return v27

    .line 377
    :cond_f
    const/16 v27, 0x0

    goto :goto_f

    .line 382
    .end local v3    # "_arg0":I
    .end local v25    # "_result":Z
    :sswitch_19
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 385
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktailByCategory(I)Z

    move-result v25

    .line 386
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    if-eqz v25, :cond_10

    const/16 v27, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/16 v27, 0x1

    return v27

    .line 387
    :cond_10
    const/16 v27, 0x0

    goto :goto_10

    .line 392
    .end local v3    # "_arg0":I
    .end local v25    # "_result":Z
    :sswitch_1a
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_11

    const/4 v8, 0x1

    .line 395
    .local v8, "_arg0":Z
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyKeyguardState(Z)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/16 v27, 0x1

    return v27

    .line 394
    .end local v8    # "_arg0":Z
    :cond_11
    const/4 v8, 0x0

    goto :goto_11

    .line 401
    :sswitch_1b
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 405
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 406
    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailVisibiltyChanged(II)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    const/16 v27, 0x1

    return v27

    .line 412
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 416
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_12

    .line 417
    sget-object v27, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/DragEvent;

    .line 422
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->sendDragEvent(ILandroid/view/DragEvent;)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    const/16 v27, 0x1

    return v27

    .line 420
    :cond_12
    const/4 v12, 0x0

    .local v12, "_arg1":Landroid/view/DragEvent;
    goto :goto_12

    .line 428
    .end local v3    # "_arg0":I
    .end local v12    # "_arg1":Landroid/view/DragEvent;
    :sswitch_1d
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->showAndLockCocktailBar()V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/16 v27, 0x1

    return v27

    .line 435
    :sswitch_1e
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 438
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unlockCocktailBar(I)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    const/16 v27, 0x1

    return v27

    .line 444
    .end local v3    # "_arg0":I
    :sswitch_1f
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 447
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarVisibility(I)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    const/16 v27, 0x1

    return v27

    .line 453
    .end local v3    # "_arg0":I
    :sswitch_20
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 456
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarPosition(I)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/16 v27, 0x1

    return v27

    .line 462
    .end local v3    # "_arg0":I
    :sswitch_21
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_13

    const/4 v8, 0x1

    .line 466
    .local v8, "_arg0":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_14

    const/16 v16, 0x1

    .line 467
    .local v16, "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailBarStatus(ZZ)V

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    const/16 v27, 0x1

    return v27

    .line 464
    .end local v8    # "_arg0":Z
    .end local v16    # "_arg1":Z
    :cond_13
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_13

    .line 466
    :cond_14
    const/16 v16, 0x0

    goto :goto_14

    .line 473
    .end local v8    # "_arg0":Z
    :sswitch_22
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 477
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_15

    .line 478
    sget-object v27, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 483
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    const/16 v27, 0x1

    return v27

    .line 481
    :cond_15
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Landroid/content/ComponentName;
    goto :goto_15

    .line 489
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v11    # "_arg1":Landroid/content/ComponentName;
    :sswitch_23
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 492
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    const/16 v27, 0x1

    return v27

    .line 498
    .end local v5    # "_arg0":Landroid/os/IBinder;
    :sswitch_24
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailBarVisibility()I

    move-result v21

    .line 500
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    const/16 v27, 0x1

    return v27

    .line 506
    .end local v21    # "_result":I
    :sswitch_25
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v23

    .line 508
    .local v23, "_result":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v23, :cond_16

    .line 510
    const/16 v27, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 516
    :goto_16
    const/16 v27, 0x1

    return v27

    .line 514
    :cond_16
    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 520
    .end local v23    # "_result":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :sswitch_26
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 524
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 525
    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarWindowType(Ljava/lang/String;I)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/16 v27, 0x1

    return v27

    .line 531
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    :sswitch_27
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getWindowType()I

    move-result v21

    .line 533
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    const/16 v27, 0x1

    return v27

    .line 539
    .end local v21    # "_result":I
    :sswitch_28
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->activateCocktailBar()V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    const/16 v27, 0x1

    return v27

    .line 546
    :sswitch_29
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->deactivateCocktailBar()V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/16 v27, 0x1

    return v27

    .line 553
    :sswitch_2a
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 556
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setDisableTickerView(I)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/16 v27, 0x1

    return v27

    .line 562
    .end local v3    # "_arg0":I
    :sswitch_2b
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 566
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_17

    const/16 v16, 0x1

    .line 567
    .restart local v16    # "_arg1":Z
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateWakeupGesture(IZ)V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    const/16 v27, 0x1

    return v27

    .line 566
    .end local v16    # "_arg1":Z
    :cond_17
    const/16 v16, 0x0

    goto :goto_17

    .line 573
    .end local v3    # "_arg0":I
    :sswitch_2c
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 576
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateWakeupArea(I)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    const/16 v27, 0x1

    return v27

    .line 582
    .end local v3    # "_arg0":I
    :sswitch_2d
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_18

    const/4 v8, 0x1

    .line 585
    .local v8, "_arg0":Z
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateLongpressGesture(Z)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/16 v27, 0x1

    return v27

    .line 584
    .end local v8    # "_arg0":Z
    :cond_18
    const/4 v8, 0x0

    goto :goto_18

    .line 591
    :sswitch_2e
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 594
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateSysfsDeadZone(I)V

    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    const/16 v27, 0x1

    return v27

    .line 600
    .end local v3    # "_arg0":I
    :sswitch_2f
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 603
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateSysfsBarLength(I)V

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    const/16 v27, 0x1

    return v27

    .line 609
    .end local v3    # "_arg0":I
    :sswitch_30
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_19

    const/4 v8, 0x1

    .line 612
    .restart local v8    # "_arg0":Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailBarWakeUpState(Z)V

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    const/16 v27, 0x1

    return v27

    .line 611
    .end local v8    # "_arg0":Z
    :cond_19
    const/4 v8, 0x0

    goto :goto_19

    .line 618
    :sswitch_31
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktaiBarWakeUpState()Z

    move-result v25

    .line 620
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    if-eqz v25, :cond_1a

    const/16 v27, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/16 v27, 0x1

    return v27

    .line 621
    :cond_1a
    const/16 v27, 0x0

    goto :goto_1a

    .line 626
    .end local v25    # "_result":Z
    :sswitch_32
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->switchDefaultCocktail()V

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    const/16 v27, 0x1

    return v27

    .line 633
    :sswitch_33
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isAllowTransientBarCocktailBar()Z

    move-result v25

    .line 635
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    if-eqz v25, :cond_1b

    const/16 v27, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    const/16 v27, 0x1

    return v27

    .line 636
    :cond_1b
    const/16 v27, 0x0

    goto :goto_1b

    .line 641
    .end local v25    # "_result":Z
    :sswitch_34
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_1c

    .line 644
    sget-object v27, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 649
    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    const/16 v27, 0x1

    return v27

    .line 647
    :cond_1c
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/os/Bundle;
    goto :goto_1c

    .line 655
    .end local v4    # "_arg0":Landroid/os/Bundle;
    :sswitch_35
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->removeCocktailUIService()V

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    const/16 v27, 0x1

    return v27

    .line 662
    :sswitch_36
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 665
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->cocktailBarshutdown(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    const/16 v27, 0x1

    return v27

    .line 671
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 674
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->cocktailBarreboot(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    const/16 v27, 0x1

    return v27

    .line 680
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getConfigVersion()I

    move-result v21

    .line 682
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/16 v27, 0x1

    return v27

    .line 688
    .end local v21    # "_result":I
    :sswitch_39
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getPreferWidth()I

    move-result v21

    .line 690
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    const/16 v27, 0x1

    return v27

    .line 696
    .end local v21    # "_result":I
    :sswitch_3a
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCategoryFilterStr()Ljava/lang/String;

    move-result-object v24

    .line 698
    .local v24, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 700
    const/16 v27, 0x1

    return v27

    .line 704
    .end local v24    # "_result":Ljava/lang/String;
    :sswitch_3b
    const-string/jumbo v27, "com.samsung.android.cocktailbar.ICocktailBarService"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getHideEdgeListStr()Ljava/lang/String;

    move-result-object v24

    .line 706
    .restart local v24    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 708
    const/16 v27, 0x1

    return v27

    .line 39
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
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
