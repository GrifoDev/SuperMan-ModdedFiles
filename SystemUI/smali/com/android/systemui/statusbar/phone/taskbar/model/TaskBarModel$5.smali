.class final Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$5;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$manager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

.field final synthetic val$updates:Ljava/util/List;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$5;->val$manager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$5;->val$updates:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->updateAppItems(Ljava/util/List;)V

    return-void
.end method
