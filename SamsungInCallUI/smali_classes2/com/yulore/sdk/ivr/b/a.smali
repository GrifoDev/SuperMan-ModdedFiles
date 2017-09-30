.class public Lcom/yulore/sdk/ivr/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yulore/sdk/ivr/c;


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final b:Lcom/yulore/a/a/c/a;

.field private final c:Lcom/yulore/sdk/ivr/d/a;

.field private final d:Ljava/lang/Object;

.field private e:Landroid/content/Context;

.field private f:Ljava/io/File;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Lcom/yulore/sdk/ivr/model/LayerMenu;

.field private l:Lcom/yulore/sdk/ivr/model/b;

.field private m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/yulore/sdk/ivr/model/INode;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Lcom/yulore/a/a/c/a;

    invoke-direct {v0}, Lcom/yulore/a/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->b:Lcom/yulore/a/a/c/a;

    new-instance v0, Lcom/yulore/sdk/ivr/d/a;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/d/a;-><init>()V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->c:Lcom/yulore/sdk/ivr/d/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    if-nez p1, :cond_0

    const-string v0, "YuloreIVR"

    const-string v1, " the context is null "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yulore/ivr"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->f:Ljava/io/File;

    const-string v0, "YuloreIVR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " offline packet directory is null, so set up default directory = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", please review your code! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->f:Ljava/io/File;

    :cond_3
    iput p3, p0, Lcom/yulore/sdk/ivr/b/a;->j:I

    iput-object p2, p0, Lcom/yulore/sdk/ivr/b/a;->n:Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->e:Landroid/content/Context;

    iput-object p4, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/yulore/sdk/ivr/b/a;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    const-string v0, "YuloreIVR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "telNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",moArea="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mtArea="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yulore/sdk/ivr/b/a;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v0, "YuloreIVR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " read local ivr data of the number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->f:Ljava/io/File;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/yulore/sdk/ivr/e/d;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "YuloreIVR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " not found local ivr file about number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->b:Lcom/yulore/a/a/c/a;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/yulore/sdk/ivr/b/a;->f:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/yulore/a/a/c/a;->a(Ljava/io/File;)[B

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "YuloreIVR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " the ivr data of number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is empty "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/yulore/a/a/e/b;->a([B)[B

    move-result-object v2

    array-length v0, v2

    add-int/lit8 v0, v0, -0x10

    new-array v3, v0, [B

    const/16 v0, 0xa

    :goto_1
    array-length v4, v2

    add-int/lit8 v4, v4, -0x6

    if-ge v0, v4, :cond_3

    add-int/lit8 v4, v0, -0xa

    aget-byte v5, v2, v0

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/yulore/sdk/ivr/e/e;->a([B)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "YuloreIVR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " the json string of ivr data about number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private c()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const-string v0, "YuloreIVR"

    const-string v1, " format number as local standard type "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/yulore/sdk/ivr/e/a;->g:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/yulore/sdk/ivr/b/a;->d()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yulore/sdk/ivr/e/a;->g:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    const-string v1, "086"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    const-string v1, " 86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_3

    sget-object v0, Lcom/yulore/sdk/ivr/e/a;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/yulore/sdk/ivr/e/a;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_8

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    const-string v1, "96"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/yulore/sdk/ivr/e/a;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    :cond_4
    :goto_2
    const-string v0, "YuloreIVR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "areaCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_telNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/yulore/sdk/ivr/e/a;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_3

    sget-object v0, Lcom/yulore/sdk/ivr/e/a;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/yulore/sdk/ivr/e/a;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    const-string v1, "95"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yulore/sdk/ivr/b/a;->n:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/conf/specialtel.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/yulore/sdk/ivr/d/c;

    invoke-direct {v4}, Lcom/yulore/sdk/ivr/d/c;-><init>()V

    invoke-virtual {v4, v0}, Lcom/yulore/sdk/ivr/d/c;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    move-object v0, v1

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yulore/sdk/ivr/model/INode;)Lcom/yulore/sdk/ivr/model/LayerMenu;
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yulore/sdk/ivr/b/a;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->l:Lcom/yulore/sdk/ivr/model/b;

    if-eqz v1, :cond_a

    const-string v1, "YuloreIVR"

    const-string v4, " local menu data cache is exist "

    invoke-static {v1, v4}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v1, "YuloreIVR"

    const-string v2, " parameter <selectedNode> in method getIvrMenu(...) is null "

    invoke-static {v1, v2}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    new-instance v1, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v1}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    iput-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->l:Lcom/yulore/sdk/ivr/model/b;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->l:Lcom/yulore/sdk/ivr/model/b;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/b;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;->b(Ljava/util/List;)V

    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    :goto_1
    return-object v1

    :cond_1
    :try_start_1
    const-string v1, "YuloreIVR"

    const-string v4, " selected normal menu "

    invoke-static {v1, v4}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p1, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eqz v1, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    move-object v1, v0

    sget-object v4, Lcom/yulore/sdk/ivr/b/a$1;->a:[I

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->f()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yulore/sdk/ivr/ItemNodeType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "YuloreIVR"

    const-string v4, " selected leaf node "

    invoke-static {v2, v4}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eq v2, v1, :cond_0

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/ItemNode;->f()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v2

    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->a:Lcom/yulore/sdk/ivr/ItemNodeType;

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "YuloreIVR"

    const-string v4, " selected normal menu , and query sub menu "

    invoke-static {v1, v4}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/LayerMenu;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/INode;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->e()Ljava/util/List;

    move-result-object v2

    :cond_5
    new-instance v1, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v1}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    iput-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;->b(Ljava/util/List;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->f()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v1

    sget-object v2, Lcom/yulore/sdk/ivr/ItemNodeType;->a:Lcom/yulore/sdk/ivr/ItemNodeType;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "YuloreIVR"

    const-string v2, " repeat, so return the same menu "

    invoke-static {v1, v2}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "YuloreIVR"

    const-string v4, " go back parent menu "

    invoke-static {v2, v4}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->d()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->d()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/ItemNode;->d()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    iput-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->d()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->d()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yulore/sdk/ivr/model/LayerMenu;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v1}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    iput-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->l:Lcom/yulore/sdk/ivr/model/b;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->l:Lcom/yulore/sdk/ivr/model/b;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/b;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "YuloreIVR"

    const-string v2, " top menu "

    invoke-static {v1, v2}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "YuloreIVR"

    const-string v2, " go back main menu "

    invoke-static {v1, v2}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    new-instance v1, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v1}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    iput-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->l:Lcom/yulore/sdk/ivr/model/b;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->l:Lcom/yulore/sdk/ivr/model/b;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/b;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "YuloreIVR"

    const-string v4, " selected shortcut menu "

    invoke-static {v1, v4}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v3

    move-object v1, v2

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    iget v5, p0, Lcom/yulore/sdk/ivr/b/a;->j:I

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/yulore/sdk/ivr/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "YuloreIVR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " read local ivrMenu data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->c:Lcom/yulore/sdk/ivr/d/a;

    invoke-virtual {v2, v1}, Lcom/yulore/sdk/ivr/d/a;->a(Ljava/lang/String;)Lcom/yulore/sdk/ivr/model/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/a;->a()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/yulore/sdk/ivr/e/a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/a;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulore/sdk/ivr/model/b;

    iput-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->l:Lcom/yulore/sdk/ivr/model/b;

    new-instance v1, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v1}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    iput-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->l:Lcom/yulore/sdk/ivr/model/b;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->k:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->l:Lcom/yulore/sdk/ivr/model/b;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/b;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/model/LayerMenu;->b(Ljava/util/List;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    const-string v1, "YuloreIVR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " already call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->l:Lcom/yulore/sdk/ivr/model/b;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/b;->a()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v0}, Lcom/yulore/sdk/ivr/e/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/model/ShortcutNode;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/model/INode;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->c()I

    move-result v0

    invoke-static {v0}, Lcom/yulore/sdk/ivr/e/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->e:Landroid/content/Context;

    const-class v2, Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/b/a;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public a(Lcom/yulore/sdk/ivr/c/a;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "YuloreIVR"

    const-string v2, " exists callback is onFailure "

    invoke-static {v1, v2}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/yulore/sdk/ivr/c/a;->onFailure()V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/yulore/sdk/ivr/b/a;->f:Ljava/io/File;

    iget-object v3, p0, Lcom/yulore/sdk/ivr/b/a;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/yulore/sdk/ivr/b/a;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/yulore/sdk/ivr/b/a;->i:Ljava/lang/String;

    iget v6, p0, Lcom/yulore/sdk/ivr/b/a;->j:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/yulore/sdk/ivr/e/d;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "YuloreIVR"

    const-string v2, " exists callback is onSuccess "

    invoke-static {v0, v2}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/yulore/sdk/ivr/c/a;->onSuccess()V

    move v0, v1

    goto :goto_0

    :cond_1
    sget v2, Lcom/yulore/sdk/ivr/e/a;->k:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const-string v1, "YuloreIVR"

    const-string v2, " exists callback is onFailure "

    invoke-static {v1, v2}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/yulore/sdk/ivr/c/a;->onFailure()V

    goto :goto_0

    :pswitch_2
    const-string v0, "YuloreIVR"

    const-string v2, " exists callback is onMismatching() "

    invoke-static {v0, v2}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/yulore/sdk/ivr/c/b;->DIFFENT:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/c/a;->onMismatching(I)V

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/c/a;->onMismatching(I)V

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/c/a;->onMismatching(I)V

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/c/a;->onMismatching(I)V

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/c/a;->onMismatching(I)V

    goto :goto_1

    :pswitch_8
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/c/a;->onMismatching(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/yulore/sdk/ivr/c/b;->DIFFENT:I

    sput v0, Lcom/yulore/sdk/ivr/e/a;->k:I

    return-void
.end method
