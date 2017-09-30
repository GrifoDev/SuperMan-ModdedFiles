.class Lcom/android/incallui/StatusBarNotifier$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private prevSecWFCRegState:Z

.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier$2;->prevSecWFCRegState:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "StatusBarNotifier"

    const-string v1, "SecWFC notification helper : incoming msg"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const-string v0, "StatusBarNotifier"

    const-string v1, "SecWFC notification helper : incoming msg"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {v0}, Lcom/android/incallui/StatusBarNotifier;->access$100(Lcom/android/incallui/StatusBarNotifier;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {v0}, Lcom/android/incallui/StatusBarNotifier;->access$100(Lcom/android/incallui/StatusBarNotifier;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier$2;->prevSecWFCRegState:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier$2;->prevSecWFCRegState:Z

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {v0}, Lcom/android/incallui/StatusBarNotifier;->access$200(Lcom/android/incallui/StatusBarNotifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    :cond_0
    return-void
.end method
