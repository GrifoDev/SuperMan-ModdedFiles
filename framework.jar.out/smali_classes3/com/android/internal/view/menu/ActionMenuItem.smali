.class public Lcom/android/internal/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final NO_ICON:I


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x1000

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mId:I

    iput p2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mGroup:I

    iput p4, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mCategoryOrder:I

    iput p5, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mOrdering:I

    iput-object p6, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method private applyIconTint()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    iget-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    iget-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mOrdering:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isChecked()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 2

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1

    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setShowAsAction(I)V

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    return-object p0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
