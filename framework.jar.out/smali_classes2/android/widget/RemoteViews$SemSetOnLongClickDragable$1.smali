.class Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SemSetOnLongClickDragable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v8, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v8, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const-string/jumbo v0, "RemoteViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Drag info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v2, v2, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->clipData:Landroid/content/ClipData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v2, v2, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-boolean v2, v2, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->isNeedToRemove:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->clipData:Landroid/content/ClipData;

    invoke-virtual {p1, v0, v8, v3, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragStartIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-boolean v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->isNeedToRemove:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    invoke-virtual {v7, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v6

    const-string/jumbo v0, "RemoteViews"

    const-string/jumbo v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
