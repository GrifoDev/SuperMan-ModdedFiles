.class public Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
.super Ljava/lang/Object;


# static fields
.field private static final c:[Ljava/lang/String;

.field private static final d:Landroid/net/Uri;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->c:[Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->d:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->b:Ljava/lang/String;

    return-void

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .locals 1

    new-instance v0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    const-string v0, "account_type = ?"

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "account_type = ? AND data_set IS NULL"

    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a:Ljava/lang/String;

    aput-object v0, v4, v6

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->d:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->c:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    move v0, v6

    :goto_1
    return v0

    :cond_0
    const-string v3, "account_type = ? AND data_set = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->b:Ljava/lang/String;

    aput-object v0, v4, v1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
