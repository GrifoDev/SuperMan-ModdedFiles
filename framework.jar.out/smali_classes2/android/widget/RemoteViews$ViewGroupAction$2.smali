.class Landroid/widget/RemoteViews$ViewGroupAction$2;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupAction;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$ViewGroupAction;

.field final synthetic val$targetVg:Landroid/view/ViewGroup;

.field final synthetic val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

.field final synthetic val$tree:Landroid/widget/RemoteViews$ViewTree;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$ViewGroupAction;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction$2;->this$1:Landroid/widget/RemoteViews$ViewGroupAction;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupAction$2;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupAction$2;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    iput-object p4, p0, Landroid/widget/RemoteViews$ViewGroupAction$2;->val$targetVg:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$RuntimeAction;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction$2;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction$2;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction$2;->val$targetVg:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction$2;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-static {v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->-get1(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
