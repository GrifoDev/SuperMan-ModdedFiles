.class public Lcn/com/xy/sms/sdk/db/XyCursor;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Landroid/database/Cursor;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->c:I

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->c:I

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    iput p3, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->c:I

    return-void
.end method

.method private a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :goto_0
    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void

    :cond_3
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    :goto_1
    if-eqz p1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    goto :goto_0
.end method

.method public getBlob(I)[B
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getCur()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMySQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public requery()Z
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setCur(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    return-void
.end method

.method public setMySQLiteDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/XyCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method
