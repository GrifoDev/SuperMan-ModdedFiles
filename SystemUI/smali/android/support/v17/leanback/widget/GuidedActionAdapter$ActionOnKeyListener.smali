.class Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;
.super Ljava/lang/Object;
.source "GuidedActionAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionOnKeyListener"
.end annotation


# instance fields
.field private mKeyPressed:Z

.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_0

    :cond_2
    :goto_0
    return v2

    :sswitch_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->infoOnly()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    return v5

    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    if-nez v3, :cond_2

    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    invoke-virtual {v3, v1, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemPressed(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    if-eqz v3, :cond_2

    iput-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    invoke-virtual {v3, v1, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemPressed(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
