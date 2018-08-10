.class public final Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneWindowMenuCallback"
.end annotation


# static fields
.field private static final FEATURE_ID:I = 0x6


# instance fields
.field private mShowDialogForSubmenu:Z

.field private mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private final mWindow:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-void
.end method

.method private onCloseSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v2, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    if-eq v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->onCloseSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    :cond_0
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-wrap1(Lcom/android/internal/policy/PhoneWindow;)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    :cond_3
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mShowDialogForSubmenu:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public setShowDialogForSubmenu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mShowDialogForSubmenu:Z

    return-void
.end method
