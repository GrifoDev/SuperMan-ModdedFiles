.class Lcom/a/a/d/b/b/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/a/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/j/e",
            "<",
            "Lcom/a/a/d/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/j/e;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/a/a/j/e;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/d/b/b/j;->a:Lcom/a/a/j/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/c;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/a/a/d/b/b/j;->a:Lcom/a/a/j/e;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/b/b/j;->a:Lcom/a/a/j/e;

    invoke-virtual {v0, p1}, Lcom/a/a/j/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/a/a/d/c;->a(Ljava/security/MessageDigest;)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/j/h;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/a/a/d/b/b/j;->a:Lcom/a/a/j/e;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/a/a/d/b/b/j;->a:Lcom/a/a/j/e;

    invoke-virtual {v2, p1, v0}, Lcom/a/a/j/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
