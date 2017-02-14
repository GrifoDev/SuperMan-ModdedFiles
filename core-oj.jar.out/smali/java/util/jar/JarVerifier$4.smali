.class Ljava/util/jar/JarVerifier$4;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Ljava/util/jar/JarVerifier;

.field final synthetic val$entries:Ljava/util/Enumeration;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Ljava/util/jar/JarVerifier$4;->this$0:Ljava/util/jar/JarVerifier;

    iput-object p2, p0, Ljava/util/jar/JarVerifier$4;->val$entries:Ljava/util/Enumeration;

    iput-object p3, p0, Ljava/util/jar/JarVerifier$4;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarVerifier$4;->val$entries:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/jar/JarVerifier$4;->val$entries:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/util/jar/JarVerifier;->isSigningRelated(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/util/jar/JarVerifier$4;->val$map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iput-object v1, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    return v3

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$4;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$4;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
