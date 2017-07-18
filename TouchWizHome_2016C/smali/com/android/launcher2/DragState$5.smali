.class Lcom/android/launcher2/DragState$5;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragState;->animateWidgetDrop(Lcom/android/launcher2/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragState;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DragState$5;->this$0:Lcom/android/launcher2/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/DragState$5;->this$0:Lcom/android/launcher2/DragState;

    invoke-static {v1}, Lcom/android/launcher2/DragState;->access$100(Lcom/android/launcher2/DragState;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DragState$5;->this$0:Lcom/android/launcher2/DragState;

    invoke-static {v1}, Lcom/android/launcher2/DragState;->access$200(Lcom/android/launcher2/DragState;)Lcom/android/launcher2/DragReceivable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DragState$5;->this$0:Lcom/android/launcher2/DragState;

    invoke-static {v1}, Lcom/android/launcher2/DragState;->access$200(Lcom/android/launcher2/DragState;)Lcom/android/launcher2/DragReceivable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
