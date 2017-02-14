.class Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;
.super Ljava/lang/Object;
.source "BoostModeCustomFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "pbm_game_tools"

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v5, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isCustomModeChangedValue(Landroid/content/Context;I)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-wrap1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;Z)V

    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
