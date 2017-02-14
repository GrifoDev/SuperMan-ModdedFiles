.class Ljava/util/jar/JarVerifier$3;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarVerifier;->entries2(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)Ljava/util/Enumeration;
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
        "Ljava/util/jar/JarEntry;",
        ">;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/jar/JarEntry;

.field signers:Ljava/util/Enumeration;

.field final synthetic this$0:Ljava/util/jar/JarVerifier;

.field final synthetic val$enum_:Ljava/util/Enumeration;

.field final synthetic val$jar:Ljava/util/jar/JarFile;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/jar/JarFile;Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, Ljava/util/jar/JarVerifier$3;->this$0:Ljava/util/jar/JarVerifier;

    iput-object p2, p0, Ljava/util/jar/JarVerifier$3;->val$enum_:Ljava/util/Enumeration;

    iput-object p3, p0, Ljava/util/jar/JarVerifier$3;->val$jar:Ljava/util/jar/JarFile;

    iput-object p4, p0, Ljava/util/jar/JarVerifier$3;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    if-eqz v2, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$enum_:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$enum_:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/jar/JarVerifier;->isSigningRelated(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$jar:Ljava/util/jar/JarFile;

    invoke-virtual {v2, v1}, Ljava/util/jar/JarFile;->newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    return v4

    :cond_1
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    :cond_2
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$jar:Ljava/util/jar/JarFile;

    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    return v4

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$3;->nextElement()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/util/jar/JarEntry;
    .locals 3

    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$3;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    iget-object v1, p0, Ljava/util/jar/JarVerifier$3;->val$map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
