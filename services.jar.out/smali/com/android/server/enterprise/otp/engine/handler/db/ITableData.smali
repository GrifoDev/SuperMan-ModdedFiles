.class public interface abstract Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
.super Ljava/lang/Object;
.source "ITableData.java"


# virtual methods
.method public abstract addEntry(Landroid/database/sqlite/SQLiteDatabase;)I
.end method

.method public abstract deleteEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
.end method

.method public abstract getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
.end method

.method public abstract updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I
.end method
