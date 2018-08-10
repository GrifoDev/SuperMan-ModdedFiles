.class public Landroid/support/v17/leanback/widget/PlaybackTransportRowView;
.super Landroid/widget/LinearLayout;
.source "PlaybackTransportRowView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;
    }
.end annotation


# instance fields
.field private mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;->onUnhandledKey(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 4

    if-eqz p1, :cond_5

    const/16 v2, 0x21

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x82

    if-ne p2, v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 v2, 0x11

    if-eq p2, v2, :cond_4

    const/16 v2, 0x42

    if-ne p2, v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    return-object v2

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    sget v2, Landroid/support/v17/leanback/R$id;->playback_progress:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;

    return-void
.end method
