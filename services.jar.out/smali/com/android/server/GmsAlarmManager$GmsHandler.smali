.class Lcom/android/server/GmsAlarmManager$GmsHandler;
.super Landroid/os/Handler;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "GmsAlarmManager"

    const-string/jumbo v1, "receiver delay check network message"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-get0(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-wrap2(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-wrap0(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v1, "http://www.google.com/"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/android/server/GmsAlarmManager;->-wrap1(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->-set1(Lcom/android/server/GmsAlarmManager;Z)Z

    :goto_1
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->-set5(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-get5(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-get6(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-get6(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->-set1(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->-set1(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-get6(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-get6(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-get1(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_DISABLE_GMS_NETWORK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->-get4(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->-get10(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->-get2(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNet()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->-wrap5(Lcom/android/server/GmsAlarmManager;Z)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->-set0(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-get1(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    const-string/jumbo v0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_ENABLE_GMS_NETWORK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->-get4(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->-get10(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->-get2(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNet()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->-wrap5(Lcom/android/server/GmsAlarmManager;Z)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->-set0(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
