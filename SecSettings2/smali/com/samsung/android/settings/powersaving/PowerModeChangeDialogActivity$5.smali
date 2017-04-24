.class Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;
.super Ljava/lang/Object;
.source "PowerModeChangeDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

.field final synthetic val$disablePSM:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    iput-boolean p2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->val$disablePSM:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->val$disablePSM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030128

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    const v4, 0x7f0b0a18

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0b0a4d

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->finish()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerformanceBoosterMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->showTurnOffBoost(Landroid/content/Context;Landroid/app/AlertDialog;ILjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-set0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->finish()V

    goto/16 :goto_0
.end method
