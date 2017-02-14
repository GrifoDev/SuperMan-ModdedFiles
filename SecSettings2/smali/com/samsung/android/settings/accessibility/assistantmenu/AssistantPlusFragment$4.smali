.class Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;
.super Ljava/lang/Object;
.source "AssistantPlusFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get4(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get4(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-set2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;I)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu_eam_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Done Setting 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get6(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v4

    :cond_2
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get4(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get4(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu_eam_enable"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-set2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;I)I

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Done Setting 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get6(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
