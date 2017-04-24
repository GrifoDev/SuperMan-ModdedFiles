.class Lcom/android/launcher2/LauncherModel$32;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->removeUnRestoredItems(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$32;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$32;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$32;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$32;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$32;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$32;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/launcher2/LauncherModel;->removeUnRestoredHomeItems(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherAppsCompat;Landroid/content/ContentResolver;)V
    invoke-static {v6, v7, v4, v0}, Lcom/android/launcher2/LauncherModel;->access$2500(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Lcom/android/launcher2/compat/LauncherAppsCompat;Landroid/content/ContentResolver;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget-wide v8, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v10, -0x65

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bind hotseat after restore : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$32;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v7, Lcom/android/launcher2/LauncherModel$32$1;

    invoke-direct {v7, p0, v2}, Lcom/android/launcher2/LauncherModel$32$1;-><init>(Lcom/android/launcher2/LauncherModel$32;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$32;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$32;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/launcher2/LauncherModel;->removeUnRestoredAppsItems(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherAppsCompat;Landroid/content/ContentResolver;)V
    invoke-static {v6, v7, v4, v0}, Lcom/android/launcher2/LauncherModel;->access$2600(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Lcom/android/launcher2/compat/LauncherAppsCompat;Landroid/content/ContentResolver;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$32;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/BackupRestore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/restore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/Utilities;->deleteDir(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher2/Utilities;->deleteDir(Ljava/lang/String;)V

    return-void
.end method
