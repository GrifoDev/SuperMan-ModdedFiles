.class Lcom/android/incallui/InCallPresenter$SmartAnswerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartAnswerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    .prologue
    .line 3584
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$SmartAnswerBroadcastReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/InCallPresenter;
    .param p2, "x1"    # Lcom/android/incallui/InCallPresenter$1;

    .prologue
    .line 3584
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter$SmartAnswerBroadcastReceiver;-><init>(Lcom/android/incallui/InCallPresenter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 3588
    if-nez p2, :cond_1

    .line 3609
    :cond_0
    :goto_0
    return-void

    .line 3590
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3591
    .local v0, "action":Ljava/lang/String;
    const-string v4, "NFC_TAG_STATUS"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3592
    .local v2, "controller":Z
    const-string v4, "MP3_PATH"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3593
    .local v3, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastReceiver.onReceive() smart answer Broadcast, controller ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",filePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3594
    const-string v4, "com.shhphone.autoanswer.AUTOANSWER_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3595
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 3596
    invoke-static {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSoundPath(Ljava/lang/String;)V

    .line 3597
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter$SmartAnswerBroadcastReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v4, p1}, Lcom/android/incallui/InCallPresenter;->smartAnsweringMode(Landroid/content/Context;)V

    .line 3599
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 3600
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 3602
    const-string v4, "BroadcastReceiver.onReceive() smart answer Broadcast, hasLiveCall"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3603
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3604
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    .line 3605
    invoke-static {v6}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    goto :goto_0
.end method
