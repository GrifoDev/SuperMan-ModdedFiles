.class Lcom/android/incallui/service/SecCallPopupWaitingCall$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$3;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$3;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->dismissWaitingCallPopup()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/service/SecCallPopupUtils;->onAnswer()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/service/SecCallPopupUtils;->onAnswerWithMerge()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupUtils;->hangUpThenAnswer(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
