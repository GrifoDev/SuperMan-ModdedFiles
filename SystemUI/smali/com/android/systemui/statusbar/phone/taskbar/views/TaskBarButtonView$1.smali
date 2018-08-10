.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView$1;
.super Ljava/lang/Object;
.source "TaskBarButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyButtonView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longpressed: mCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendEvent(II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;Z)Z

    :cond_1
    return-void
.end method
