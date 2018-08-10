.class Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentValues:Landroid/content/ContentValues;

.field final synthetic val$id:J

.field final synthetic val$manager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;->val$manager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;->val$id:J

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;->val$contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->updateAppOrderItem(JLandroid/content/ContentValues;)I

    return-void
.end method
