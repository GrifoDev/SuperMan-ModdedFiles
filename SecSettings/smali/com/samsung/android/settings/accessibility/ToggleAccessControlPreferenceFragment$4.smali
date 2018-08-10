.class Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;
.super Ljava/lang/Object;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 6

    const/16 v5, 0x3e8

    const v4, 0x7f0b0281

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap4(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap6(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap4(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap4(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0
.end method
