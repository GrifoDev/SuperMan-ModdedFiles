.class Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;
.super Lcom/samsung/android/app/ITaskWatcher$Stub;
.source "TaskBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-direct {p0}, Lcom/samsung/android/app/ITaskWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDescriptionSet(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTaskDescriptionSet:: This call is blocked!!! TaskBarView is null or bindApps not loaded., tId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/app/IActivityManager;->getTaskInfoFromTaskId(I)Landroid/os/Bundle;

    move-result-object v0

    move v2, p1

    const-string/jumbo v3, "lastTaskDescription"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$TaskDescription;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTaskDescriptionSet but TaskDescription is null!!, taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$3;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;ILandroid/app/ActivityManager$TaskDescription;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTaskRemoved(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTaskRemoved:: This call is blocked!!! TaskBarView is null or bindApps not loaded., taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    move v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTaskToBack(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTaskToBack taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onTaskToFront(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTaskToFront:: This call is blocked!!! TaskBarView is null or bindApps not loaded., taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getTaskInfoFromTaskId(I)Landroid/os/Bundle;

    move-result-object v8

    move v9, p1

    const-string/jumbo v0, "userId"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v0, "taskType"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v0, "componentName"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    const-string/jumbo v0, "lastTaskDescription"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$TaskDescription;

    const-string/jumbo v0, "resizeable"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Landroid/os/Handler;

    move-result-object v11

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;IILandroid/content/ComponentName;ILandroid/app/ActivityManager$TaskDescription;Z)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
