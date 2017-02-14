.class Lcom/android/server/wm/TaskPositioner$1;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/TaskPositioner;->unregister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskPositioner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$1;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$1;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$1;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$1;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->-set3(Lcom/android/server/wm/TaskPositioner;Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    :cond_0
    return-void
.end method
