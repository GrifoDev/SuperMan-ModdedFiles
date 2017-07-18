.class Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;
.super Ljava/lang/Object;
.source "CellLayoutWithResizableWidgets.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutWithResizableWidgets;->noRoomForDrop(Lcom/android/launcher2/DragState;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

.field final synthetic val$page:I

.field final synthetic val$ws:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutWithResizableWidgets;Lcom/android/launcher2/Workspace;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;->this$0:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iput-object p2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;->val$ws:Lcom/android/launcher2/Workspace;

    iput p3, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;->val$ws:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;->val$ws:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;->val$page:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;->val$ws:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;->val$page:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;->this$0:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-static {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->access$000(Lcom/android/launcher2/CellLayoutWithResizableWidgets;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setOutOfSpaceMessageNeeded(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;->val$ws:Lcom/android/launcher2/Workspace;

    iget v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;->val$page:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_0
.end method
