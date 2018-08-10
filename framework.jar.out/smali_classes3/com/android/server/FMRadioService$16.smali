.class Lcom/android/server/FMRadioService$16;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEmergencyReceiver onReceive : reason- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get13(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq v0, v6, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    const-string/jumbo v1, "mReceiver: EMERGENCY_STATE_CHANGED - fmradio off"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-wrap10(Lcom/android/server/FMRadioService;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->cancelSeek()V

    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1, v3, v5}, Lcom/android/server/FMRadioService;->-wrap0(Lcom/android/server/FMRadioService;IZ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq v0, v3, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get13(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eq v0, v6, :cond_4

    if-ne v0, v3, :cond_1

    :cond_4
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1, v5}, Lcom/android/server/FMRadioService;->-set6(Lcom/android/server/FMRadioService;Z)Z

    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    iput-boolean v4, v1, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    const-string/jumbo v1, "force stop : remove audiofocus"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get3(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method
