.class Lcom/android/incallui/InCallActivity$1;
.super Lcom/android/phone/common/animation/AnimationListenerAdapter;


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
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0, v2}, Lcom/android/incallui/InCallActivity;->access$002(Lcom/android/incallui/InCallActivity;Z)Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_6

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-nez v0, :cond_7

    :goto_1
    invoke-interface {v4, v1}, Lcom/android/incallui/CallButtonUi;->enableDialpadButton(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->showElapsedTimeContainer()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0, v2}, Lcom/android/incallui/InCallActivity;->access$100(Lcom/android/incallui/InCallActivity;I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_2
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAgifFragment()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAgifFragment()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->updateAgifButtons()V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->updateAgifImage()V

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/InCallActivity;->access$002(Lcom/android/incallui/InCallActivity;Z)Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    :cond_0
    return-void
.end method
