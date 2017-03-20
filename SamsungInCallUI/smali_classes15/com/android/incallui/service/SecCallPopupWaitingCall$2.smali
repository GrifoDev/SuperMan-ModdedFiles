.class Lcom/android/incallui/service/SecCallPopupWaitingCall$2;
.super Ljava/lang/Object;
.source "SecCallPopupWaitingCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 222
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$2;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall$2;->this$0:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->dismissWaitingCallPopup()V

    .line 225
    return-void
.end method
