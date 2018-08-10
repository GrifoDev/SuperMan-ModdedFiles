.class Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_poc_application_complete"

    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-set0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;I)I

    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] POC event Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] Force wait for shortPOC Model, So ignore complete message"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->pgBarHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-object v1, v1, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->pgBarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finishReadPoc()V

    goto :goto_0
.end method
