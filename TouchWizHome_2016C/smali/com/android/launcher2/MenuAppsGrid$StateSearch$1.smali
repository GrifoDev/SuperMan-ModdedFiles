.class Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateSearch;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateSearch;

.field final synthetic val$item:Lcom/android/launcher2/AppItem;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateSearch;Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateSearch;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->val$item:Lcom/android/launcher2/AppItem;

    iput-object p3, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->val$item:Lcom/android/launcher2/AppItem;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateSearch;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->val$item:Lcom/android/launcher2/AppItem;

    iget-object v3, v3, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher2/AppItem;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateSearch;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateSearch;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsSearch;->closeKeyboard()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateSearch;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "APIS"

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v3}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_2
    return-void
.end method
