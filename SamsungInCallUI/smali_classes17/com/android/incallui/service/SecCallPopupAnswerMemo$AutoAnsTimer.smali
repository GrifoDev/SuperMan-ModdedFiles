.class Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;
.super Landroid/os/CountDownTimer;
.source "SecCallPopupAnswerMemo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/SecCallPopupAnswerMemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAnsTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupAnswerMemo;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupAnswerMemo;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->this$0:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "AutoAnsTimer onFinish "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->this$0:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    # getter for: Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->access$000(Lcom/android/incallui/service/SecCallPopupAnswerMemo;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->this$0:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    # getter for: Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->access$000(Lcom/android/incallui/service/SecCallPopupAnswerMemo;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->answeringMode()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->this$0:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I
    invoke-static {v0, v1}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->access$102(Lcom/android/incallui/service/SecCallPopupAnswerMemo;I)I

    return-void
.end method

.method public onTick(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoAnsTimer onTick elapsedAMTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->this$0:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    # getter for: Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->access$100(Lcom/android/incallui/service/SecCallPopupAnswerMemo;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->this$0:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    # operator++ for: Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I
    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->access$108(Lcom/android/incallui/service/SecCallPopupAnswerMemo;)I

    return-void
.end method
