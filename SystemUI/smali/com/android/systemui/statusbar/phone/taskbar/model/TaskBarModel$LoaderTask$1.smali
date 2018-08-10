.class Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->waitForIdle()V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;Z)Z

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarpModel"

    const-string/jumbo v2, "done with first binding step"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
