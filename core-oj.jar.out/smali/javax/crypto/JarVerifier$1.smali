.class Ljavax/crypto/JarVerifier$1;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/crypto/JarVerifier;->verify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/crypto/JarVerifier;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljavax/crypto/JarVerifier;Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Ljavax/crypto/JarVerifier$1;->this$0:Ljavax/crypto/JarVerifier;

    iput-object p2, p0, Ljavax/crypto/JarVerifier$1;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Ljavax/crypto/JarVerifier$1;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    return-object v1
.end method
