.class Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get3(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getMetricsCategory()I

    move-result v5

    if-eqz p2, :cond_1

    const/16 v2, 0x3e8

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0x1392

    invoke-static {v4, v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accessibility_captioning_enabled"

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get2(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get2(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v4

    if-eqz p2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_3
    return v3

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3
.end method
