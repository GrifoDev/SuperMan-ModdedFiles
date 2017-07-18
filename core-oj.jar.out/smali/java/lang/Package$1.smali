.class final Ljava/lang/Package$1;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Package;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fn:Ljava/lang/String;

.field final synthetic val$iname:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/lang/Package$1;->val$iname:Ljava/lang/String;

    iput-object p2, p0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Package$1;->run()Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Package;
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/lang/Package$1;->val$iname:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Package;->-get2()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    if-nez v4, :cond_0

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static/range {v16 .. v16}, Lsun/net/www/ParseUtil;->fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/Package;->-get2()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/Package;->-get0()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Package;->-wrap0(Ljava/lang/String;)Ljava/util/jar/Manifest;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Package;->-get0()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/Manifest;

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/Package;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/lang/Package;)V

    :goto_1
    invoke-static {}, Ljava/lang/Package;->-get1()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catch_0
    move-exception v15

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/Package;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v1

    move-object v6, v2

    invoke-direct/range {v5 .. v14}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    goto :goto_1
.end method
