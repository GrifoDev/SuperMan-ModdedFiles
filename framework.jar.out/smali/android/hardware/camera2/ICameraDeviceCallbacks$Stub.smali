.class public abstract Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceCallbacks.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceCallbacks"

.field static final TRANSACTION_onCaptureStarted:I = 0x3

.field static final TRANSACTION_onDeviceError:I = 0x1

.field static final TRANSACTION_onDeviceIdle:I = 0x2

.field static final TRANSACTION_onPrepared:I = 0x5

.field static final TRANSACTION_onRepeatingRequestError:I = 0x6

.field static final TRANSACTION_onRequestQueueEmpty:I = 0x7

.field static final TRANSACTION_onResultReceived:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceCallbacks;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/camera2/ICameraDeviceCallbacks;

    return-object v0

    :cond_1
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CaptureResultExtras;

    :goto_0
    invoke-virtual {p0, v0, v5}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    return v9

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onDeviceIdle()V

    return v9

    :sswitch_3
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/impl/CaptureResultExtras;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p0, v4, v6, v7}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    return v9

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CaptureResultExtras;

    :goto_3
    invoke-virtual {p0, v1, v5}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    return v9

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :sswitch_5
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onPrepared(I)V

    return v9

    :sswitch_6
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onRepeatingRequestError(J)V

    return v9

    :sswitch_7
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onRequestQueueEmpty()V

    return v9

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
