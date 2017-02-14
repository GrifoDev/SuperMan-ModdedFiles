.class public interface abstract Lcom/android/launcher2/popup/MenuPresenter;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popup/MenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z
.end method

.method public abstract expandItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMenuView(Landroid/view/ViewGroup;)Lcom/android/launcher2/popup/MenuView;
.end method

.method public abstract initForMenu(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;)V
.end method

.method public abstract onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract onSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z
.end method

.method public abstract setCallback(Lcom/android/launcher2/popup/MenuPresenter$Callback;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
