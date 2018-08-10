.class public Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/WallpaperUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockWallpaperType"
.end annotation


# instance fields
.field infinityName:Ljava/lang/String;

.field isExternalLiveWallpaper:Z

.field isInfinityWallpaper:Z

.field isNotSupportedKWPType:Z

.field isSupportedKWPType:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isExternalLiveWallpaper:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isSupportedKWPType:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isNotSupportedKWPType:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->-wrap0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method setExternalLiveWallpaper()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isExternalLiveWallpaper:Z

    return-object p0
.end method

.method setInfinityWallpaper()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    return-object p0
.end method

.method setNotSupportedKWPType()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isNotSupportedKWPType:Z

    return-object p0
.end method

.method setSupportedKWPType()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isSupportedKWPType:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "external="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isExternalLiveWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "infinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "kwp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isSupportedKWPType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "not kwp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isNotSupportedKWPType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pkg name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
