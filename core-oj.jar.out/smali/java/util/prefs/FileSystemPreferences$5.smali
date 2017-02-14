.class Ljava/util/prefs/FileSystemPreferences$5;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->writeBackCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method constructor <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .locals 0

    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$5;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get3(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/prefs/XmlSupport;->exportMap(Ljava/io/OutputStream;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_6

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    instance-of v3, v0, Ljava/util/prefs/BackingStoreException;

    if-eqz v3, :cond_7

    nop

    nop

    throw v0

    :cond_2
    :try_start_5
    new-instance v3, Ljava/util/prefs/BackingStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " create failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    :goto_1
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_2
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_3
    :goto_3
    if-eqz v4, :cond_5

    :try_start_8
    throw v4

    :catch_3
    move-exception v5

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_3

    :cond_4
    if-eq v4, v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    throw v3

    :cond_6
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v3

    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get4(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/prefs/BackingStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get4(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_7
    new-instance v3, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v3, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_8
    return-object v4

    :catchall_1
    move-exception v3

    goto :goto_2

    :catchall_2
    move-exception v3

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v3

    move-object v1, v2

    goto :goto_1
.end method
