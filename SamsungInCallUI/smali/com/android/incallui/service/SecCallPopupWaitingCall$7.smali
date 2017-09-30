.class Lcom/android/incallui/service/SecCallPopupWaitingCall$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$7;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showWaitingCallDialog - onDismiss"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$7;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->access$200(Lcom/android/incallui/service/SecCallPopupWaitingCall;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mIsPopupShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$7;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->access$200(Lcom/android/incallui/service/SecCallPopupWaitingCall;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->recreateNotification()V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$7;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->access$200(Lcom/android/incallui/service/SecCallPopupWaitingCall;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->animateForShow()V

    :cond_0
    return-void
.end method
