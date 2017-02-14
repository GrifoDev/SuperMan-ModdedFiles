.class Ljava/util/prefs/FileSystemPreferences$7;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->removeNodeSpi()V
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

    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

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

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$7;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iget-object v2, v2, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iget-object v3, v3, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iget-object v2, v2, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iget-object v3, v3, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iput-object v5, v2, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    return-object v5

    :cond_0
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v5

    :cond_1
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-get4(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found extraneous files when removing node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/prefs/BackingStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t delete dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v4}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-object v5
.end method
