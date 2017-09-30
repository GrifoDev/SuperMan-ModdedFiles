.class Lcom/android/incallui/widget/SecVoiceButton$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/SecVoiceButton;


# direct methods
.method constructor <init>(Lcom/android/incallui/widget/SecVoiceButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/SecVoiceButton$1;->this$0:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton$1;->this$0:Lcom/android/incallui/widget/SecVoiceButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton$1;->this$0:Lcom/android/incallui/widget/SecVoiceButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->access$002(Lcom/android/incallui/widget/SecVoiceButton;Z)Z

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method
