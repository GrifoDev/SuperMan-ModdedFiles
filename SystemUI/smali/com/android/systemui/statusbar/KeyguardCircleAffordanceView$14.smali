.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedGoingToSleep(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set13(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set13(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SHORTCUT_CUE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setAlpha(F)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->startAnimation()V

    :cond_1
    return-void
.end method
