.class public final Lcom/android/launcher2/popup/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"


# instance fields
.field private mActionProvider:Landroid/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/android/launcher2/popup/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/android/launcher2/popup/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popup/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIconResId:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    iput v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShowAsAction:I

    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIsActionViewExpanded:Z

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    iput p3, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mId:I

    iput p2, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mGroup:I

    iput p4, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mCategoryOrder:I

    iput p5, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mOrdering:I

    iput-object p6, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    iput p7, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShowAsAction:I

    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/MenuBuilder;->collapseItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/MenuBuilder;->expandItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionView:Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    iget-char v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    iget-char v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mSubMenu:Lcom/android/launcher2/popup/SubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcom/android/launcher2/popup/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher2/popup/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mSubMenu:Lcom/android/launcher2/popup/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuBuilder;->getRootMenu()Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/popup/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemActionRequestChanged(Lcom/android/launcher2/popup/MenuItemImpl;)V

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShortcutAlphabeticChar:C

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-object p0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIconResId:I

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIconResId:I

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iput-char p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShortcutNumericChar:C

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    iput-char p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShortcutNumericChar:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShortcutAlphabeticChar:C

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mShowAsAction:I

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemActionRequestChanged(Lcom/android/launcher2/popup/MenuItemImpl;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuItemImpl;->setShowAsAction(I)V

    return-object p0
.end method

.method setSubMenu(Lcom/android/launcher2/popup/SubMenuBuilder;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mSubMenu:Lcom/android/launcher2/popup/SubMenuBuilder;

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/popup/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mSubMenu:Lcom/android/launcher2/popup/SubMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mSubMenu:Lcom/android/launcher2/popup/SubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popup/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemVisibleChanged(Lcom/android/launcher2/popup/MenuItemImpl;)V

    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
