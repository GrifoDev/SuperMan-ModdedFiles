.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;
.super Ljava/lang/Object;
.source "PowerSavingValueFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerformanceBoosterMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get6(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get3(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->showTurnOffBoost(Landroid/content/Context;Landroid/app/AlertDialog;ILjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get3(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get3(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-set1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get6(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
