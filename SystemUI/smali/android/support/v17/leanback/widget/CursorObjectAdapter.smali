.class public Landroid/support/v17/leanback/widget/CursorObjectAdapter;
.super Landroid/support/v17/leanback/widget/ObjectAdapter;
.source "CursorObjectAdapter.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mItemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMapper:Landroid/support/v17/leanback/database/CursorMapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mMapper:Landroid/support/v17/leanback/database/CursorMapper;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/database/CursorMapper;->convert(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method
