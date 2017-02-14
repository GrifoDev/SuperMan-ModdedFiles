.class Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$4;
.super Ljava/lang/Object;
.source "PowerModeChangeProcessingActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->startFinishAnimation()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/circle/CircleContainer;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    return-void
.end method
