.class Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->loginRichScreenServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;->this$0:Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;

    iput-object p2, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/cmdm/control/util/PrintLog;->setLogOnOff(Z)V

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;->this$0:Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;

    const-string v1, " loginRichScreenServer init again"

    invoke-static {v0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$100(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;->this$0:Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;

    invoke-static {}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$300(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;->val$token:Ljava/lang/String;

    const-string v2, "005001"

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->RichScrnCMCCSSOLogin(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$402(Lcom/cmdm/control/util/client/ResultEntity;)Lcom/cmdm/control/util/client/ResultEntity;

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$502(Z)Z

    invoke-static {}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$400()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$400()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$602(Z)Z

    invoke-static {}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$400()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultEntity;->getResMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$702(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;->this$0:Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bLoginSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$600()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LoginString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$700()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$100(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$600()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;->this$0:Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;

    invoke-static {v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$800(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;)Lcom/android/incallui/richscreen/GetTokenService;

    sput v3, Lcom/android/incallui/richscreen/GetTokenService;->tryLoginRichScreenServerCount:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;->this$0:Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;

    invoke-static {v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$800(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;)Lcom/android/incallui/richscreen/GetTokenService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/richscreen/GetTokenService;->cleanCMCCSSO()V

    goto :goto_0
.end method
