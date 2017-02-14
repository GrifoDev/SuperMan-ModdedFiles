.class Ljava/util/ResourceBundle$Control$1;
.super Ljava/lang/Object;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
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
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/ResourceBundle$Control;

.field final synthetic val$classLoader:Ljava/lang/ClassLoader;

.field final synthetic val$reloadFlag:Z

.field final synthetic val$resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ResourceBundle$Control;ZLjava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/util/ResourceBundle$Control$1;->this$1:Ljava/util/ResourceBundle$Control;

    iput-boolean p2, p0, Ljava/util/ResourceBundle$Control$1;->val$reloadFlag:Z

    iput-object p3, p0, Ljava/util/ResourceBundle$Control$1;->val$classLoader:Ljava/lang/ClassLoader;

    iput-object p4, p0, Ljava/util/ResourceBundle$Control$1;->val$resourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v3, p0, Ljava/util/ResourceBundle$Control$1;->val$reloadFlag:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/util/ResourceBundle$Control$1;->val$classLoader:Ljava/lang/ClassLoader;

    iget-object v4, p0, Ljava/util/ResourceBundle$Control$1;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v3, p0, Ljava/util/ResourceBundle$Control$1;->val$classLoader:Ljava/lang/ClassLoader;

    iget-object v4, p0, Ljava/util/ResourceBundle$Control$1;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ResourceBundle$Control$1;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
