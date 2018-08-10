.class public abstract Lcom/samsung/android/hardware/context/ISemContextService$Stub;
.super Landroid/os/Binder;
.source "ISemContextService.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/ISemContextService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/ISemContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/ISemContextService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.hardware.context.ISemContextService"

.field static final TRANSACTION_changeParameters:I = 0x4

.field static final TRANSACTION_getAvailableServiceMap:I = 0x5

.field static final TRANSACTION_getMotionRecognitionService:I = 0x9

.field static final TRANSACTION_initializeService:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_requestHistoryData:I = 0x8

.field static final TRANSACTION_requestToUpdate:I = 0x7

.field static final TRANSACTION_setReferenceData:I = 0x6

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.hardware.context.ISemContextService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/hardware/context/ISemContextService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/hardware/context/ISemContextService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/hardware/context/ISemContextService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v8, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string/jumbo v8, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/samsung/android/hardware/context/SemContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/context/SemContextAttribute;

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v10, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_3
    const-string/jumbo v8, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->initializeService(Landroid/os/IBinder;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_4
    const-string/jumbo v10, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/samsung/android/hardware/context/SemContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/context/SemContextAttribute;

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->changeParameters(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_5
    const-string/jumbo v8, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v9

    :sswitch_6
    const-string/jumbo v10, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v0, v2, v4}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->setReferenceData(II[B)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_7
    const-string/jumbo v8, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->requestToUpdate(Landroid/os/IBinder;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_8
    const-string/jumbo v8, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->requestHistoryData(Landroid/os/IBinder;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_9
    const-string/jumbo v8, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->getMotionRecognitionService()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v9

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
