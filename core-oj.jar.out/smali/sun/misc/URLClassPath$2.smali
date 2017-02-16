.class Lsun/misc/URLClassPath$2;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath;->getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
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
        "Lsun/misc/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private res:Lsun/misc/Resource;

.field final synthetic this$0:Lsun/misc/URLClassPath;

.field final synthetic val$check:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lsun/misc/URLClassPath;
    .param p2, "val$name"    # Ljava/lang/String;
    .param p3, "val$check"    # Z

    .prologue
    .line 264
    iput-object p1, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    iput-object p2, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lsun/misc/URLClassPath$2;->val$check:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/URLClassPath$2;->index:I

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 264
    return-void
.end method

.method private next()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 269
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    if-eqz v1, :cond_0

    .line 270
    return v4

    .line 273
    :cond_0
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    iget v2, p0, Lsun/misc/URLClassPath$2;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/misc/URLClassPath$2;->index:I

    invoke-static {v1, v2}, Lsun/misc/URLClassPath;->-wrap0(Lsun/misc/URLClassPath;I)Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    .local v0, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v0, :cond_1

    .line 274
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    iget-boolean v2, p0, Lsun/misc/URLClassPath$2;->val$check:Z

    invoke-virtual {v0, v1, v2}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 275
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    if-eqz v1, :cond_0

    .line 276
    return v4

    .line 279
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lsun/misc/URLClassPath$2;->next()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lsun/misc/URLClassPath$2;->nextElement()Lsun/misc/Resource;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lsun/misc/Resource;
    .locals 2

    .prologue
    .line 288
    invoke-direct {p0}, Lsun/misc/URLClassPath$2;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 291
    :cond_0
    iget-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 292
    .local v0, "r":Lsun/misc/Resource;
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 293
    return-object v0
.end method
