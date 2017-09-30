.class public Lcom/android/contacts/common/util/DataStatus;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->a:I

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->b:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->c:J

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->d:Ljava/lang/String;

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->e:I

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->a:I

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->b:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->c:J

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->d:Ljava/lang/String;

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->e:I

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->f:I

    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/DataStatus;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, -0x1

    const-string v0, "mode"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->a(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->a:I

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/android/contacts/common/util/DataStatus;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->b:Ljava/lang/String;

    const-string v0, "status_ts"

    const-wide/16 v2, -0x1

    invoke-static {p1, v0, v2, v3}, Lcom/android/contacts/common/util/DataStatus;->a(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->c:J

    const-string v0, "status_res_package"

    invoke-static {p1, v0}, Lcom/android/contacts/common/util/DataStatus;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->d:Ljava/lang/String;

    const-string v0, "status_icon"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->a(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->e:I

    const-string v0, "status_label"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->a(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->f:I

    return-void
.end method
