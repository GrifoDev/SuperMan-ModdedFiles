.class public interface abstract Landroid/view/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MenuItem$OnActionExpandListener;,
        Landroid/view/MenuItem$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4

.field public static final SHOW_AS_OVERFLOW_ALWAYS:I = -0x80000000


# virtual methods
.method public abstract collapseActionView()Z
.end method

.method public abstract expandActionView()Z
.end method

.method public abstract getActionProvider()Landroid/view/ActionProvider;
.end method

.method public abstract getActionView()Landroid/view/View;
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    const/16 v0, 0x1000

    return v0
.end method

.method public abstract getAlphabeticShortcut()C
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getGroupId()I
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getItemId()I
.end method

.method public abstract getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
.end method

.method public getNumericModifiers()I
    .locals 1

    const/16 v0, 0x1000

    return v0
.end method

.method public abstract getNumericShortcut()C
.end method

.method public abstract getOrder()I
.end method

.method public abstract getSubMenu()Landroid/view/SubMenu;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTitleCondensed()Ljava/lang/CharSequence;
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract hasSubMenu()Z
.end method

.method public abstract isActionViewExpanded()Z
.end method

.method public abstract isCheckable()Z
.end method

.method public abstract isChecked()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isVisible()Z
.end method

.method public requiresOverflow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.end method

.method public abstract setActionView(I)Landroid/view/MenuItem;
.end method

.method public abstract setActionView(Landroid/view/View;)Landroid/view/MenuItem;
.end method

.method public abstract setAlphabeticShortcut(C)Landroid/view/MenuItem;
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 2

    const v0, 0x1100f

    and-int/2addr v0, p2

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public abstract setCheckable(Z)Landroid/view/MenuItem;
.end method

.method public abstract setChecked(Z)Landroid/view/MenuItem;
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public abstract setEnabled(Z)Landroid/view/MenuItem;
.end method

.method public abstract setIcon(I)Landroid/view/MenuItem;
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public abstract setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
.end method

.method public abstract setNumericShortcut(C)Landroid/view/MenuItem;
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 2

    const v0, 0x1100f

    and-int/2addr v0, p2

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public abstract setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
.end method

.method public abstract setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
.end method

.method public abstract setShortcut(CC)Landroid/view/MenuItem;
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 3

    const v2, 0x1100f

    const/16 v1, 0x1000

    and-int v0, p4, v2

    if-ne v0, v1, :cond_0

    and-int v0, p3, v2

    if-ne v0, v1, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public abstract setShowAsAction(I)V
.end method

.method public abstract setShowAsActionFlags(I)Landroid/view/MenuItem;
.end method

.method public abstract setTitle(I)Landroid/view/MenuItem;
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.end method

.method public abstract setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public abstract setVisible(Z)Landroid/view/MenuItem;
.end method
