.class Lcom/android/launcher2/CellLayout$ReorderAlarmListener;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/launcher2/Alarm$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderAlarmListener"
.end annotation


# instance fields
.field cellLayout:Lcom/android/launcher2/CellLayout;

.field dragView:Landroid/view/View;

.field minSpanX:I

.field minSpanY:I

.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/android/launcher2/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout;IIIILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->cellLayout:Lcom/android/launcher2/CellLayout;

    iput p3, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->minSpanX:I

    iput p4, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->minSpanY:I

    iput p5, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->spanX:I

    iput p6, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->spanY:I

    iput-object p7, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->dragView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher2/Alarm;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$500(Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/CellPositioner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v1}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v1

    aget v1, v1, v12

    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v2}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v2

    aget v2, v2, v10

    iget v3, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->minSpanX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->minSpanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v5}, Lcom/android/launcher2/CellLayout;->access$400(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellPositioner;->findNearestArea(IIII[I)[I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v1}, Lcom/android/launcher2/CellLayout;->access$400(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v1

    aget v1, v1, v12

    invoke-static {v0, v1}, Lcom/android/launcher2/CellLayout;->access$602(Lcom/android/launcher2/CellLayout;I)I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v1}, Lcom/android/launcher2/CellLayout;->access$400(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v1

    aget v1, v1, v10

    invoke-static {v0, v1}, Lcom/android/launcher2/CellLayout;->access$702(Lcom/android/launcher2/CellLayout;I)I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$500(Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/CellPositioner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v1}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v1

    aget v1, v1, v12

    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v2}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v2

    aget v2, v2, v10

    iget v3, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->minSpanX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->minSpanY:I

    iget v5, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->spanX:I

    iget v6, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->spanY:I

    iget-object v7, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->dragView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    iget-object v8, v8, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v9, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v9}, Lcom/android/launcher2/CellLayout;->access$800(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v9

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher2/CellPositioner;->performReorder(IIIIIILandroid/view/View;[I[II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$900(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v1}, Lcom/android/launcher2/CellLayout;->access$800(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v1

    aget v1, v1, v12

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$900(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v1}, Lcom/android/launcher2/CellLayout;->access$800(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v1

    aget v1, v1, v10

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-interface {v11}, Lcom/android/launcher2/CellLayoutContainer;->clearDragOutline()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->dragView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->dragView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->cellLayout:Lcom/android/launcher2/CellLayout;

    invoke-interface {v11, v2, v3}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;Lcom/android/launcher2/CellLayout;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v4}, Lcom/android/launcher2/CellLayout;->access$800(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v4

    aget v4, v4, v12

    iget-object v5, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v5}, Lcom/android/launcher2/CellLayout;->access$800(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v5

    aget v5, v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$500(Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/CellPositioner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellPositioner;->revertTempState()V

    goto :goto_0
.end method
