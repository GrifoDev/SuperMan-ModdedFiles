.class Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;
.super Ljava/lang/Object;
.source "ChooseLockDirection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->attachListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "confirm Clicked"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get25(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const v9, 0x7f0b0278

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get25(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get16(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get11(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0273

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get11(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get11(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b01db

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    sget-object v9, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get10(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get20(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "Both passwords match"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v4, 0x4

    const/16 v3, 0x8

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/samsung/android/settings/ChooseLockAdditionalPin;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v8, "lockscreen.password_min"

    const/4 v9, 0x4

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "lockscreen.password_max"

    const/16 v9, 0x8

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v5, 0x1000

    const-string/jumbo v8, "lockscreen.password_type"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "isDirectionLock"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v8, "firstlock"

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "password"

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get28(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x2000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "has_challenge"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    :try_start_0
    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "launching back up PIN"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->startActivity(Landroid/content/Intent;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v8, "ChooseLockDirection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "back up PIN not supported, mLockVirgin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get18(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get17(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChosenPattern:Ljava/util/List;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->saveLockDirection(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get18(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get17(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportIris()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    :goto_1
    invoke-static {v9, v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    :goto_2
    invoke-static {v9, v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get15(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get23(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/os/AsyncTask;

    move-result-object v8

    if-nez v8, :cond_7

    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "mPendingLockCheck is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-nez v7, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get26(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->finish()V

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x1

    goto :goto_1

    :cond_a
    const/4 v8, 0x1

    goto :goto_2

    :cond_b
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    :cond_c
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get15(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    :cond_d
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    goto :goto_3

    :cond_e
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_f
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get25(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get11(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0271

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    goto/16 :goto_0
.end method
