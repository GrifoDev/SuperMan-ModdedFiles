.class Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;
.super Lcom/android/settings/notification/ZenRuleNameDialog;
.source "ZenModeRuleSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeRuleSettingsBase;->showRuleNameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method
