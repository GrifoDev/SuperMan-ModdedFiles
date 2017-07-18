.class Ljava/util/jar/JarVerifier$2;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarVerifier;->entryNames(Ljava/util/jar/JarFile;[Ljava/security/CodeSource;)Ljava/util/Enumeration;
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

.field final synthetic val$enum2:Ljava/util/Enumeration;

.field final synthetic val$itor:Ljava/util/Iterator;

.field final synthetic val$signersReq:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/jar/JarVerifier;Ljava/util/Iterator;Ljava/util/List;Ljava/util/Enumeration;)V
    .locals 0

    iput-object p1, p0, Ljava/util/jar/JarVerifier$2;->this$0:Ljava/util/jar/JarVerifier;

    iput-object p2, p0, Ljava/util/jar/JarVerifier$2;->val$itor:Ljava/util/Iterator;

    iput-object p3, p0, Ljava/util/jar/JarVerifier$2;->val$signersReq:Ljava/util/List;

    iput-object p4, p0, Ljava/util/jar/JarVerifier$2;->val$enum2:Ljava/util/Enumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Ljava/util/jar/JarVerifier$2;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarVerifier$2;->val$itor:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/util/jar/JarVerifier$2;->val$itor:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Ljava/util/jar/JarVerifier$2;->val$signersReq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/CodeSigner;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/jar/JarVerifier$2;->name:Ljava/lang/String;

    return v3

    :cond_1
    iget-object v1, p0, Ljava/util/jar/JarVerifier$2;->val$enum2:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/util/jar/JarVerifier$2;->val$enum2:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/jar/JarVerifier$2;->name:Ljava/lang/String;

    return v3

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$2;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$2;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/jar/JarVerifier$2;->name:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/JarVerifier$2;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
