.class public abstract Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;
.super Landroid/os/Binder;
.source "IMotionRecognitionService.java"

# interfaces
.implements Lcom/samsung/android/gesture/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/IMotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/IMotionRecognitionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.gesture.IMotionRecognitionService"

.field static final TRANSACTION_getPickUpMotionStatus:I = 0x3

.field static final TRANSACTION_getSSPstatus:I = 0x2

.field static final TRANSACTION_isAvailable:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_resetMotionEngine:I = 0x8

.field static final TRANSACTION_setMotionAngle:I = 0x6

.field static final TRANSACTION_setMotionTiltLevel:I = 0x7

.field static final TRANSACTION_setTestSensor:I = 0xa

.field static final TRANSACTION_unregisterCallback:I = 0x4

.field static final TRANSACTION_useMotionAlways:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/gesture/IMotionRecognitionService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v7, v2, v3}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->registerCallback(Landroid/os/IBinder;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_2
    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getSSPstatus()Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getPickUpMotionStatus()Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->unregisterCallback(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_5
    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->useMotionAlways(Landroid/os/IBinder;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :sswitch_6
    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v7, v2}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->setMotionAngle(Landroid/os/IBinder;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_7
    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->setMotionTiltLevel(IIIIII)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_8
    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->resetMotionEngine()I

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :sswitch_9
    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->isAvailable(I)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_a
    const-string/jumbo v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->setTestSensor()Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
