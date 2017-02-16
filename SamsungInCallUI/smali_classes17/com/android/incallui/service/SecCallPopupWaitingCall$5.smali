.class Lcom/android/incallui/service/SecCallPopupWaitingCall$5;
.super Ljava/lang/Object;
.source "SecCallPopupWaitingCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .param p1, "this$0"    # Lcom/android/incallui/service/SecCallPopupWaitingCall;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$5;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$5;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->dismissWaitingCallPopup()V

    .line 289
    packed-switch p2, :pswitch_data_0

    .line 299
    :goto_0
    return-void

    .line 291
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$5;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    # getter for: Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->access$000(Lcom/android/incallui/service/SecCallPopupWaitingCall;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/incallui/service/SecCallPopupUtils;->onAnswer(Landroid/content/Context;I)V

    goto :goto_0

    .line 294
    :pswitch_1
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupUtils;->hangUpThenAnswer(I)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
