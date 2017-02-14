.class public Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
.super Ljava/lang/Object;
.source "PolicyData.java"

# interfaces
.implements Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;


# static fields
.field public static final COLOUMN_KEY_CURRENT_TRANSACTIONS:Ljava/lang/String; = "current_number_of_transactions"

.field public static final COLOUMN_KEY_EXPIRY_DATE:Ljava/lang/String; = "expiry_date"

.field public static final COLOUMN_KEY_START_DATE:Ljava/lang/String; = "start_date"

.field public static final COLOUMN_KEY_TRANSACTIONS:Ljava/lang/String; = "number_of_transactions"

.field public static final COLOUMN_PIN_ENCODING:Ljava/lang/String; = "encoding"

.field public static final COLOUMN_PIN_MAX_FAILED_ATTEMPTS:Ljava/lang/String; = "max_failed_attempts"

.field public static final COLOUMN_PIN_MAX_LENGTH:Ljava/lang/String; = "max_length"

.field public static final COLOUMN_PIN_MIN_LENGTH:Ljava/lang/String; = "min_length"

.field public static final COLOUMN_PIN_USAGE_MODE:Ljava/lang/String; = "pin_usage_mode"

.field public static final COLUMN_TOKEN_ID:Ljava/lang/String; = "token_id"

.field public static final CREATE_TABLE:Ljava/lang/String; = "create table PolicyTable(token_id varchar primary key, pin_usage_mode varchar, max_failed_attempts integer,min_length integer default 0, max_length integer, encoding varchar, start_date varchar, expiry_date varchar, number_of_transactions integer, current_number_of_transactions integer default 0);"

.field public static final TABLE_NAME:Ljava/lang/String; = "PolicyTable"


# instance fields
.field public currentNoOfTransactions:I

.field public expiryDate:Ljava/lang/String;

.field public maxFailedAttempts:I

.field public maxLength:I

.field public minLength:I

.field public numberOfTransactions:I

.field public pinEncoding:Ljava/lang/String;

.field public pinUsageMode:Ljava/lang/String;

.field public startDate:Ljava/lang/String;

.field tokenId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13

    const/4 v12, 0x0

    const-string/jumbo v0, "PolicyData::addEntry Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "token_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    aput-object v0, v4, v12

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PolicyData::addEntry wrong token ID generated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    sget v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I

    return v0

    :cond_1
    :try_start_0
    const-string/jumbo v1, "PolicyTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const-string/jumbo v0, "token_id"

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pin_usage_mode"

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->pinUsageMode:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "max_failed_attempts"

    iget v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->maxFailedAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "min_length"

    iget v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->minLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "max_length"

    iget v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->maxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "encoding"

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->pinEncoding:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "start_date"

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->startDate:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "expiry_date"

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->expiryDate:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "number_of_transactions"

    iget v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->numberOfTransactions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "PolicyTable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, -0x1

    if-ne v11, v0, :cond_3

    sget v9, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PolicyData::addEntry Exit [ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    return v12

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PolicyData::addEntry Token already exist TokenID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    sget v9, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_ALREADY_EXISTS:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public deleteEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "PolicyData::deleteEntry Enter"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v2, "token_id = ?"

    new-array v1, v5, [Ljava/lang/String;

    aput-object p2, v1, v4

    const-string/jumbo v3, "PolicyTable"

    invoke-virtual {p1, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_0

    return v4

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PolicyData::deleteEntry no row deleted for TokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    sget v3, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_DELETED:I

    return v3
.end method

.method public getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "PolicyData::getEntry Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const-string/jumbo v3, "token_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PolicyData::getEntry wrong tokenId provided TokenID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :try_start_0
    const-string/jumbo v1, "PolicyTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v9

    :cond_4
    :try_start_1
    new-instance v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    invoke-direct {v10}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v0, "token_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    const-string/jumbo v0, "pin_usage_mode"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->pinUsageMode:Ljava/lang/String;

    const-string/jumbo v0, "max_failed_attempts"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->maxFailedAttempts:I

    const-string/jumbo v0, "min_length"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->minLength:I

    const-string/jumbo v0, "max_length"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->maxLength:I

    const-string/jumbo v0, "encoding"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->pinEncoding:Ljava/lang/String;

    const-string/jumbo v0, "start_date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->startDate:Ljava/lang/String;

    const-string/jumbo v0, "expiry_date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->expiryDate:Ljava/lang/String;

    const-string/jumbo v0, "number_of_transactions"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->numberOfTransactions:I

    const-string/jumbo v0, "current_number_of_transactions"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->currentNoOfTransactions:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v9, v10

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v10

    goto :goto_1
.end method

.method public updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "PolicyData::updateEntry Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "PolicyData::updateEntry tokenId is null"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    sget v4, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I

    return v4

    :cond_1
    const-string/jumbo v3, "token_id = ?"

    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    aput-object v4, v2, v6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "token_id"

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pin_usage_mode"

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->pinUsageMode:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "max_failed_attempts"

    iget v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->maxFailedAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "min_length"

    iget v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->minLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "max_length"

    iget v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->maxLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "encoding"

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->pinEncoding:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "start_date"

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->startDate:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "expiry_date"

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->expiryDate:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "number_of_transactions"

    iget v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->numberOfTransactions:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "current_number_of_transactions"

    iget v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->currentNoOfTransactions:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "PolicyTable"

    const-string/jumbo v5, "token_id = ?"

    invoke-virtual {p1, v4, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PolicyData::updateEntry no row updated for tokenId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->tokenId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    sget v4, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_FOUND:I

    return v4

    :cond_2
    return v6
.end method
