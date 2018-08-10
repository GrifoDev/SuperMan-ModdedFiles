.class Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;
.super Ljava/lang/Object;
.source "BoostModeCustomFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get20(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get20(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get20(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get7(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "pbm_uhq_upscaler"

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get7(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isCustomModeChangedValue(Landroid/content/Context;I)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-wrap1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-wrap5(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get7(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get15(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get18(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get7(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getUhqUpscalerLatestLevel(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method
