.class Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;
.super Landroid/os/Handler;
.source "CaTimeChangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1011

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "context is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1012

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "intent is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1013

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-get1(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Time Change, auto old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-wrap0(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v2, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-set0(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;Z)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "settings not found"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_3

    goto :goto_2
.end method
