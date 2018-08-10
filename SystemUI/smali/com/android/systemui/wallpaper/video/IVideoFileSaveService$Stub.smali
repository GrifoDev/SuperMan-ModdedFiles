.class public abstract Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;
.super Landroid/os/Binder;
.source "IVideoFileSaveService.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string/jumbo v5, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;->setupAdditionalFileInfo(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_2
    const-string/jumbo v7, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;->getVideoFileDescriptorAsUser()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;->isVideoFileExists(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v7, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;->deleteVideoFile(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :sswitch_5
    const-string/jumbo v7, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;->renameVideoFile()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_6
    const-string/jumbo v5, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;->setVideoLockscreenWallpaperAsOwner()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
