.class public Landroid/database/sqlite/SQLiteDatabaseCorruptException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDatabaseCorruptException.java"


# static fields
.field public static final SQLITE_CORRUPT:I = 0xb

.field public static final SQLITE_CORRUPT_EXTRA:I = 0x20b

.field public static final SQLITE_NOTADB:I = 0x1a


# instance fields
.field private mCorruptCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xb

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    new-instance v0, Landroid/database/sqlite/SQLiteExceptionLog;

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    invoke-direct {v0, v1, p1}, Landroid/database/sqlite/SQLiteExceptionLog;-><init>(ILjava/lang/String;)V

    iget v1, v0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    return-void
.end method


# virtual methods
.method public getCorruptCode()I
    .locals 1

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    return v0
.end method
