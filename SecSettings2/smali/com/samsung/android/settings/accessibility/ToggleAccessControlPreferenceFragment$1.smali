.class Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "ToggleAccessControlPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap5(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap7(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    return-void
.end method
