.class Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/WallpaperViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OMCWallpaperUpdatedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wallpaper/WallpaperViewController;Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "WallpaperViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OMCWallpaperUpdatedReceiver : onReceive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.intent.action.RSCUPDATE_START"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/WallpaperViewController;->getLockWallpaperType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
