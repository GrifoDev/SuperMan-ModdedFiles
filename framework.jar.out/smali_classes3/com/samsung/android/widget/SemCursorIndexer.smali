.class public Lcom/samsung/android/widget/SemCursorIndexer;
.super Lcom/samsung/android/widget/SemAbstractIndexer;
.source "SemCursorIndexer.java"


# static fields
.field public static final EXTRA_INDEX_COUNTS:Ljava/lang/String; = "indexscroll_index_counts"

.field public static final EXTRA_INDEX_TITLES:Ljava/lang/String; = "indexscroll_index_titles"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mColumnIndex:I

.field protected mCursor:Landroid/database/Cursor;

.field protected mSavedCursorPos:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 4

    invoke-direct {p0, p3}, Lcom/samsung/android/widget/SemAbstractIndexer;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "SemCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->debug:Z

    iput-object p1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    iput p2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    const-string/jumbo v1, "SemCursorIndexer"

    const-string/jumbo v2, "SemCursorIndexer constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string/jumbo v1, "SemCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;II)V
    .locals 4

    invoke-direct {p0, p3, p4, p5}, Lcom/samsung/android/widget/SemAbstractIndexer;-><init>(Ljava/lang/CharSequence;II)V

    const-string/jumbo v1, "SemCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->debug:Z

    iput-object p1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    iput p2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    const-string/jumbo v1, "SemCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemCursorIndexer constructor, profileCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", favoriteCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string/jumbo v1, "SemCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/widget/SemAbstractIndexer;-><init>([Ljava/lang/String;I)V

    const-string/jumbo v1, "SemCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->debug:Z

    iput-object p1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    iput p2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    const-string/jumbo v1, "SemCursorIndexer"

    const-string/jumbo v2, "SemCursorIndexer constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string/jumbo v1, "SemCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I[Ljava/lang/String;III)V
    .locals 4

    invoke-direct {p0, p3, p4, p5, p6}, Lcom/samsung/android/widget/SemAbstractIndexer;-><init>([Ljava/lang/String;III)V

    const-string/jumbo v1, "SemCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->debug:Z

    iput-object p1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    iput p2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    const-string/jumbo v1, "SemCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemCursorIndexer constructor, profileCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", favoriteCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string/jumbo v1, "SemCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected getBundle()Landroid/os/Bundle;
    .locals 2

    const-string/jumbo v0, "SemCursorIndexer"

    const-string/jumbo v1, "SemCursorIndexer getBundle : Bundle was used by Indexer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getItemAt(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemCursorIndexer"

    const-string/jumbo v2, "SemCursorIndexer getItemCount : mCursor is closed  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    iget v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    if-gez v1, :cond_1

    const-string/jumbo v1, "SemCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getItemAt() mColumnIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4
.end method

.method protected getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemCursorIndexer"

    const-string/jumbo v1, "SemCursorIndexer getItemCount : mCursor is closed  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method protected isDataToBeIndexedAvailable()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemCursorIndexer;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onBeginTransaction()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mSavedCursorPos:I

    const-string/jumbo v0, "SemCursorIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemCursorIndexer.onBeginTransaction() : Current cursor pos to save is :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onEndTransaction()V
    .locals 3

    const-string/jumbo v0, "SemCursorIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemCursorIndexer.onEndTransaction() : Saved cursor pos to restore  is :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mSavedCursorPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-void
.end method

.method public setFavoriteItemsCount(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemCursorIndexer;->setFavoriteItem(I)V

    return-void
.end method

.method public setGroupItemsCount(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemCursorIndexer;->setGroupItem(I)V

    return-void
.end method

.method public setMiscItemsCount(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemCursorIndexer;->setDigitItem(I)V

    return-void
.end method

.method public setProfileItemsCount(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemCursorIndexer;->setProfileItem(I)V

    return-void
.end method
