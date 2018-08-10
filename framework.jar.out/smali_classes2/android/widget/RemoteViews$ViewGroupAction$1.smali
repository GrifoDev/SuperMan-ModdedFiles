.class Landroid/widget/RemoteViews$ViewGroupAction$1;
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


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$ViewGroupAction;Landroid/view/ViewGroup;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction$1;->this$1:Landroid/widget/RemoteViews$ViewGroupAction;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupAction$1;->val$targetVg:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$RuntimeAction;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction$1;->val$targetVg:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method
