.class Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$1;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;

.field final synthetic val$homeUpdated:Ljava/util/List;

.field final synthetic val$origCallbacks:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$1;->val$homeUpdated:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$1;->val$homeUpdated:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;->bindTaskbarItemsUpdated(Ljava/util/List;)V

    :cond_0
    return-void
.end method
