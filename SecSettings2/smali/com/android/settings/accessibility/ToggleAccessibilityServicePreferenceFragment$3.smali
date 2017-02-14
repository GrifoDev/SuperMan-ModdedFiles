.class Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    const v4, 0x10008000

    const-string/jumbo v2, "ToggleAccessibilityServicePreferenceFragment"

    const-string/jumbo v3, "onStateReceived()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->-get4(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UniversalSwitchSettings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "com.samsung.android.universalswitch"

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->-get3(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->-get4(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->-get4(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->-get4(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "VoiceAssistantSettings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "com.samsung.android.app.talkback"

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->-get3(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->-get4(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->-get4(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->-get2(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->-get4(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0
.end method
