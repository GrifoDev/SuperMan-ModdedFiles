.class public Landroid/support/v17/leanback/widget/BrowseFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BrowseFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;,
        Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;
    }
.end annotation


# instance fields
.field private mListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

.field private mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

.field private mOnDispatchKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->mOnDispatchKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->mOnDispatchKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_0
    return v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->mListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->mListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    invoke-interface {v1, p1, p2}, Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;->onFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;->onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setOnChildFocusListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    return-void
.end method

.method public setOnDispatchKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->mOnDispatchKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->mListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    return-void
.end method
