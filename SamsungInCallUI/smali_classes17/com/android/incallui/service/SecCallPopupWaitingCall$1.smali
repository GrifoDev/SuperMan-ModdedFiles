.class Lcom/android/incallui/service/SecCallPopupWaitingCall$1;
.super Ljava/lang/Object;
.source "SecCallPopupWaitingCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 197
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$1;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "pos"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$1;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->dismissWaitingCallPopup()V

    .line 200
    packed-switch p2, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 202
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupUtils;->hangUpThenAnswer(I)V

    goto :goto_0

    .line 205
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupUtils;->hangUpThenAnswer(I)V

    goto :goto_0

    .line 208
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupUtils;->hangUpThenAnswer(I)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
