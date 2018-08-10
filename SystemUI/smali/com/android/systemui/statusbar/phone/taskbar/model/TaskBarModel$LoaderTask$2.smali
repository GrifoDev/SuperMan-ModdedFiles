.class Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$2;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;)Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarpModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Normal End LoaderTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
