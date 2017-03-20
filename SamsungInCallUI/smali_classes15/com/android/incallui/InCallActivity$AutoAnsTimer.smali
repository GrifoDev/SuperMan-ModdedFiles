.class Lcom/android/incallui/InCallActivity$AutoAnsTimer;
.super Landroid/os/CountDownTimer;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAnsTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 3829
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$AutoAnsTimer;->this$0:Lcom/android/incallui/InCallActivity;

    .line 3830
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 3831
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 3835
    const-string v0, "AutoAnsTimer onFinish "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3836
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$AutoAnsTimer;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->answeringMode()V

    .line 3837
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 3842
    return-void
.end method
