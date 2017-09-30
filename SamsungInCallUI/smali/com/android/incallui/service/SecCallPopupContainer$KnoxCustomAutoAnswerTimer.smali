.class Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/SecCallPopupContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxCustomAutoAnswerTimer"
.end annotation


# instance fields
.field private mAudioMode:I

.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput p6, p0, Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;->mAudioMode:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    const-string v1, "KnoxCustomAutoAnswerTimer onAnswer"

    invoke-static {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$1600(Lcom/android/incallui/service/SecCallPopupContainer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->onAnswerWithWaitingCheck()V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;->mAudioMode:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxCustomAutoAnswerTimer onTick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$1600(Lcom/android/incallui/service/SecCallPopupContainer;Ljava/lang/String;)V

    return-void
.end method
