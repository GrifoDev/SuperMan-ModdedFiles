.class Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;
.super Ljava/lang/Object;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hover_zoom_magnifier_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b029f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->-get0(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v4

    :cond_1
    if-ne v1, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
