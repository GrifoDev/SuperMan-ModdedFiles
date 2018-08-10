.class Lcom/android/settings/notification/ZenModeSettings$5;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettings;->showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettings;

.field final synthetic val$ruleId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$5;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeSettings$5;->val$ruleId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$5;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettings;->-get0(Lcom/android/settings/notification/ZenModeSettings;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$5;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0xaf

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$5;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$5;->val$ruleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeSettings;->removeZenRule(Ljava/lang/String;)Z

    return-void
.end method
