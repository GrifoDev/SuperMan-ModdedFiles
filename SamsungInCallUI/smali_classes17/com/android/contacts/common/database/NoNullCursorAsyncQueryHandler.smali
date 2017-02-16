.class public abstract Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NoNullCursorAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end method

.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 45
    move-object v0, p2

    check-cast v0, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;

    .line 47
    .local v0, "projectionCookie":Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;
    iget-object v1, v0, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;->originalCookie:Ljava/lang/Object;

    invoke-super {p0, p1, v1, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 49
    if-nez p3, :cond_0

    .line 50
    new-instance p3, Lcom/android/contacts/common/database/EmptyCursor;

    .end local p3    # "cursor":Landroid/database/Cursor;
    iget-object v1, v0, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;->projection:[Ljava/lang/String;

    invoke-direct {p3, v1}, Lcom/android/contacts/common/database/EmptyCursor;-><init>([Ljava/lang/String;)V

    .line 52
    .restart local p3    # "cursor":Landroid/database/Cursor;
    :cond_0
    iget-object v1, v0, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;->originalCookie:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;->onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 53
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v2, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;

    invoke-direct {v2, p2, p4}, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    .local v2, "projectionCookie":Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;
    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 39
    invoke-super/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
