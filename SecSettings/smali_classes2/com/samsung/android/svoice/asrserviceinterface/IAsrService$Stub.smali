.class public abstract Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;
.super Landroid/os/Binder;
.source "IAsrService.java"

# interfaces
.implements Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_1
    return-object v1

    :cond_2
    instance-of v1, v0, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_1
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->setConfig(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :cond_0
    sget-object v4, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->registerResponseListener(Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_3
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->unregisterResponseListener()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_4
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->startListening()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_5
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->stopListening()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_6
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->cancelRecognition()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_7
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->sendAudio([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_8
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->destroy()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_9
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->setClientParams(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :cond_1
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_1

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
