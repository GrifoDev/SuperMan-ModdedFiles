.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$13;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$13;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$13;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->show()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$13;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-wrap1(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    return-void
.end method
