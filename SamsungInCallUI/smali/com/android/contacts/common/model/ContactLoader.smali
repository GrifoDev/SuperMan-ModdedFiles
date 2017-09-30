.class public Lcom/android/contacts/common/model/ContactLoader;
.super Landroid/content/AsyncTaskLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/ContactLoader$AccountKey;,
        Lcom/android/contacts/common/model/ContactLoader$GroupQuery;,
        Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;,
        Lcom/android/contacts/common/model/ContactLoader$ContactQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/common/model/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Z

.field private static c:Lcom/android/contacts/common/model/Contact;


# instance fields
.field private final d:Landroid/net/Uri;

.field private e:Landroid/net/Uri;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/android/contacts/common/model/Contact;

.field private k:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/contacts/common/model/ContactLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->a:Ljava/lang/String;

    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/common/model/ContactLoader;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->c:Lcom/android/contacts/common/model/Contact;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/a/b/ae;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->l:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->e:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->d:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/contacts/common/model/ContactLoader;->f:Z

    iput-boolean p4, p0, Lcom/android/contacts/common/model/ContactLoader;->g:Z

    iput-boolean p5, p0, Lcom/android/contacts/common/model/ContactLoader;->h:Z

    iput-boolean p6, p0, Lcom/android/contacts/common/model/ContactLoader;->i:Z

    return-void
.end method

