.class Lcom/android/launcher2/IconMoveContainer$8;
.super Ljava/lang/Object;
.source "IconMoveContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/IconMoveContainer;->checkAndUpdateItemsPosition(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/IconMoveContainer;

.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$screen:I

.field final synthetic val$spanX:I

.field final synthetic val$spanY:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/IconMoveContainer;IIIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    iput p2, p0, Lcom/android/launcher2/IconMoveContainer$8;->val$cellX:I

    iput p3, p0, Lcom/android/launcher2/IconMoveContainer$8;->val$cellY:I

    iput p4, p0, Lcom/android/launcher2/IconMoveContainer$8;->val$spanX:I

    iput p5, p0, Lcom/android/launcher2/IconMoveContainer$8;->val$spanY:I

    iput p6, p0, Lcom/android/launcher2/IconMoveContainer$8;->val$screen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;
    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$500(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/CellLayoutMoveApps;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;
    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$500(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/CellLayoutMoveApps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    const/4 v2, 0x0

    # setter for: Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z
    invoke-static {v0, v2}, Lcom/android/launcher2/IconMoveContainer;->access$1602(Lcom/android/launcher2/IconMoveContainer;Z)Z

    :goto_0
    return-void

    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;
    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$500(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/CellLayoutMoveApps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMoveApps;->allItems()Ljava/util/List;

    move-result-object v11

    monitor-enter v11

    const/4 v10, 0x0

    :goto_1
    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "IconMoveContainer"

    const-string v2, "Need to check This situation."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;
    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$500(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/CellLayoutMoveApps;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutMoveApps;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;
    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$500(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/CellLayoutMoveApps;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutMoveApps;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v0, v1, :cond_6

    const-string v0, "IconMoveContainer"

    const-string v2, "No need to update dragging item for update position."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x64

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    iget v2, p0, Lcom/android/launcher2/IconMoveContainer$8;->val$cellX:I

    iget v3, p0, Lcom/android/launcher2/IconMoveContainer$8;->val$cellY:I

    iget v4, p0, Lcom/android/launcher2/IconMoveContainer$8;->val$spanX:I

    iget v5, p0, Lcom/android/launcher2/IconMoveContainer$8;->val$spanY:I

    iget v6, p0, Lcom/android/launcher2/IconMoveContainer$8;->val$screen:I

    # invokes: Lcom/android/launcher2/IconMoveContainer;->needToChangePoistion(Lcom/android/launcher2/HomeItem;IIIII)Z
    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/IconMoveContainer;->access$1700(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/HomeItem;IIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # invokes: Lcom/android/launcher2/IconMoveContainer;->updateItemsPositionToDeskTop(Lcom/android/launcher2/HomeItem;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/IconMoveContainer;->access$1800(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    :cond_7
    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$300(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Hotseat;->canAcceptAddItem()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v2, -0x64

    iput-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget-object v0, v1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v2}, Lcom/android/launcher2/IconMoveContainer;->access$300(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    iput v2, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # invokes: Lcom/android/launcher2/IconMoveContainer;->updateItemsPositionToDeskTop(Lcom/android/launcher2/HomeItem;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/IconMoveContainer;->access$1800(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$1900(Lcom/android/launcher2/IconMoveContainer;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$1900(Lcom/android/launcher2/IconMoveContainer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/launcher2/IconMoveContainer;->access$1900(Lcom/android/launcher2/IconMoveContainer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # invokes: Lcom/android/launcher2/IconMoveContainer;->removeItemInDatabase(Lcom/android/launcher2/HomeItem;)V
    invoke-static {v2, v7}, Lcom/android/launcher2/IconMoveContainer;->access$2000(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/HomeItem;)V

    goto :goto_3

    :cond_c
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$8;->this$0:Lcom/android/launcher2/IconMoveContainer;

    const/4 v2, 0x0

    # setter for: Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z
    invoke-static {v0, v2}, Lcom/android/launcher2/IconMoveContainer;->access$1602(Lcom/android/launcher2/IconMoveContainer;Z)Z

    goto/16 :goto_0
.end method
