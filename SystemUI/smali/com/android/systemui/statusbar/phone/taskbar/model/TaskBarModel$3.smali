.class Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$3;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->reloadBadges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->updateBadgeCounts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "[DS]TaskBarpModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reloadBadges, badges count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    const-string/jumbo v2, "[DS]TaskBarpModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reloadBadges, origCallbacks : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const-string/jumbo v2, "[DS]TaskBarpModel"

    const-string/jumbo v3, "Nobody to tell about new badge counts. Launcher is not running."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$3$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$3$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$3;Ljava/lang/ref/WeakReference;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
