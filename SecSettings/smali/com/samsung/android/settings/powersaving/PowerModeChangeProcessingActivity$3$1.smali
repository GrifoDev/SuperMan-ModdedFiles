.class Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3$1;
.super Ljava/lang/Object;
.source "PowerModeChangeProcessingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->onBounceUpEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;

.field final synthetic val$fadeIn:Landroid/view/animation/AlphaAnimation;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3$1;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;

    iput-object p2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3$1;->val$fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3$1;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3$1;->val$fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3$1;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/check/DoneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/check/DoneView;->playAnimation()V

    return-void
.end method
