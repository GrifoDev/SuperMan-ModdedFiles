.class Lcom/android/settings/notification/ZenRuleSelectionDialog$1;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Lcom/android/settings/utils/ZenServiceListing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicesReloaded(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ZenRuleSelectionDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Services reloaded: count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->-get1()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {v4}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->-get4(Lcom/android/settings/notification/ZenRuleSelectionDialog;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getRuleInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {v4}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->-get3(Lcom/android/settings/notification/ZenRuleSelectionDialog;)Landroid/app/NotificationManager;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    if-lez v4, :cond_2

    iget v4, v1, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    iget-object v5, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {v5}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->-get3(Lcom/android/settings/notification/ZenRuleSelectionDialog;)Landroid/app/NotificationManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-lt v4, v5, :cond_1

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {v4, v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->-wrap0(Lcom/android/settings/notification/ZenRuleSelectionDialog;Ljava/util/Set;)V

    return-void
.end method
