.class public final Lcom/yulore/a/a/c/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Lcom/yulore/a/a/c/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    invoke-static {v1}, Lcom/yulore/a/a/c/b;->a(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/yulore/a/a/c/b;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-static {v2}, Lcom/yulore/a/a/c/b;->a(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/yulore/a/a/c/b;->a(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_1
.end method
