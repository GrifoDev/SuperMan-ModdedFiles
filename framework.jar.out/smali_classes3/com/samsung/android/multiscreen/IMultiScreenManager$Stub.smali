.class public abstract Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;
.super Landroid/os/Binder;
.source "IMultiScreenManager.java"

# interfaces
.implements Lcom/samsung/android/multiscreen/IMultiScreenManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiscreen/IMultiScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiscreen.IMultiScreenManager"

.field static final TRANSACTION_bindVirtualScreen:I = 0xa

.field static final TRANSACTION_createVirtualScreen:I = 0x4

.field static final TRANSACTION_getDisplayId:I = 0x1

.field static final TRANSACTION_getDisplayIdByPackage:I = 0xe

.field static final TRANSACTION_getOffset:I = 0x9

.field static final TRANSACTION_getVirtualScreenDisplayId:I = 0xd

.field static final TRANSACTION_isMoving:I = 0xf

.field static final TRANSACTION_moveTaskToDisplay:I = 0x3

.field static final TRANSACTION_moveToDisplay:I = 0x2

.field static final TRANSACTION_moveVirtualScreenToDisplay:I = 0xc

.field static final TRANSACTION_removeVirtualScreen:I = 0x5

.field static final TRANSACTION_setOffset:I = 0x8

.field static final TRANSACTION_setVirtualScreenBound:I = 0x10

.field static final TRANSACTION_startActivity:I = 0x6

.field static final TRANSACTION_startDrag:I = 0x7

.field static final TRANSACTION_unBindVirtualScreen:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.multiscreen.IMultiScreenManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiscreen/IMultiScreenManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiscreen/IMultiScreenManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/multiscreen/IMultiScreenManager;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_1
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->getDisplayId(I)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_2
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->moveToDisplay(Landroid/os/IBinder;I)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_0

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->moveTaskToDisplay(II)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_1

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v8, v10, v4}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->createVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;I)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :sswitch_5
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->removeVirtualScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    :sswitch_6
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    :goto_4
    invoke-virtual {p0, v8, v9, v11}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->startActivity(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    :sswitch_7
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->startDrag(Landroid/os/IBinder;I)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_5

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    :sswitch_8
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x1

    :goto_6
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->setOffset(Landroid/os/IBinder;IIIZ)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_7

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    goto :goto_7

    :sswitch_9
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->getOffset(I)Landroid/graphics/Point;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_8

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/4 v1, 0x1

    return v1

    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_a
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->bindVirtualScreen(I)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_9

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_9

    :sswitch_b
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->unBindVirtualScreen()Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_a

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    :sswitch_c
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->moveVirtualScreenToDisplay(I)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_b

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_b

    :sswitch_d
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->getVirtualScreenDisplayId(Landroid/os/IBinder;)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_e
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->getDisplayIdByPackage(Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_f
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->isMoving(I)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_c

    const/4 v1, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_c

    :sswitch_10
    const-string/jumbo v1, "com.samsung.android.multiscreen.IMultiScreenManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    :goto_d
    invoke-virtual {p0, v7, v10}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;->setVirtualScreenBound(ILandroid/graphics/Rect;)Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_e

    const/4 v1, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_d
    const/4 v10, 0x0

    goto :goto_d

    :cond_e
    const/4 v1, 0x0

    goto :goto_e

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
