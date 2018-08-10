.class Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;
.super Landroid/os/Handler;
.source "PocBalanceProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/PocBalanceProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v2, 0x63

    const/4 v4, 0x1

    const/16 v3, 0x64

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iput v3, v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget v0, v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] complete progress due to : D2 short:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / SecDisplayUtils.isPocDream1NA() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] complete progress DB result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-set0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iput v3, v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget v0, v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    if-le v0, v3, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "100%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget v0, v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finishReadPoc()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget v0, v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget v1, v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget v1, v1, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget v2, v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
