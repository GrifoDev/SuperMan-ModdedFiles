.class public interface abstract Lcom/android/launcher2/popup/MenuView$ItemView;
.super Ljava/lang/Object;
.source "MenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popup/MenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemView"
.end annotation


# virtual methods
.method public abstract getItemData()Lcom/android/launcher2/popup/MenuItemImpl;
.end method

.method public abstract initialize(Lcom/android/launcher2/popup/MenuItemImpl;I)V
.end method

.method public abstract prefersCondensedTitle()Z
.end method

.method public abstract setCheckable(Z)V
.end method

.method public abstract setChecked(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setShortcut(ZC)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract showsIcon()Z
.end method
