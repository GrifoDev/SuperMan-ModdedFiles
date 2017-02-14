.class Lsun/misc/URLClassPath$FileLoader$1;
.super Lsun/misc/Resource;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$FileLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsun/misc/URLClassPath$FileLoader;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath$FileLoader;Ljava/lang/String;Ljava/net/URL;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lsun/misc/URLClassPath$FileLoader$1;->this$1:Lsun/misc/URLClassPath$FileLoader;

    iput-object p2, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lsun/misc/Resource;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeSourceURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$FileLoader$1;->this$1:Lsun/misc/URLClassPath$FileLoader;

    invoke-virtual {v0}, Lsun/misc/URLClassPath$Loader;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$url:Ljava/net/URL;

    return-object v0
.end method
