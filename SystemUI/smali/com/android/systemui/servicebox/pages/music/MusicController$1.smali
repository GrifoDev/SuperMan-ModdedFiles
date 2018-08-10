.class Lcom/android/systemui/servicebox/pages/music/MusicController$1;
.super Landroid/os/Handler;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string/jumbo v2, "servicebox_music_last_title"

    iget-object v3, v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;->title:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap5(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string/jumbo v2, "servicebox_music_last_artist"

    iget-object v3, v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;->artist:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap5(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string/jumbo v2, "servicebox_music_last_pkg"

    iget-object v3, v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;->pkgName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap5(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MusicController_LOCK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCurrentDataToDB() handler, pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", artist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set4(Lcom/android/systemui/servicebox/pages/music/MusicController;J)J

    return-void
.end method
