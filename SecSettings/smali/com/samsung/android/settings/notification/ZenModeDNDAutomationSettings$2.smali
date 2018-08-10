.class Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$2;
.super Ljava/lang/Object;
.source "ZenModeDNDAutomationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

.field final synthetic val$ruleId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$2;->val$ruleId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$2;->val$ruleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->-wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Ljava/lang/String;)Z

    return-void
.end method
