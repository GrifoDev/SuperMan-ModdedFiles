.class final Lsun/security/ssl/TrustManagerFactoryImpl$1;
.super Ljava/lang/Object;
.source "TrustManagerFactoryImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/TrustManagerFactoryImpl;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/io/FileInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "val$file"    # Ljava/io/File;

    .prologue
    .line 111
    iput-object p1, p0, Lsun/security/ssl/TrustManagerFactoryImpl$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/FileInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 114
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/TrustManagerFactoryImpl$1;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lsun/security/ssl/TrustManagerFactoryImpl$1;->val$file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 117
    :cond_0
    return-object v3

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-object v3
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lsun/security/ssl/TrustManagerFactoryImpl$1;->run()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method
