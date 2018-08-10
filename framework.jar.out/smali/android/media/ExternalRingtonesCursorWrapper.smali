.class public Landroid/media/ExternalRingtonesCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ExternalRingtonesCursorWrapper.java"


# instance fields
.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput p2, p0, Landroid/media/ExternalRingtonesCursorWrapper;->mUserId:I

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 3

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Landroid/media/ExternalRingtonesCursorWrapper;->mUserId:I

    invoke-static {v1, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
