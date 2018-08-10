.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;
.super Landroid/os/AsyncTask;
.source "KeyguardWallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->migrateOldKeyguardWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field final synthetic val$wallpaperPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->val$wallpaperPath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->val$wallpaperPath:Ljava/lang/String;

    const-string/jumbo v7, "/data/data/com.android.systemui/lockscreen_wallpaper.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/user_de/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/com.android.systemui/lockscreen_wallpaper.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget-object v6, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    :try_start_1
    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget-object v6, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lockscreen_wallpaper_path"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-object v10

    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->val$wallpaperPath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    const-string/jumbo v6, "KeyguardWallpaperController"

    const-string/jumbo v7, "Can not closed inputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v6, "KeyguardWallpaperController"

    const-string/jumbo v7, "File not found."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_4
    const-string/jumbo v6, "KeyguardWallpaperController"

    const-string/jumbo v7, "Can not access to setStream"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_3
    move-exception v3

    :try_start_6
    const-string/jumbo v6, "KeyguardWallpaperController"

    const-string/jumbo v7, "Can not closed inputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_2
    :try_start_8
    throw v6

    :catch_4
    move-exception v3

    const-string/jumbo v7, "KeyguardWallpaperController"

    const-string/jumbo v8, "Can not closed inputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string/jumbo v6, "KeyguardWallpaperController"

    const-string/jumbo v7, "Invalid file path."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1
.end method
