.class Lcom/android/incallui/operator/chn/SpamCallServiceMgr$2;
.super Lcom/bst/spamcall/numbermark/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/chn/SpamCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/chn/SpamCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr$2;->this$0:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    invoke-direct {p0}, Lcom/bst/spamcall/numbermark/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSpamNumInfoComplete(Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;)V
    .locals 2

    const-string v0, "onGetSpamNumInfoComplete "

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr$2;->this$0:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->access$202(Lcom/android/incallui/operator/chn/SpamCallServiceMgr;Z)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr$2;->this$0:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->access$300(Lcom/android/incallui/operator/chn/SpamCallServiceMgr;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/incallui/operator/chn/SpamCallInfo;->setSpamCallInfo(Lcom/android/incallui/Call;Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartInfoQueryComplete()V

    return-void
.end method

.method public onGetSpamNumInfoFailure(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr$2;->this$0:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->access$202(Lcom/android/incallui/operator/chn/SpamCallServiceMgr;Z)Z

    const-string v0, "onGetSpamNumInfoFailure"

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->access$000(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartInfoQueryComplete()V

    return-void
.end method
