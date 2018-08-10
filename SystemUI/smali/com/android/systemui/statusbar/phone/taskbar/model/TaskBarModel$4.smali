.class final Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$4;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newPositions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$4;->val$newPositions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$4;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDBManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$4;->val$newPositions:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->moveFavorites(Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$4;->val$newPositions:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-wide v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-nez v3, :cond_1

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Attempted to move an item that is not in sItemsIdMap. Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-wide v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;->container:J

    const-wide/16 v6, -0x67

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method
