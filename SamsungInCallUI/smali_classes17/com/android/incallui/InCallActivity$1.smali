.class Lcom/android/incallui/InCallActivity$1;
.super Lcom/android/phone/common/animation/AnimationListenerAdapter;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Lcom/android/phone/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v4, v3}, Lcom/android/incallui/InCallActivity;->access$002(Lcom/android/incallui/InCallActivity;Z)Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-nez v1, :cond_5

    :goto_1
    invoke-interface {v4, v2}, Lcom/android/incallui/CallButtonUi;->enableDialpadButton(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/DialpadUi;->showElapsedTimeContainer()V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v2, v3}, Lcom/android/incallui/InCallActivity;->access$100(Lcom/android/incallui/InCallActivity;I)V

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/incallui/InCallActivity;->access$002(Lcom/android/incallui/InCallActivity;Z)Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    :cond_0
    return-void
.end method
