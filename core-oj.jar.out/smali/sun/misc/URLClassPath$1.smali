.class Lsun/misc/URLClassPath$1;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
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
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lsun/misc/URLClassPath;

.field private url:Ljava/net/URL;

.field final synthetic val$check:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lsun/misc/URLClassPath;
    .param p2, "val$name"    # Ljava/lang/String;
    .param p3, "val$check"    # Z

    .prologue
    .line 217
    iput-object p1, p0, Lsun/misc/URLClassPath$1;->this$0:Lsun/misc/URLClassPath;

    iput-object p2, p0, Lsun/misc/URLClassPath$1;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lsun/misc/URLClassPath$1;->val$check:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/URLClassPath$1;->index:I

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 217
    return-void
.end method

.method private next()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 222
    iget-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 223
    return v4

    .line 226
    :cond_0
    iget-object v1, p0, Lsun/misc/URLClassPath$1;->this$0:Lsun/misc/URLClassPath;

    iget v2, p0, Lsun/misc/URLClassPath$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/misc/URLClassPath$1;->index:I

    invoke-static {v1, v2}, Lsun/misc/URLClassPath;->-wrap0(Lsun/misc/URLClassPath;I)Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    .local v0, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v0, :cond_1

    .line 227
    iget-object v1, p0, Lsun/misc/URLClassPath$1;->val$name:Ljava/lang/String;

    iget-boolean v2, p0, Lsun/misc/URLClassPath$1;->val$check:Z

    invoke-virtual {v0, v1, v2}, Lsun/misc/URLClassPath$Loader;->findResource(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 228
    iget-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 229
    return v4

    .line 232
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Lsun/misc/URLClassPath$1;->next()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lsun/misc/URLClassPath$1;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .locals 2

    .prologue
    .line 241
    invoke-direct {p0}, Lsun/misc/URLClassPath$1;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 244
    :cond_0
    iget-object v0, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 245
    .local v0, "u":Ljava/net/URL;
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 246
    return-object v0
.end method
