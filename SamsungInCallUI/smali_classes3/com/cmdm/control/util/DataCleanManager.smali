.class public Lcom/cmdm/control/util/DataCleanManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 4
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 76
    :cond_0
    return-void

    .line 72
    :cond_1
    aget-object v0, v2, v1

    .line 73
    .local v0, "item":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static varargs cleanApplicationData(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filepath"    # [Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/cmdm/control/util/DataCleanManager;->cleanInternalCache(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lcom/cmdm/control/util/DataCleanManager;->cleanExternalCache(Landroid/content/Context;)V

    .line 61
    invoke-static {p0}, Lcom/cmdm/control/util/DataCleanManager;->cleanDatabases(Landroid/content/Context;)V

    .line 62
    invoke-static {p0}, Lcom/cmdm/control/util/DataCleanManager;->cleanSharedPreference(Landroid/content/Context;)V

    .line 63
    invoke-static {p0}, Lcom/cmdm/control/util/DataCleanManager;->cleanFiles(Landroid/content/Context;)V

    .line 64
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 67
    return-void

    .line 64
    :cond_0
    aget-object v0, p1, v1

    .line 65
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/cmdm/control/util/DataCleanManager;->cleanCustomCache(Ljava/lang/String;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static cleanCustomCache(Ljava/lang/String;)V
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmdm/control/util/DataCleanManager;->a(Ljava/io/File;)V

    .line 55
    return-void
.end method

.method public static cleanDatabaseByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static cleanDatabases(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmdm/control/util/DataCleanManager;->a(Ljava/io/File;)V

    .line 20
    return-void
.end method

.method public static cleanExternalCache(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "mounted"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public static cleanFiles(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/DataCleanManager;->a(Ljava/io/File;)V

    .line 39
    return-void
.end method

.method public static cleanInternalCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/DataCleanManager;->a(Ljava/io/File;)V

    .line 14
    return-void
.end method

.method public static cleanSharedPreference(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/shared_prefs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmdm/control/util/DataCleanManager;->a(Ljava/io/File;)V

    .line 29
    return-void
.end method
