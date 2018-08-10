.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6$1;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->mIsLongPressed:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showAllAppsView()V

    return-void
.end method
