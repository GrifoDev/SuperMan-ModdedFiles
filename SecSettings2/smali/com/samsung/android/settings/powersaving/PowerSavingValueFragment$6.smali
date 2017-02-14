.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;
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

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power_back_data_off"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v5, :cond_1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateEstimatedTimeonHeader()V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Z)V

    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_power_mode_back_data_off"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v5, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
