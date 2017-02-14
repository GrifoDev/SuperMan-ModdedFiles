.class Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateNormal;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

.field final synthetic val$item:Lcom/android/launcher2/AppItem;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    iput-object p3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppItem;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "APIS"

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v3}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    iget-object v3, v3, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher2/AppItem;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
