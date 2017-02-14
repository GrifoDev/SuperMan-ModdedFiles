.class public Lcom/android/launcher2/popup/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/android/launcher2/popup/MenuBuilder$Callback;
.implements Lcom/android/launcher2/popup/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;,
        Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;
    }
.end annotation


# static fields
.field private static sPopIconsShowed:Z


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;

.field private mMenu:Lcom/android/launcher2/popup/MenuBuilder;

.field private mMenuItemClickListener:Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;

.field private mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/popup/PopupMenu;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher2/popup/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/MenuBuilder;->setCallback(Lcom/android/launcher2/popup/MenuBuilder$Callback;)V

    iput-object p2, p0, Lcom/android/launcher2/popup/PopupMenu;->mAnchor:Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/popup/MenuPopupHelper;

    iget-object v1, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;

    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->setCallback(Lcom/android/launcher2/popup/MenuPresenter$Callback;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/popup/PopupMenu;->sPopIconsShowed:Z

    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;

    sget-boolean v1, Lcom/android/launcher2/popup/PopupMenu;->sPopIconsShowed:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuPopupHelper;->setForceShowIcon(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuPopupHelper;->dismiss()V

    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/android/launcher2/popup/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mDismissListener:Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mDismissListener:Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;

    invoke-interface {v0, p0}, Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;->onDismiss(Lcom/android/launcher2/popup/PopupMenu;)V

    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenuItemClickListener:Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenuItemClickListener:Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p2}, Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/launcher2/popup/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onOpenSubMenu(Lcom/android/launcher2/popup/MenuBuilder;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/launcher2/popup/MenuPopupHelper;

    iget-object v2, p0, Lcom/android/launcher2/popup/PopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher2/popup/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v1, v2, p1, v3}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setOnDismissListener(Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/popup/PopupMenu;->mDismissListener:Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenuItemClickListener:Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuPopupHelper;->show()V

    return-void
.end method
