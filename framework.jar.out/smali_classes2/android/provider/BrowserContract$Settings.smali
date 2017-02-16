.class public final Landroid/provider/BrowserContract$Settings;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final KEY_SYNC_ENABLED:Ljava/lang/String; = "sync_enabled"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 699
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    .line 690
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSyncEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 720
    const/4 v6, 0x0

    .line 722
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "value"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 723
    const-string/jumbo v3, "key=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "sync_enabled"

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const/4 v5, 0x0

    .line 722
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 724
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    .line 729
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 727
    :cond_0
    return v0

    .line 729
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 725
    :cond_2
    return v8

    :cond_3
    move v0, v8

    .line 727
    goto :goto_0

    .line 728
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 729
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_4
    throw v0
.end method

.method public static setSyncEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 737
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 738
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    const-string/jumbo v2, "sync_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string/jumbo v2, "value"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 736
    return-void

    .line 739
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
