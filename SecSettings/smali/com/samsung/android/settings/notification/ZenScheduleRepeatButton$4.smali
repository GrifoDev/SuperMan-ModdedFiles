.class Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;
.super Ljava/lang/Object;
.source "ZenScheduleRepeatButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$isShowingAnim:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->val$index:I

    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->val$isShowingAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->val$isShowingAnim:Z

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->invalidate()V

    return-void
.end method
