.class public abstract Lcom/samsung/android/virtualspace/IVSScreen$Stub;
.super Landroid/os/Binder;
.source "IVSScreen.java"

# interfaces
.implements Lcom/samsung/android/virtualspace/IVSScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/virtualspace/IVSScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/virtualspace/IVSScreen$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.virtualspace.IVSScreen"

.field static final TRANSACTION_clear:I = 0xc

.field static final TRANSACTION_close:I = 0xb

.field static final TRANSACTION_dispatchInputEvent:I = 0x2

.field static final TRANSACTION_getAppOrientation:I = 0xa

.field static final TRANSACTION_getBounds:I = 0x9

.field static final TRANSACTION_getOrientation:I = 0x6

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_getRotation:I = 0x5

.field static final TRANSACTION_getSize:I = 0x8

.field static final TRANSACTION_launchActivity:I = 0x1

.field static final TRANSACTION_redirectSystemWindows:I = 0x13

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_releaseFocus:I = 0xe

.field static final TRANSACTION_resendState:I = 0x12

.field static final TRANSACTION_setPriority:I = 0x11

.field static final TRANSACTION_setRotation:I = 0xf

.field static final TRANSACTION_setSurface:I = 0x10

.field static final TRANSACTION_takeFocus:I = 0xd

.field static final TRANSACTION_unregisterCallback:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.virtualspace.IVSScreen"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/virtualspace/IVSScreen;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/virtualspace/IVSScreen;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/virtualspace/IVSScreen$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_0
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_1
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->launchActivity(Landroid/content/Intent;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputEvent;

    :goto_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->dispatchInputEvent(Landroid/view/InputEvent;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_3

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :sswitch_3
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreenCallback;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->registerCallback(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_4
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreenCallback;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->unregisterCallback(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_5
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->getRotation()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_6
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->getOrientation()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_7
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->getPriority()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_8
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v2, p3, v10}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v10, 0x1

    return v10

    :cond_4
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :sswitch_9
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_5

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v3, p3, v10}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/4 v10, 0x1

    return v10

    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :sswitch_a
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->getAppOrientation()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_b
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->close()V

    const/4 v10, 0x1

    return v10

    :sswitch_c
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->clear()V

    const/4 v10, 0x1

    return v10

    :sswitch_d
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->takeFocus()V

    const/4 v10, 0x1

    return v10

    :sswitch_e
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->releaseFocus()V

    const/4 v10, 0x1

    return v10

    :sswitch_f
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->setRotation(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    :goto_6
    invoke-virtual {p0, v5}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->setSurface(Landroid/view/Surface;)V

    const/4 v10, 0x1

    return v10

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    :sswitch_11
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->setPriority(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_12
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->resendState()V

    const/4 v10, 0x1

    return v10

    :sswitch_13
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSScreen"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    const/4 v7, 0x1

    :goto_7
    invoke-virtual {p0, v0, v7}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->redirectSystemWindows(IZ)V

    const/4 v10, 0x1

    return v10

    :cond_7
    const/4 v7, 0x0

    goto :goto_7

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
