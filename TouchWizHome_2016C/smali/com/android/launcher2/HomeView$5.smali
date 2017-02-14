.class Lcom/android/launcher2/HomeView$5;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->addShortcutItemsIntoExistingFolder(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$existingFolder:Lcom/android/launcher2/HomeFolderItem;

.field final synthetic val$newItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Ljava/util/List;Lcom/android/launcher2/HomeFolderItem;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$5;->this$0:Lcom/android/launcher2/HomeView;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$5;->val$newItems:Ljava/util/List;

    iput-object p3, p0, Lcom/android/launcher2/HomeView$5;->val$existingFolder:Lcom/android/launcher2/HomeFolderItem;

    iput-object p4, p0, Lcom/android/launcher2/HomeView$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$5;->val$newItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v10, v0, [Landroid/content/ContentValues;

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$5;->val$newItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    iget v0, v1, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$5;->val$existingFolder:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v4

    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView$5;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/launcher2/HomeView$5;->val$existingFolder:Lcom/android/launcher2/HomeFolderItem;

    iget-wide v2, v2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    const/4 v8, 0x1

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZZ)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iget v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView$5;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v10, v5}, Lcom/android/launcher2/LauncherModel;->addBulkItemToDatabase(Landroid/content/Context;[Landroid/content/ContentValues;Z)V

    return-void
.end method
