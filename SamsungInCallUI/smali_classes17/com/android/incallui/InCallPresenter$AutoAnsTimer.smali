.class Lcom/android/incallui/InCallPresenter$AutoAnsTimer;
.super Landroid/os/CountDownTimer;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAnsTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallPresenter;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 4170
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->this$0:Lcom/android/incallui/InCallPresenter;

    .line 4171
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4172
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 4176
    const-string v1, "AutoAnsTimer onFinish"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4177
    const/4 v0, 0x0

    .line 4178
    .local v0, "isVoicePartyCall":Z
    const-string v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4180
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 4182
    :cond_0
    if-eqz v0, :cond_1

    .line 4183
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->disconnectCallForVoiceParty()V

    .line 4187
    :goto_0
    return-void

    .line 4186
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->answeringMode()V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 4192
    return-void
.end method
