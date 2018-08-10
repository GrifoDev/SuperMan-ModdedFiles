.class Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;
.super Ljava/lang/Object;
.source "ZenScheduleRepeatButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->invalidate()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get0(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->invalidate()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get4(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    return-void
.end method
