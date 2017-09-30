.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;


# direct methods
.method constructor <init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v1, v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v0, v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v1, v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1100(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const-string v3, "send dtmf:"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSendNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v3, v3, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v3}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v3

    if-ge v3, v0, :cond_3

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v3, v3, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v3}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)C

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v5, v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v3, v3, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v5, v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1202(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;C)C

    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    const-string v3, "dtmf_char"

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v5, v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send dtmf_char: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v5, v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v1, v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    iget-object v1, v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mDtmfHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v1, v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v2, v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VCC_menu_getAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v1, v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    iget-object v1, v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mDtmfHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v1, v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1008(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v1, v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    const-string v1, "has a \',\':"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v1, v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1202(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;C)C

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :cond_2
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v1, v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1102(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    return-void
.end method
