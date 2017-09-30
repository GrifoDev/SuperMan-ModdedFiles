.class Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->showUpAnimate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

.field final synthetic val$animateView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$2;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    iput-object p2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$2;->val$animateView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$2;->val$animateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$2;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->animateForShow()V

    return-void
.end method
