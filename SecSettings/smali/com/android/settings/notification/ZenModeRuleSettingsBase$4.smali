.class Lcom/android/settings/notification/ZenModeRuleSettingsBase$4;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeRuleSettingsBase;->showDeleteRuleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$4;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$4;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->-get0(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$4;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0xaf

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$4;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->-set0(Lcom/android/settings/notification/ZenModeRuleSettingsBase;Z)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$4;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$4;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->removeZenRule(Ljava/lang/String;)Z

    return-void
.end method
