.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContactChangeAction"
.end annotation


# virtual methods
.method public abstract onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V
.end method

.method public abstract onDeleted(Landroid/database/Cursor;Landroid/database/Cursor;)V
.end method

.method public abstract onInserted(Landroid/database/Cursor;Landroid/database/Cursor;)V
.end method
