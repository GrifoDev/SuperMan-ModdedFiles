.class Ljava/net/URLClassLoader$1;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
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
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/URLClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/net/URLClassLoader$1;->this$0:Ljava/net/URLClassLoader;

    iput-object p2, p0, Ljava/net/URLClassLoader$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v3, p0, Ljava/net/URLClassLoader$1;->val$name:Ljava/lang/String;

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ljava/net/URLClassLoader$1;->this$0:Ljava/net/URLClassLoader;

    invoke-static {v3}, Ljava/net/URLClassLoader;->-get1(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lsun/misc/URLClassPath;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, p0, Ljava/net/URLClassLoader$1;->this$0:Ljava/net/URLClassLoader;

    iget-object v4, p0, Ljava/net/URLClassLoader$1;->val$name:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Ljava/net/URLClassLoader;->-wrap0(Ljava/net/URLClassLoader;Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/ClassNotFoundException;

    iget-object v4, p0, Ljava/net/URLClassLoader$1;->val$name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    new-instance v3, Ljava/lang/ClassNotFoundException;

    iget-object v4, p0, Ljava/net/URLClassLoader$1;->val$name:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URLClassLoader$1;->run()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
