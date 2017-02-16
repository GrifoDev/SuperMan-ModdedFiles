.class Lcom/android/settings/autostarts/LewaManageAutostarts$3;
.super Ljava/lang/Thread;
.source "LewaManageAutostarts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autostarts/LewaManageAutostarts;->closeAutoStartApp(Lcom/android/settings/autostarts/AppItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

.field final synthetic val$item:Lcom/android/settings/autostarts/AppItem;


# direct methods
.method constructor <init>(Lcom/android/settings/autostarts/LewaManageAutostarts;Lcom/android/settings/autostarts/AppItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    iput-object p2, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->val$item:Lcom/android/settings/autostarts/AppItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->val$item:Lcom/android/settings/autostarts/AppItem;

    iget-object v6, v6, Lcom/android/settings/autostarts/AppItem;->packageName:Ljava/lang/String;

    aput-object v6, v0, v7

    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->val$item:Lcom/android/settings/autostarts/AppItem;

    iget-object v6, v6, Lcom/android/settings/autostarts/AppItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$400(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v6, v0, v8

    const-string v6, "%s/%s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$400(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v1, v9, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    iget-object v5, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->val$item:Lcom/android/settings/autostarts/AppItem;

    invoke-virtual {v6, v5}, Lcom/android/settings/autostarts/LewaManageAutostarts;->reFlush(Lcom/android/settings/autostarts/AppItem;)V

    return-void
.end method
