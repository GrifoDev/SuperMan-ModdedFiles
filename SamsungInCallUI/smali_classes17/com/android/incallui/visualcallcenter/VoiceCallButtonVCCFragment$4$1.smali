.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;
.super Ljava/lang/Object;
.source "VoiceCallButtonVCCFragment.java"

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
    .param p1, "this$1"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 818
    const/4 v0, -0x1

    .line 819
    .local v0, "callPathLength":I
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 820
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 822
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mRunning:Z
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 824
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 825
    .local v3, "msgBundle":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 826
    .local v2, "msg":Landroid/os/Message;
    const-string v4, "send dtmf:"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSendNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v5, v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v4

    if-ge v4, v0, :cond_3

    .line 830
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->lastChar:C
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1100(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)C

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v5, v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v6, v6, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v6}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    .line 831
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v5, v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v6, v6, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v6}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    # setter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->lastChar:C
    invoke-static {v4, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1102(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;C)C

    .line 832
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->what:I

    .line 833
    const-string v4, "dtmf_char"

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v5, v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v6, v6, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v6}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 834
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send dtmf_char: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v5, v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v6, v6, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v6}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 836
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mDtmfHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 837
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v5, v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 838
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 861
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "msgBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 862
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VCC_menu_getAction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "msgBundle":Landroid/os/Bundle;
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    iput v4, v2, Landroid/os/Message;->what:I

    .line 842
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 843
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mDtmfHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 844
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # operator++ for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$908(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I

    .line 845
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->lastChar:C
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1100(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_2

    .line 846
    const-string v4, "has a \',\':"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    const/16 v5, 0x20

    # setter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->lastChar:C
    invoke-static {v4, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1102(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;C)C

    .line 848
    const-wide/16 v4, 0x640

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 850
    :cond_2
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 854
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;->this$1:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    iget-object v4, v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    const/4 v5, 0x0

    # setter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mRunning:Z
    invoke-static {v4, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1002(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 865
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "msgBundle":Landroid/os/Bundle;
    :cond_4
    return-void
.end method
