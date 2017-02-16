.class Ljava/util/jar/JarFile$2;
.super Ljava/lang/Object;
.source "JarFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarFile;->unsignedEntryNames()Ljava/util/Enumeration;
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

.field final synthetic this$0:Ljava/util/jar/JarFile;

.field final synthetic val$entries:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/jar/JarFile;
    .param p2, "val$entries"    # Ljava/util/Enumeration;

    .prologue
    .line 580
    iput-object p1, p0, Ljava/util/jar/JarFile$2;->this$0:Ljava/util/jar/JarFile;

    iput-object p2, p0, Ljava/util/jar/JarFile$2;->val$entries:Ljava/util/Enumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 589
    iget-object v2, p0, Ljava/util/jar/JarFile$2;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 590
    return v3

    .line 592
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarFile$2;->val$entries:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    iget-object v2, p0, Ljava/util/jar/JarFile$2;->val$entries:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 595
    .local v0, "e":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/util/jar/JarVerifier;->isSigningRelated(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 599
    iput-object v1, p0, Ljava/util/jar/JarFile$2;->name:Ljava/lang/String;

    .line 600
    return v3

    .line 602
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p0}, Ljava/util/jar/JarFile$2;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 606
    invoke-virtual {p0}, Ljava/util/jar/JarFile$2;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    iget-object v0, p0, Ljava/util/jar/JarFile$2;->name:Ljava/lang/String;

    .line 608
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/JarFile$2;->name:Ljava/lang/String;

    .line 609
    return-object v0

    .line 611
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
