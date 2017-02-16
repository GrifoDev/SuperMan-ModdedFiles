.class Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;
    .param p2, "val$handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 4410
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    .line 4414
    instance-of v7, p2, Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    move-object v6, p2

    .line 4415
    nop

    nop

    .line 4419
    .local v6, "vg":Landroid/view/ViewGroup;
    instance-of v7, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz v7, :cond_0

    .line 4420
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vg":Landroid/view/ViewGroup;
    check-cast v6, Landroid/view/ViewGroup;

    .line 4422
    .restart local v6    # "vg":Landroid/view/ViewGroup;
    :cond_0
    if-nez v6, :cond_1

    .line 4423
    return v9

    .line 4426
    :cond_1
    const/4 v1, 0x0

    .line 4427
    .local v1, "fillInIntent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4428
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4429
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x1020049

    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 4430
    .local v5, "tag":Ljava/lang/Object;
    instance-of v7, v5, Landroid/content/Intent;

    if-eqz v7, :cond_3

    move-object v1, v5

    .line 4431
    nop

    nop

    .line 4435
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_2
    if-nez v1, :cond_4

    .line 4436
    return v9

    .line 4428
    .restart local v1    # "fillInIntent":Landroid/content/Intent;
    .restart local v5    # "tag":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4439
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_4
    invoke-static {p2}, Landroid/widget/RemoteViews;->-wrap0(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 4441
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4442
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 4443
    iget-object v7, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v8, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    iget-object v8, v8, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v7, p2, v8, v1}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    .line 4445
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v6    # "vg":Landroid/view/ViewGroup;
    :cond_5
    return v9
.end method
