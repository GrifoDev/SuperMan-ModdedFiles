.class Lsun/misc/URLClassPath$JarLoader$1;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
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
.field final synthetic this$1:Lsun/misc/URLClassPath$JarLoader;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath$JarLoader;)V
    .locals 0

    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

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

    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {}, Lsun/misc/URLClassPath;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Opening "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v7}, Lsun/misc/URLClassPath$JarLoader;->-get0(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :cond_0
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    iget-object v6, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    iget-object v7, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v7}, Lsun/misc/URLClassPath$JarLoader;->-get0(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v7

    invoke-static {v6, v7}, Lsun/misc/URLClassPath$JarLoader;->-wrap0(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v6

    invoke-static {v5, v6}, Lsun/misc/URLClassPath$JarLoader;->-set1(Lsun/misc/URLClassPath$JarLoader;Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    iget-object v6, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v6}, Lsun/misc/URLClassPath$JarLoader;->-get3(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;

    move-result-object v6

    iget-object v7, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v7}, Lsun/misc/URLClassPath$JarLoader;->-get5(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/MetaIndex;

    move-result-object v7

    invoke-static {v6, v7}, Lsun/misc/JarIndex;->getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;

    move-result-object v6

    invoke-static {v5, v6}, Lsun/misc/URLClassPath$JarLoader;->-set0(Lsun/misc/URLClassPath$JarLoader;Lsun/misc/JarIndex;)Lsun/misc/JarIndex;

    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-get2(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-get2(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;

    move-result-object v5

    invoke-virtual {v5}, Lsun/misc/JarIndex;->getJarFiles()[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_2

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-get0(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-direct {v2, v5, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-static {v2}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-get4(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-get4(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v8

    :catch_0
    move-exception v0

    goto :goto_1
.end method
