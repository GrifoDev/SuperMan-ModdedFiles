.class public interface abstract Lcom/android/launcher2/FolderItem;
.super Ljava/lang/Object;
.source "FolderItem.java"


# virtual methods
.method public abstract addItem(Lcom/android/launcher2/BaseItem;)V
.end method

.method public abstract addItemAt(Lcom/android/launcher2/BaseItem;I)V
.end method

.method public abstract addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
.end method

.method public abstract contains(Lcom/android/launcher2/BaseItem;)Z
.end method

.method public abstract getFolderColor()I
.end method

.method public abstract getId()J
.end method

.method public abstract getItemAt(I)Lcom/android/launcher2/BaseItem;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract haveOpenOnceOrNot()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isHiddenAddButton()Z
.end method

.method public abstract isLockedFolder()Z
.end method

.method public abstract isOpened()Z
.end method

.method public abstract isRequiredToRedraw()Z
.end method

.method public abstract isValidItem(Lcom/android/launcher2/BaseItem;)Z
.end method

.method public abstract itemsChanged()V
.end method

.method public abstract normalize()V
.end method

.method public abstract removeItem(Lcom/android/launcher2/BaseItem;)V
.end method

.method public abstract removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
.end method

.method public abstract setAddingItemWithDrag(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setFolderColor(I)V
.end method

.method public abstract setIsLockFolder(Z)V
.end method

.method public abstract setOpenOnce(Z)V
.end method

.method public abstract setOpened(Z)V
.end method

.method public abstract setTitle(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract setToRedrawIcons(Z)V
.end method

.method public abstract sort()V
.end method
