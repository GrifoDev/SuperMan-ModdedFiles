.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileChangeAction"
.end annotation


# virtual methods
.method public abstract addOffEntry(Ljava/lang/String;Z)V
.end method

.method public abstract getResult()Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;
.end method

.method public abstract onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V
.end method

.method public abstract onDeleted(Landroid/database/Cursor;Landroid/database/Cursor;)V
.end method

.method public abstract onInserted(Landroid/database/Cursor;Landroid/database/Cursor;)V
.end method

.method public abstract setHavePhotoDeletedMimeType(Z)V
.end method
