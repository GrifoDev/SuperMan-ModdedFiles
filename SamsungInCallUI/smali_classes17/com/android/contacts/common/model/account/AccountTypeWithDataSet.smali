.class public Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
.super Ljava/lang/Object;
.source "AccountTypeWithDataSet.java"


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;


# instance fields
.field public final accountType:Ljava/lang/String;

.field public final dataSet:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->ID_PROJECTION:[Ljava/lang/String;

    .line 36
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "1"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .end local p1    # "accountType":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    .line 48
    return-void

    :cond_1
    move-object v0, p2

    .line 47
    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .locals 1
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 82
    instance-of v2, p1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .line 85
    .local v0, "other":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    .line 86
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasData(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 59
    const-string v6, "account_type = ?"

    .line 62
    .local v6, "BASE_SELECTION":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v3, "account_type = ? AND data_set IS NULL"

    .line 64
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    aput-object v0, v4, v8

    .line 70
    .local v4, "args":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 72
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_1

    move v0, v8

    .line 76
    :goto_1
    return v0

    .line 66
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_0
    const-string v3, "account_type = ? AND data_set = ?"

    .line 67
    .restart local v3    # "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    aput-object v0, v4, v8

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    aput-object v0, v4, v1

    .restart local v4    # "args":[Ljava/lang/String;
    goto :goto_0

    .line 74
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 92
    :goto_1
    xor-int/2addr v0, v1

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
