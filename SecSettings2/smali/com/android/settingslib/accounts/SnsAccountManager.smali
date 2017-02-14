.class public Lcom/android/settingslib/accounts/SnsAccountManager;
.super Ljava/lang/Object;
.source "SnsAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/settingslib/accounts/SnsAccountManager;


# instance fields
.field private mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mQueryFailTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingslib/accounts/SnsAccountManager;->mInstance:Lcom/android/settingslib/accounts/SnsAccountManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mContext:Landroid/content/Context;

    iput-wide v2, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mQueryFailTime:J

    iput-object v0, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mContext:Landroid/content/Context;

    iput-wide v2, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mQueryFailTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settingslib/accounts/SnsAccountManager;->updateSSOAccounts()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;
    .locals 3

    const-class v1, Lcom/android/settingslib/accounts/SnsAccountManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settingslib/accounts/SnsAccountManager;->mInstance:Lcom/android/settingslib/accounts/SnsAccountManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/settingslib/accounts/SnsAccountManager;

    invoke-direct {v0, p0}, Lcom/android/settingslib/accounts/SnsAccountManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/accounts/SnsAccountManager;->mInstance:Lcom/android/settingslib/accounts/SnsAccountManager;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settingslib/accounts/SnsAccountManager;->mInstance:Lcom/android/settingslib/accounts/SnsAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "SnsAccountManager"

    const-string/jumbo v2, "context is null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized querySSOAccounts()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "content://com.sec.android.app.sns3/sso_account"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "account_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "sso_account_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "sso_account_label"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "sso_retry_action"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "service_app_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mQueryFailTime:J

    const-string/jumbo v0, "SnsAccountManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SSO accounts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mQueryFailTime:J

    const-string/jumbo v0, "SnsAccountManager"

    const-string/jumbo v7, "cursor of sns_account is null"

    invoke-static {v0, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getPairedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/SnsAccountManager;->getPairedAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v1, v0, v4

    :cond_0
    return-object v1
.end method

.method public getPairedAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSSOAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/SnsAccountManager;->getSSOAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v2, v0, v4

    :cond_0
    return-object v2
.end method

.method public declared-synchronized getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mQueryFailTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mQueryFailTime:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/accounts/SnsAccountManager;->updateSSOAccounts()V

    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;

    iget-object v2, v0, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getSSOAccountLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountLabel:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method public getSSOAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method public getServiceAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->serviceAppName:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method public getSnsAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method public updateSSOAccounts()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/accounts/SnsAccountManager;->querySSOAccounts()V

    return-void
.end method
