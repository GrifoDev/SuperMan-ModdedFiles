.class Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;
.super Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;
.source "VideoFileSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/video/VideoFileSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;-><init>()V

    return-void
.end method

.method private getVideoFilePath(Z)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-get1(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-get0(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-wrap1(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-get1(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-get0(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-wrap0(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public deleteVideoFile(Z)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "This service must be run from the owner("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->getVideoFilePath(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public getVideoFileDescriptorAsUser()Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "This service must be run from the owner("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-get1(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-get0(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-wrap1(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x3c000000    # 0.0078125f

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public isVideoFileExists(Z)Z
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "This service must be run from the owner("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->getVideoFilePath(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public renameVideoFile()Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "This service must be run from the owner("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-get1(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-get0(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-wrap1(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-get1(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-get0(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-wrap0(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setVideoLockscreenWallpaperAsOwner()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "This service must be run from the owner("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->getVideoFilePath(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-get0(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setupAdditionalFileInfo(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-set1(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v0, p2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-set0(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;I)I

    return-void
.end method
