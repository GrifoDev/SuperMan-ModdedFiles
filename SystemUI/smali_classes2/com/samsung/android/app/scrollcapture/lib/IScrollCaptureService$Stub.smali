.class public abstract Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;
.super Landroid/os/Binder;
.source "IScrollCaptureService.java"

# interfaces
.implements Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_1
    return-object v1

    :cond_2
    instance-of v1, v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    return-object v0
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
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_1
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->canScrollCapture(Landroid/os/IBinder;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->isUiActivated()Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_1

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_1
    const/4 v10, 0x1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_2

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->startCapture(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_3

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_2
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    goto :goto_3

    :sswitch_4
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_4

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->onGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_5

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_4
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    goto :goto_4

    :cond_5
    const/4 v10, 0x1

    goto :goto_5

    :sswitch_5
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_6

    const/4 v8, 0x0

    :goto_6
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->onGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_7

    const/4 v10, 0x0

    :goto_7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_6
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    goto :goto_6

    :cond_7
    const/4 v10, 0x1

    goto :goto_7

    :sswitch_6
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->setCustomSettingFilePath(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_8

    const/4 v10, 0x0

    :goto_8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_8
    const/4 v10, 0x1

    goto :goto_8

    :sswitch_7
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_9

    const/4 v5, 0x0

    :goto_9
    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->registerNotification(ILandroid/app/Notification;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_a

    const/4 v10, 0x0

    :goto_a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_9
    sget-object v10, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification;

    goto :goto_9

    :cond_a
    const/4 v10, 0x1

    goto :goto_a

    :sswitch_8
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->cancelNotification(I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_b

    const/4 v10, 0x0

    :goto_b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_b
    const/4 v10, 0x1

    goto :goto_b

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
