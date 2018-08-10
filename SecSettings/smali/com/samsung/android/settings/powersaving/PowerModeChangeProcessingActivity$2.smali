.class Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;
.super Ljava/lang/Object;
.source "PowerModeChangeProcessingActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->startCircleTextAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-set0(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)I

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-wrap0(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get9(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-wrap3(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get8(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get6(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f12032e

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
