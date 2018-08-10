.class final Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callingFunction:Ljava/lang/String;

.field final synthetic val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

.field final synthetic val$itemId:J

.field final synthetic val$mDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;JLandroid/content/ContentValues;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$mDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$itemId:J

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$values:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$callingFunction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$mDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$itemId:J

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->updateTaskBarItem(JLandroid/content/ContentValues;)I

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$itemId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eq v3, v1, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "[DS]TaskBarpModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modelItem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "modelItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Error: HomeItem passed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;->val$callingFunction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " doesn\'t match original"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    iget-wide v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    const-wide/16 v6, -0x67

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v3, "null"
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
