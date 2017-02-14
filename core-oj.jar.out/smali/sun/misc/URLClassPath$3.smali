.class Lsun/misc/URLClassPath$3;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath;->getLoader(Ljava/net/URL;)Lsun/misc/URLClassPath$Loader;
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
        "Lsun/misc/URLClassPath$Loader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/misc/URLClassPath;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath;Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lsun/misc/URLClassPath$3;->this$0:Lsun/misc/URLClassPath;

    iput-object p2, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

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

    invoke-virtual {p0}, Lsun/misc/URLClassPath$3;->run()Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/misc/URLClassPath$Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "file"

    iget-object v2, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lsun/misc/URLClassPath$FileLoader;

    iget-object v2, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    invoke-direct {v1, v2}, Lsun/misc/URLClassPath$FileLoader;-><init>(Ljava/net/URL;)V

    return-object v1

    :cond_0
    new-instance v1, Lsun/misc/URLClassPath$Loader;

    iget-object v2, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    invoke-direct {v1, v2}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

    return-object v1

    :cond_1
    new-instance v1, Lsun/misc/URLClassPath$JarLoader;

    iget-object v2, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    iget-object v3, p0, Lsun/misc/URLClassPath$3;->this$0:Lsun/misc/URLClassPath;

    invoke-static {v3}, Lsun/misc/URLClassPath;->-get2(Lsun/misc/URLClassPath;)Ljava/net/URLStreamHandler;

    move-result-object v3

    iget-object v4, p0, Lsun/misc/URLClassPath$3;->this$0:Lsun/misc/URLClassPath;

    iget-object v4, v4, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    invoke-direct {v1, v2, v3, v4}, Lsun/misc/URLClassPath$JarLoader;-><init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;)V

    return-object v1
.end method
