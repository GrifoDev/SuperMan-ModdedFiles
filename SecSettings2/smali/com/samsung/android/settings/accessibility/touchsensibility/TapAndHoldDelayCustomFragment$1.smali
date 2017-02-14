.class Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;
.super Ljava/lang/Object;
.source "TapAndHoldDelayCustomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-wide/16 v2, -0x1

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get5(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkLongPressStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get4(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get4(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get5(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isCountingLongPressTime()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-set0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;J)J

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-set1(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;J)J

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get6(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "%.2f"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get8(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J

    move-result-wide v4

    long-to-float v3, v4

    div-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get8(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v8

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    const-string/jumbo v0, "TapAndHoldDelayCustomFragment"

    const-string/jumbo v1, "Frag: run: Calling method to update view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get5(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->updateRunningHoldStandby()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get7(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get1()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get2(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get3(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get5(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkLongPressStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get4(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get4(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get5(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isCountingLongPressTime()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-set0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;J)J

    goto :goto_1
.end method
