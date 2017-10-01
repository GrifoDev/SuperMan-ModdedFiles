.class Lcom/android/launcher2/MenuAppsSearch$6;
.super Ljava/lang/Object;
.source "MenuAppsSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsSearch;->enter(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsSearch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$6;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$6;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$300(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/SearchView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "samsungapps://SearchResult/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "sKeyword"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x14000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$6;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$400(Lcom/android/launcher2/MenuAppsSearch;)Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$6;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-static {v3, v4}, Lcom/android/launcher2/MenuAppsSearch;->access$402(Lcom/android/launcher2/MenuAppsSearch;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$6;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$400(Lcom/android/launcher2/MenuAppsSearch;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/MenuAppsSearch$6$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuAppsSearch$6$1;-><init>(Lcom/android/launcher2/MenuAppsSearch$6;)V

    const-wide/16 v6, 0x2bc

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$6;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$100(Lcom/android/launcher2/MenuAppsSearch;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "MenuAppsSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch. tag= intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "MenuAppsSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher does not have the permission to launch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "or use the exported attribute for this activity. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
