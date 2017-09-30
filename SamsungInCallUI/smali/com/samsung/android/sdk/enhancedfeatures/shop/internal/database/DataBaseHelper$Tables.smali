.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper$Tables;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tables"
.end annotation


# static fields
.field public static final CREATE_CONTENTS_LIST_TABLE:Ljava/lang/String; = "CREATE TABLE contents_list (_id INTEGER PRIMARY KEY AUTOINCREMENT, content_type INTEGER NOT NULL DEFAULT(1), item_id INTEGER NOT NULL, title TEXT, panel_url TEXT, file_path TEXT, install INTEGER NOT NULL DEFAULT(0), expirytime INTEGER NOT NULL DEFAULT(0), display_startdate INTEGER NOT NULL DEFAULT(0), local_version INTEGER NOT NULL DEFAULT(1), latest_version INTEGER NOT NULL DEFAULT(1), extras TEXT,  UNIQUE (content_type, item_id))"

.field public static final CREATE_STICKER_TABLE:Ljava/lang/String; = "CREATE TABLE sticker_item (_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id INTEGER NOT NULL, sticker_id INTEGER NOT NULL, file_path TEXT, sent_time INTEGER NOT NULL DEFAULT(0),  UNIQUE (item_id, sticker_id))"
