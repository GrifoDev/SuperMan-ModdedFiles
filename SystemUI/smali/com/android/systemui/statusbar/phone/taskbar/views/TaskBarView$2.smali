.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$2;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    :cond_0
    return-void
.end method