.method private a(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x11

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x13

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x15

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x16

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x18

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x19

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    return-object v0
.end method

.method private a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 12

    const/4 v3, 0x0

    const-string v0, "entities"

    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->b:[Ljava/lang/String;

    const-string v5, "raw_contact_id"

    move-object v0, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->a:Ljava/lang/String;

    const-string v1, "No cursor returned in loadContactEntity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->d:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/common/model/Contact;->a(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->d:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/common/model/Contact;->a(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, v1, p2}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    const-wide/16 v4, -0x1

    new-instance v2, Lcom/google/a/b/m$a;

    invoke-direct {v2}, Lcom/google/a/b/m$a;-><init>()V

    new-instance v8, Lcom/google/a/b/n$a;

    invoke-direct {v8}, Lcom/google/a/b/n$a;-><init>()V

    :cond_2
    const/16 v6, 0xe

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v9, v6, v4

    if-eqz v9, :cond_3

    new-instance v3, Lcom/android/contacts/common/model/RawContact;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {v2, v3}, Lcom/google/a/b/m$a;->c(Ljava/lang/Object;)Lcom/google/a/b/m$a;

    move-wide v4, v6

    :cond_3
    const/16 v6, 0x1a

    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0, v1}, Lcom/android/contacts/common/model/ContactLoader;->b(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/RawContact;->a(Landroid/content/ContentValues;)V

    const/16 v6, 0x33

    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x35

    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    new-instance v6, Lcom/android/contacts/common/util/DataStatus;

    invoke-direct {v6, v1}, Lcom/android/contacts/common/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    const/16 v7, 0x1a

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v8, v7, v6}, Lcom/google/a/b/n$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/b/n$a;

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/google/a/b/m$a;->a()Lcom/google/a/b/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/Contact;->a(Lcom/google/a/b/m;)V

    invoke-virtual {v8}, Lcom/google/a/b/n$a;->a()Lcom/google/a/b/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/Contact;->a(Lcom/google/a/b/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 25

    const-string v2, "directory"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-wide/16 v6, 0x0

    :goto_0
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v2, 0x3a

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v20, 0x1

    :goto_1
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v21, 0x0

    :goto_2
    const/16 v2, 0x3b

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/16 v22, 0x1

    :goto_3
    const/16 v2, 0x3c

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v2, 0x3d

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/16 v24, 0x1

    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_6

    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    :goto_5
    new-instance v2, Lcom/android/contacts/common/model/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/model/ContactLoader;->d:Landroid/net/Uri;

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v24}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    return-object v2

    :cond_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_0

    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto :goto_2

    :cond_4
    const/16 v22, 0x0

    goto :goto_3

    :cond_5
    const/16 v24, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v5, p2

    goto :goto_5
.end method

.method private static a(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 26

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v2

    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "directory"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v2, "display_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "display_name_alt"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "display_name_source"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v2, "photo_uri"

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Lcom/android/contacts/common/model/Contact;

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const-wide/16 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v24}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    new-instance v3, Lcom/google/a/b/n$a;

    invoke-direct {v3}, Lcom/google/a/b/n$a;-><init>()V

    invoke-virtual {v3}, Lcom/google/a/b/n$a;->a()Lcom/google/a/b/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/Contact;->a(Lcom/google/a/b/n;)V

    const-string v3, "account_name"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "displayName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_1

    const-string v4, "account_type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const-string v7, "exportSupport"

    const/4 v8, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/common/model/Contact;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "contact_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v5, Lcom/android/contacts/common/model/RawContact;

    invoke-direct {v5, v3}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    const-string v3, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_0

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v5, v9, v3}, Lcom/android/contacts/common/model/ContactLoader;->a(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "exportSupport"

    const/4 v8, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/common/model/Contact;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {v5, v4, v3}, Lcom/android/contacts/common/model/ContactLoader;->a(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/a/b/m$a;

    invoke-direct {v3}, Lcom/google/a/b/m$a;-><init>()V

    invoke-virtual {v3, v5}, Lcom/google/a/b/m$a;->c(Ljava/lang/Object;)Lcom/google/a/b/m$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/b/m$a;->a()Lcom/google/a/b/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/Contact;->a(Lcom/google/a/b/m;)V

    return-object v2
.end method

.method private a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 4

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->b:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->b:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->b:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "mimetype"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_id"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContact;->a(Landroid/content/ContentValues;)V

    return-void
.end method

.method private b(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    const/16 v2, 0x1a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v1, 0x1b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x21

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x23

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x24

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x25

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x26

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x27

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x29

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x30

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x34

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x3e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x3f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x40

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->j:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->f()Lcom/google/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/m;->b()Lcom/google/a/b/aj;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/contacts/common/model/ContactLoader;->l:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/model/ContactLoader;->l:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContact;->b(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/contacts/common/model/ContactLoader;->a:Ljava/lang/String;

    const-string v4, "Error sending message to source-app"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lcom/android/contacts/common/model/Contact;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->c(Lcom/android/contacts/common/model/Contact;)V

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    move-object v2, v1

    move-object v1, v0

    :goto_0
    const/16 v0, 0x4000

    new-array v0, v0, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_1
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->i()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/Contact;->a([B)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/Contact;->a([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->k:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->k:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->k:Landroid/content/Loader$ForceLoadContentObserver;

    :cond_0
    return-void
.end method

.method private c(Lcom/android/contacts/common/model/Contact;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->c()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->f()Lcom/google/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/m;->b()Lcom/google/a/b/aj;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->b()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-nez v5, :cond_3

    instance-of v4, v0, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->c()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/Contact;->b([B)V

    goto :goto_0
.end method

.method private d(Lcom/android/contacts/common/model/Contact;)V
    .locals 5

    new-instance v1, Lcom/google/a/b/m$a;

    invoke-direct {v1}, Lcom/google/a/b/m$a;-><init>()V

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/google/a/b/v;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->f()Lcom/google/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/m;->b()Lcom/google/a/b/aj;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/b/m$a;->b(Ljava/lang/Iterable;)Lcom/google/a/b/m$a;

    :cond_1
    invoke-virtual {v1}, Lcom/google/a/b/m$a;->a()Lcom/google/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/Contact;->b(Lcom/google/a/b/m;)V

    return-void
.end method

.method private e(Lcom/android/contacts/common/model/Contact;)V
    .locals 11

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->g()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x3

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :try_start_1
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    move-object v2, v3

    :goto_1
    move-object v0, p1

    move-object v3, v7

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/model/Contact;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_3
    sget-object v8, Lcom/android/contacts/common/model/ContactLoader;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Contact directory resource not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object v2, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private f(Lcom/android/contacts/common/model/Contact;)V
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->f()Lcom/google/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/m;->b()Lcom/google/a/b/aj;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/android/contacts/common/model/ContactLoader$AccountKey;

    invoke-direct {v7, v5, v6, v0}, Lcom/android/contacts/common/model/ContactLoader$AccountKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, " OR "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v7, "(account_name=? AND account_type=?"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    const-string v5, " AND data_set=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v0, " AND data_set IS NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance v11, Lcom/google/a/b/m$a;

    invoke-direct {v11}, Lcom/google/a/b/m$a;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/common/model/ContactLoader$GroupQuery;->a:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_9

    :goto_2
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v7, v9

    :goto_3
    const/4 v0, 0x6

    invoke-interface {v12, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v8, v9

    :goto_4
    new-instance v0, Lcom/android/contacts/common/GroupMetaData;

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/common/GroupMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V

    invoke-virtual {v11, v0}, Lcom/google/a/b/m$a;->c(Ljava/lang/Object;)Lcom/google/a/b/m$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    const/4 v0, 0x5

    :try_start_1
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v7, v10

    goto :goto_3

    :cond_5
    move v7, v9

    goto :goto_3

    :cond_6
    const/4 v0, 0x6

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    move v8, v10

    goto :goto_4

    :cond_7
    move v8, v9

    goto :goto_4

    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    invoke-virtual {v11}, Lcom/google/a/b/m$a;->a()Lcom/google/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/Contact;->c(Lcom/google/a/b/m;)V

    return-void
.end method

.method private g(Lcom/android/contacts/common/model/Contact;)V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/GeoUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->f()Lcom/google/a/b/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/b/m;->size()I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_2

    invoke-virtual {v5, v3}, Lcom/google/a/b/m;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->f()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v1, v2

    :goto_1
    if-ge v1, v8, :cond_1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    instance-of v9, v0, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    if-eqz v9, :cond_0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->a(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/android/contacts/common/model/Contact;
    .locals 6

    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadInBackground="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->e:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->e:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/ContactLoaderUtils;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/model/ContactLoader;->c:Lcom/android/contacts/common/model/Contact;

    const/4 v3, 0x0

    sput-object v3, Lcom/android/contacts/common/model/ContactLoader;->c:Lcom/android/contacts/common/model/Contact;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/contacts/common/model/Contact;->a()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/model/ContactLoader;->e:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/common/util/UriUtils;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Lcom/android/contacts/common/model/Contact;

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->d:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact;)V

    const/4 v0, 0x1

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->e(Lcom/android/contacts/common/model/Contact;)V

    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/android/contacts/common/model/ContactLoader;->i:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->g(Lcom/android/contacts/common/model/Contact;)V

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->b(Lcom/android/contacts/common/model/Contact;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->g:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->e()Lcom/google/a/b/m;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->d(Lcom/android/contacts/common/model/Contact;)V

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "encoded"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->e:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    :goto_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget-boolean v2, p0, Lcom/android/contacts/common/model/ContactLoader;->f:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->j()Lcom/google/a/b/m;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->f(Lcom/android/contacts/common/model/Contact;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/contacts/common/model/ContactLoader;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading the contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/model/ContactLoader;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->d:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/android/contacts/common/model/Contact;->a(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    goto :goto_2
.end method

.method public a(Lcom/android/contacts/common/model/Contact;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->c()V

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->j:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->a()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->h()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering content observer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->e:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->k:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->k:Landroid/content/Loader$ForceLoadContentObserver;

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->e:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/common/model/ContactLoader;->k:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->h:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->b()V

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->j:Lcom/android/contacts/common/model/Contact;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/contacts/common/model/Contact;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->a(Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->a()Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->j:Lcom/android/contacts/common/model/Contact;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->j:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->j:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->a(Lcom/android/contacts/common/model/Contact;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->j:Lcom/android/contacts/common/model/Contact;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    return-void
.end method
