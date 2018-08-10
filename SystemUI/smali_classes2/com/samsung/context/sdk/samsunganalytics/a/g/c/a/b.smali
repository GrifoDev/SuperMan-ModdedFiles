.class public Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table logs (_id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp INTEGER, data TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
