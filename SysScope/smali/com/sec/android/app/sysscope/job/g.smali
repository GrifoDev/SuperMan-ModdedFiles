.class public Lcom/sec/android/app/sysscope/job/g;
.super Lcom/sec/android/app/sysscope/engine/b;


# instance fields
.field public b:Lcom/sec/android/app/sysscope/job/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/b;-><init>()V

    new-instance v0, Lcom/sec/android/app/sysscope/job/a/b;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sysscope/job/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/g;->b:Lcom/sec/android/app/sysscope/job/a/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/g;
    .locals 2

    const-string v0, "filepath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/g;->b:Lcom/sec/android/app/sysscope/job/a/b;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sysscope/job/a/b;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/job/g;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->e:Lcom/sec/android/app/sysscope/service/g;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public d()V
    .locals 1

    const-string v0, "/system/bin/"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/job/g;->b(Ljava/lang/String;)V

    const-string v0, "/system/xbin/"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/job/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/g;->b:Lcom/sec/android/app/sysscope/job/a/b;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/job/a/b;->a()V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "Dangerous executable file scanner"

    return-object v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
