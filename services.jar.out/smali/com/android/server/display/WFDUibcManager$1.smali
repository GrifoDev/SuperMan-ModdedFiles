.class Lcom/android/server/display/WFDUibcManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WFDUibcManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/WFDUibcManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "intent received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string/jumbo v3, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "displayName"

    const/16 v4, 0x6f

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    const-string/jumbo v4, "displayID"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/display/WFDUibcManager;->-set2(Lcom/android/server/display/WFDUibcManager;I)I

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Presentation Display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v5}, Lcom/android/server/display/WFDUibcManager;->-get8(Lcom/android/server/display/WFDUibcManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string/jumbo v3, "com.samsung.android.video.START_PRESENTATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "com.samsung.android.gallery.action.slideshow.start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v3, v7}, Lcom/android/server/display/WFDUibcManager;->-set0(Lcom/android/server/display/WFDUibcManager;Z)Z

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "WFDUibcManager"

    const-string/jumbo v4, "SlideShow or Video playing with presentation : TRUE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_1
    const-string/jumbo v3, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "displayName"

    const/16 v4, 0x6f

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Presentation Display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v5}, Lcom/android/server/display/WFDUibcManager;->-get8(Lcom/android/server/display/WFDUibcManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/server/display/WFDUibcManager;->-set2(Lcom/android/server/display/WFDUibcManager;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SEM_PRESENTATION_START Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v3, "com.samsung.android.video.END_PRESENTATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "com.samsung.android.gallery.action.slideshow.finish"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v3, v6}, Lcom/android/server/display/WFDUibcManager;->-set0(Lcom/android/server/display/WFDUibcManager;Z)Z

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "WFDUibcManager"

    const-string/jumbo v4, "SlideShow or Video playing with presentation : FALSE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v3, "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v3, v7}, Lcom/android/server/display/WFDUibcManager;->-set1(Lcom/android/server/display/WFDUibcManager;Z)Z

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "WFDUibcManager"

    const-string/jumbo v4, "received KDDI_SOURCE_CONNECT_SUCCESS_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v3, "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v3, v6}, Lcom/android/server/display/WFDUibcManager;->-set1(Lcom/android/server/display/WFDUibcManager;Z)Z

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "WFDUibcManager"

    const-string/jumbo v4, "received KDDI_SOURCE_DISCONNECT_SUCCESS_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
