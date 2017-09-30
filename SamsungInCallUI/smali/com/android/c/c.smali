.class public Lcom/android/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/c/c$b;,
        Lcom/android/c/c$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:[Ljava/lang/String;


# instance fields
.field public a:J

.field private final c:I

.field private final d:Landroid/content/ContentResolver;

.field private final e:Z

.field private f:Z

.field private g:Landroid/database/Cursor;

.field private h:Z

.field private i:I

.field private j:Landroid/net/Uri;

.field private final k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/android/c/c$b;

.field private q:Lcom/android/c/r;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/c/c;->b:Ljava/util/Map;

    sget-object v0, Lcom/android/c/c;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/c/c;->b:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/c/c;->b:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/c/c;->b:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/c/c;->b:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/c/c;->b:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/c/c;->b:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/c/c;->b:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-WHATSAPP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/c/c;->p:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/c/c;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/c/c;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/c/c;->a:J

    const-string v1, "No error"

    iput-object v1, p0, Lcom/android/c/c;->m:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/c/c;->n:Z

    invoke-static {}, Lcom/android/c/d;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "default"

    invoke-static {v1}, Lcom/android/c/d;->a(Ljava/lang/String;)I

    move-result v1

    const v2, 0x38000008

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/c/c;->c:I

    :goto_0
    iput-object p2, p0, Lcom/android/c/c;->d:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/c/c;->c:I

    invoke-static {v1}, Lcom/android/c/d;->n(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/c/c;->e:Z

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p4, "UTF-8"

    :cond_0
    invoke-static {p3}, Lcom/android/c/d;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/c/c;->e:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    const-string v0, "SHIFT_JIS"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p4, p0, Lcom/android/c/c;->k:Ljava/lang/String;

    :goto_2
    const-string v0, "VCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use the charset \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/c/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput p3, p0, Lcom/android/c/c;->c:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SHIFT_JIS"

    iput-object v0, p0, Lcom/android/c/c;->k:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iput-object p4, p0, Lcom/android/c/c;->k:Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/c/c;->k:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iput-object p4, p0, Lcom/android/c/c;->k:Ljava/lang/String;

    goto :goto_2
.end method

.method private a(JLjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/c/c;->j:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/c/c;->o:Lcom/android/c/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/c/c;->o:Lcom/android/c/c$b;

    invoke-interface {v0, p1, p2}, Lcom/android/c/c$b;->a(J)Lcom/android/c/c$a;

    move-result-object v0

    iget-object v1, v0, Lcom/android/c/c$a;->a:Landroid/net/Uri;

    iget-wide p1, v0, Lcom/android/c/c$a;->b:J

    :cond_0
    const-string v0, "contact_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x5

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/c/c;->d:Landroid/content/ContentResolver;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string v3, "contact_id=?"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const/4 v3, 0x0

    aput-object v3, v2, v1

    invoke-virtual {p3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/EntityIterator;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    :try_start_2
    const-string v0, "VCardComposer"

    const-string v2, "EntityIterator is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "VCardComposer"

    const-string v2, "InvocationTargetException has been thrown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "InvocationTargetException has been thrown"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    :cond_2
    throw v0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/c/c;->d:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "contact_id=?"

    const-string v5, "is_super_primary desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data does not exist. contactId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_1

    :cond_5
    :try_start_6
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    invoke-virtual {v0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    iget-object v3, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v0, "mimetype"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    :cond_9
    iput-wide p1, p0, Lcom/android/c/c;->a:J

    invoke-virtual {p0, v7}, Lcom/android/c/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private a(J)Z
    .locals 11

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/c/c;->d:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const-string v3, "contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "account_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SIM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SIM1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SIM2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SIM3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v8

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/android/c/c;->j:Landroid/net/Uri;

    iget-boolean v0, p0, Lcom/android/c/c;->l:Z

    if-eqz v0, :cond_1

    const-string v0, "VCardComposer"

    const-string v1, "init() is already called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/c/c;->h:Z

    iget-object v0, p0, Lcom/android/c/c;->d:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "Cursor became null unexpectedly"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/c/c;->m:Ljava/lang/String;

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/c/c;->c()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v7, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/c/c;->m:Ljava/lang/String;

    :goto_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v7, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/c/c;->m:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v7, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/android/c/c;->m:Ljava/lang/String;

    throw v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/c/c;->h()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    const-string v2, "contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/c/c;->i:I

    iget v1, p0, Lcom/android/c/c;->i:I

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/c/c;->i:I

    :cond_3
    iget v1, p0, Lcom/android/c/c;->i:I

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/c/c;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/c/c;->n:Z

    return v1
.end method

.method private h()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/c/c;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/c/c;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/android/c/c;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/c/c;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/c/c;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/c/c;->i:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/c/c;->a(JLjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VCardComposer"

    const-string v2, "Cursor#moveToNext() returned false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "The given map is null. Ignore and return empty String"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/android/c/b;

    iget v0, p0, Lcom/android/c/c;->c:I

    iget-object v2, p0, Lcom/android/c/c;->k:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/c/b;-><init>(ILjava/lang/String;)V

    const-string v0, "vnd.android.cursor.item/name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/c/b;->a(Ljava/util/List;)Lcom/android/c/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/c/b;->b(Ljava/util/List;)Lcom/android/c/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/android/c/c;->q:Lcom/android/c/r;

    invoke-virtual {v2, v0, v3}, Lcom/android/c/b;->a(Ljava/util/List;Lcom/android/c/r;)Lcom/android/c/b;

    iget v0, p0, Lcom/android/c/c;->c:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/c/b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/c/c;->c:I

    const/high16 v2, 0x80000

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/c/b;->c(Ljava/util/List;)Lcom/android/c/b;

    :cond_2
    iget v0, p0, Lcom/android/c/c;->c:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/c/b;->d(Ljava/util/List;)Lcom/android/c/b;

    :cond_3
    iget v0, p0, Lcom/android/c/c;->c:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-nez v0, :cond_4

    const-string v0, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/c/b;->g(Ljava/util/List;)Lcom/android/c/b;

    :cond_4
    iget v0, p0, Lcom/android/c/c;->c:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-nez v0, :cond_5

    const-string v0, "vnd.android.cursor.item/website"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/c/b;->f(Ljava/util/List;)Lcom/android/c/b;

    :cond_5
    iget v0, p0, Lcom/android/c/c;->c:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-nez v0, :cond_6

    iget-wide v2, p0, Lcom/android/c/c;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    iget-wide v2, p0, Lcom/android/c/c;->a:J

    invoke-direct {p0, v2, v3}, Lcom/android/c/c;->a(J)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "vnd.android.cursor.item/photo"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/c/b;->h(Ljava/util/List;)Lcom/android/c/b;

    const-string v0, "vnd.sec.cursor.item/name_card"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/android/c/c;->d:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2}, Lcom/android/c/b;->b(Ljava/util/List;Landroid/content/ContentResolver;)V

    :cond_6
    iget v0, p0, Lcom/android/c/c;->c:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    const-string v0, "vnd.android.cursor.item/note"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/c/b;->i(Ljava/util/List;)Lcom/android/c/b;

    :cond_7
    iget v0, p0, Lcom/android/c/c;->c:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_8

    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/c/b;->j(Ljava/util/List;)Lcom/android/c/b;

    :cond_8
    iget v0, p0, Lcom/android/c/c;->c:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_9

    const-string v0, "vnd.android.cursor.item/im"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/c/b;->e(Ljava/util/List;)Lcom/android/c/b;

    :cond_9
    iget v0, p0, Lcom/android/c/c;->c:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_a

    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/c/b;->l(Ljava/util/List;)Lcom/android/c/b;

    :cond_a
    iget v0, p0, Lcom/android/c/c;->c:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_b

    const-string v0, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/c/b;->k(Ljava/util/List;)Lcom/android/c/b;

    :cond_b
    iget-boolean v0, p0, Lcom/android/c/c;->e:Z

    if-eqz v0, :cond_c

    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/android/c/c;->d:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2}, Lcom/android/c/b;->a(Ljava/util/List;Landroid/content/ContentResolver;)V

    :cond_c
    invoke-virtual {v1}, Lcom/android/c/b;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "com.android.contacts"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "The Uri vCard composer received is not supported by the composer."

    iput-object v1, p0, Lcom/android/c/c;->m:Ljava/lang/String;

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p6}, Lcom/android/c/c;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/android/c/c;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/c/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/c/c;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/android/c/c;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/c/c;->n:Z

    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/c/c;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/c/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected finalize()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/c/c;->n:Z

    if-nez v0, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "finalized() is called before terminate() being called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
