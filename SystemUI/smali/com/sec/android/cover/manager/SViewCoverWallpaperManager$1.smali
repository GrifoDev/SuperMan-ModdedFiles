.class Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCoverBackground()V
    .locals 4

    const/4 v3, -0x1

    invoke-static {}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onReceive : Wallpaper changed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string/jumbo v2, "s_view_cover_skin_color"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string/jumbo v2, "s_view_cover_skin_color"

    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap3(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    goto :goto_0
.end method

.method public onEmergencyStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    return-void
.end method

.method public onOpenThemeChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    return-void
.end method

.method public onUserSwitched(II)V
    .locals 5

    invoke-static {}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUserSwitched() newUserId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " oldUserId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap3(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "It\'s Knox UserSwitching"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap0(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
