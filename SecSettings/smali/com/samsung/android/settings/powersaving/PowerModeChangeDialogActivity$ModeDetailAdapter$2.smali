.class Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;
.super Ljava/lang/Object;
.source "PowerModeChangeDialogActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

.field final synthetic val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "restricted_device_performance"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v3, "restricted_device_performance"

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setCustomPSMValue(Ljava/lang/String;I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    if-eqz p2, :cond_a

    :goto_2
    iput v1, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mStatus:I

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->-get0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;)Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-wrap0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "psm_network_power_saving"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get11(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I

    move-result v0

    if-ne v0, v1, :cond_4

    const-string/jumbo v3, "low_power_back_data_off"

    if-eqz p2, :cond_3

    move v0, v2

    :goto_3
    invoke-static {v3, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setCustomPSMValue(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    const-string/jumbo v3, "ultra_power_mode_back_data_off"

    if-eqz p2, :cond_5

    move v0, v2

    :goto_4
    invoke-static {v3, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setCustomPSMValue(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    const-string/jumbo v3, "psm_network_power_saving"

    if-eqz p2, :cond_7

    move v0, v1

    :goto_5
    invoke-static {v3, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setCustomPSMValue(Ljava/lang/String;I)V

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "psm_always_on_display_mode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "psm_always_on_display_mode"

    if-eqz p2, :cond_9

    move v0, v2

    :goto_6
    invoke-static {v3, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setCustomPSMValue(Ljava/lang/String;I)V

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_6

    :cond_a
    move v1, v2

    goto :goto_2
.end method
