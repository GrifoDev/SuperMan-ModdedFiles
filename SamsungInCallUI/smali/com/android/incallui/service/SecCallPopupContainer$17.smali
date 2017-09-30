.class Lcom/android/incallui/service/SecCallPopupContainer$17;
.super Landroid/view/View$AccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupContainer;->initVoiceAssistant()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$17;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    const/16 v2, 0xaa

    const/4 v4, 0x1

    const-string v0, "com.android.incallui.InCallActivity"

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const-string v0, "SecCallPopupContainer"

    const-string v1, "dispatchPopulateAccessibilityEvent()"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$17;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$3100(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$17;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$3200(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$17;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$3200(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$17;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$3200(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return v4
.end method
