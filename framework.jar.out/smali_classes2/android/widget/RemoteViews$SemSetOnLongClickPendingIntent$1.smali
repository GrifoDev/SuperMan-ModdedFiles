.class Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;
    .param p2, "val$handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 4337
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;

    iput-object p2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4340
    invoke-static {p1}, Landroid/widget/RemoteViews;->-wrap0(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 4342
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4343
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 4344
    iget-object v2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v3, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;

    iget-object v3, v3, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->longClickPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1, v3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    .line 4345
    const/4 v2, 0x1

    return v2
.end method
