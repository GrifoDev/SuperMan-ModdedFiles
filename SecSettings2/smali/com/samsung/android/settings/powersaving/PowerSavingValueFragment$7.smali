.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;
.super Ljava/lang/Object;
.source "PowerSavingValueFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initPreference()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get10(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get10(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get10(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "psm_network_power_saving"

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v5

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_0
    const/4 v6, 0x2

    invoke-static {v3, v4, v6, v5, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateEstimatedTimeonHeader()V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Z)V

    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
