.class Lcom/android/keyguard/KeyguardDirectionLockView$4;
.super Ljava/lang/Object;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Lcom/android/internal/widget/DirectionLockTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionDetected(Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get3(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    const-string/jumbo v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get25(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get23(Lcom/android/keyguard/KeyguardDirectionLockView;)J

    move-result-wide v4

    sub-long v0, v2, v4

    const-wide/16 v2, 0x1b58

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set7(Lcom/android/keyguard/KeyguardDirectionLockView;J)J

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap8(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get28(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardMessageArea;->clearAnimation()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get28(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get28(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    const-string/jumbo v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    new-instance v3, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {v3, v4, v6}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;)V

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set8(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get30(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get30(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;->start()V

    :cond_2
    if-eqz p2, :cond_3

    const-string/jumbo v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get8(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x16

    if-gt v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap5(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    :cond_3
    return-void

    :cond_4
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get15(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public onDirectionStarted()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get17(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get8(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get19(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get30(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get30(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;->interrupt()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set8(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get8(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    goto :goto_0
.end method
