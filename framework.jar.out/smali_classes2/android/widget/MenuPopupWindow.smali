.class public Landroid/widget/MenuPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroid/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# instance fields
.field private mHoverListener:Landroid/widget/MenuItemHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;
    .locals 1

    new-instance v0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroid/widget/MenuItemHoverListener;)V

    return-object v0
.end method

.method public onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/MenuItemHoverListener;->onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/MenuItemHoverListener;->onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public setHoverListener(Landroid/widget/MenuItemHoverListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    return-void
.end method
