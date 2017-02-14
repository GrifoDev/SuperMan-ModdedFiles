.class public Lcom/android/launcher2/popup/SubMenuBuilder;
.super Lcom/android/launcher2/popup/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/android/launcher2/popup/MenuItemImpl;

.field private mParentMenu:Lcom/android/launcher2/popup/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mParentMenu:Lcom/android/launcher2/popup/MenuBuilder;

    iput-object p3, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mItem:Lcom/android/launcher2/popup/MenuItemImpl;

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mParentMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->collapseItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method dispatchMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mParentMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mParentMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->expandItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mItem:Lcom/android/launcher2/popup/MenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mItem:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getItemId()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher2/popup/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mItem:Lcom/android/launcher2/popup/MenuItemImpl;

    return-object v0
.end method

.method public getRootMenu()Lcom/android/launcher2/popup/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mParentMenu:Lcom/android/launcher2/popup/MenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mParentMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mParentMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/android/launcher2/popup/MenuBuilder$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mParentMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->setCallback(Lcom/android/launcher2/popup/MenuBuilder$Callback;)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderIconInt(I)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderTitleInt(I)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mItem:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popup/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mItem:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popup/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mParentMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->setQwertyMode(Z)V

    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/SubMenuBuilder;->mParentMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->setShortcutsVisible(Z)V

    return-void
.end method
