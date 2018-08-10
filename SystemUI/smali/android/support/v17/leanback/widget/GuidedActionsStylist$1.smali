.class Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->-get0(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->-get0(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isBackKeyToCollapseSubActions()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->-get0(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->hasEditableActivatorView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isBackKeyToCollapseActivatorView()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->collapseAction(Z)V

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
