.class public Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;
.super Ljava/lang/Object;
.source "VideoFileSaveServiceWrapper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;


# instance fields
.field private mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public deleteVideoFile(Z)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {v1, p1}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->deleteVideoFile(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public getVideoFileDescriptorAsUser()Landroid/os/ParcelFileDescriptor;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {v1}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->getVideoFileDescriptorAsUser()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public isVideoFileExists(Z)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {v1, p1}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->isVideoFileExists(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public renameVideoFile()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {v1}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->renameVideoFile()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public setVideoLockscreenWallpaperAsOwner()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {v1}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->setVideoLockscreenWallpaperAsOwner()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setupAdditionalFileInfo(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->setupAdditionalFileInfo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
