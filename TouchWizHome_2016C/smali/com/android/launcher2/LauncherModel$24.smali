.class Lcom/android/launcher2/LauncherModel$24;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->addAndBindWorkFolder(Landroid/content/Context;Lcom/android/launcher2/HomeFolderItem;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher2/HomeFolderItem;

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/android/launcher2/HomeFolderItem;[Ljava/lang/StackTraceElement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$24;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$24;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$24;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$24;->val$item:Lcom/android/launcher2/HomeFolderItem;

    iput-object p5, p0, Lcom/android/launcher2/LauncherModel$24;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$24;->val$cr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$24;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$24;->val$item:Lcom/android/launcher2/HomeFolderItem;

    iget-wide v2, v2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$24;->val$item:Lcom/android/launcher2/HomeFolderItem;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$24;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher2/HomeItem;[Ljava/lang/StackTraceElement;)V

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$24;->val$item:Lcom/android/launcher2/HomeFolderItem;

    iget-wide v4, v3, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$24;->val$item:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$24;->val$item:Lcom/android/launcher2/HomeFolderItem;

    iget-wide v4, v3, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$24;->val$item:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$24;->val$item:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$24;->val$item:Lcom/android/launcher2/HomeFolderItem;

    iget-wide v4, v3, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$24;->val$item:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$24;->val$item:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$24;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$24;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/launcher2/LauncherModel$24$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/LauncherModel$24$1;-><init>(Lcom/android/launcher2/LauncherModel$24;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$24;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
