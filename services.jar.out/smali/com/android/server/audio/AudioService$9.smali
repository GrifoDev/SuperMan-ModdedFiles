.class Lcom/android/server/audio/AudioService$9;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService;->runSoundAssistant()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get10(Lcom/android/server/audio/AudioService;)Landroid/app/ActivityManager;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v7, "activity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->-set1(Lcom/android/server/audio/AudioService;Landroid/app/ActivityManager;)Landroid/app/ActivityManager;

    :cond_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get10(Lcom/android/server/audio/AudioService;)Landroid/app/ActivityManager;

    move-result-object v5

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    const-string/jumbo v5, "com.sec.android.soundassistant.services.SoundAssistService"

    iget-object v6, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "SoundAssistant already started"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v8}, Lcom/android/server/audio/AudioService;->-set38(Lcom/android/server/audio/AudioService;Z)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.sec.android.soundassistant.SOUNDASSIST_INTENT_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "com.samsung.android.soundassistant"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const-wide/16 v6, 0xbb8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v8}, Lcom/android/server/audio/AudioService;->-set38(Lcom/android/server/audio/AudioService;Z)Z

    return-void

    :catch_1
    move-exception v1

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "failed start service"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
