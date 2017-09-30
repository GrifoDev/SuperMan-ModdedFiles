.class public Lcom/whitepages/nameid/a;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/whitepages/nameid/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Lcom/whitepages/nameid/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/whitepages/nameid/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/whitepages/nameid/a;->a:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/whitepages/nameid/a;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/whitepages/nameid/a;->c:Lcom/whitepages/nameid/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/whitepages/nameid/a;
    .locals 3

    const-class v1, Lcom/whitepages/nameid/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/whitepages/nameid/a;->c:Lcom/whitepages/nameid/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/whitepages/nameid/a;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/whitepages/nameid/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/whitepages/nameid/a;->c:Lcom/whitepages/nameid/a;

    :cond_0
    sget-object v0, Lcom/whitepages/nameid/a;->c:Lcom/whitepages/nameid/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/whitepages/nameid/b;->a(Landroid/database/Cursor;)Lcom/whitepages/nameid/b;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callProtectInfo:Lcom/whitepages/nameid/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    sget-object v0, Lcom/whitepages/nameid/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_contact_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/wp_listing_info"

    aput-object v1, v6, v0

    new-instance v2, Lcom/whitepages/nameid/a$a;

    invoke-direct {v2, v7}, Lcom/whitepages/nameid/a$a;-><init>(Lcom/whitepages/nameid/a$1;)V

    iput-object p3, v2, Lcom/whitepages/nameid/a$a;->a:Ljava/lang/String;

    const/4 v1, -0x2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/whitepages/nameid/a;->b:[Ljava/lang/String;

    const-string v5, "raw_contact_id = ? AND mimetype = ?"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/whitepages/nameid/a;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    if-eqz p3, :cond_0

    check-cast p2, Lcom/whitepages/nameid/a$a;

    iget-object v0, p2, Lcom/whitepages/nameid/a$a;->a:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lcom/whitepages/nameid/a;->a(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/whitepages/nameid/c;->a()Lcom/whitepages/nameid/c;

    move-result-object v0

    iget-object v1, p2, Lcom/whitepages/nameid/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/whitepages/nameid/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/whitepages/nameid/a;->a:Ljava/lang/String;

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
