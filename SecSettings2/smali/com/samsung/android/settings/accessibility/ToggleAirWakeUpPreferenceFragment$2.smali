.class Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleAirWakeUpPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    const-string/jumbo v4, "accessibility"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->OnStartGestureWakeup()Z

    :goto_0
    const/4 v3, 0x0

    return v3

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->OnStopGestureWakeup()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
