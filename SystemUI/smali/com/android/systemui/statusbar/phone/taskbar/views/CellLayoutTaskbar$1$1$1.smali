.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;
.super Ljava/lang/Object;
.source "CellLayoutTaskbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isContextMenuOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->toolTypeFingerFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-wrap1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->toolTypeFingerFlag:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;->this$2:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startDrag(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;Landroid/graphics/Point;)V

    :cond_1
    return-void
.end method
