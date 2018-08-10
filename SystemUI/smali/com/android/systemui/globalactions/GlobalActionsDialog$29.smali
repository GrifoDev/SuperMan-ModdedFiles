.class Lcom/android/systemui/globalactions/GlobalActionsDialog$29;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->makeActionsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V
    .locals 6

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap4(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get58(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x10403d7

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get58(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x104038f

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get58(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x1040397

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1040395

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "isBikeMode"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get58(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x1040396

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1040394

    :cond_2
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x1040393

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialog$29$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$29$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$29;)V

    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set1(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get9(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get9(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onToggle(Z)V
    .locals 0

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
