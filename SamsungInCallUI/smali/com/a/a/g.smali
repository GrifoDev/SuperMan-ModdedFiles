.class public Lcom/a/a/g;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/a/a/g;

.field private static b:Z


# instance fields
.field private final c:Lcom/a/a/d/c/c;

.field private final d:Lcom/a/a/d/b/c;

.field private final e:Lcom/a/a/d/b/a/c;

.field private final f:Lcom/a/a/d/b/b/h;

.field private final g:Lcom/a/a/d/a;

.field private final h:Lcom/a/a/h/b/f;

.field private final i:Lcom/a/a/d/d/f/d;

.field private final j:Lcom/a/a/g/c;

.field private final k:Lcom/a/a/d/d/a/e;

.field private final l:Lcom/a/a/d/d/e/f;

.field private final m:Lcom/a/a/d/d/a/i;

.field private final n:Lcom/a/a/d/d/e/f;

.field private final o:Landroid/os/Handler;

.field private final p:Lcom/a/a/d/b/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/a/a/g;->b:Z

    return-void
.end method

.method constructor <init>(Lcom/a/a/d/b/c;Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/a/c;Landroid/content/Context;Lcom/a/a/d/a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/h/b/f;

    invoke-direct {v0}, Lcom/a/a/h/b/f;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->h:Lcom/a/a/h/b/f;

    new-instance v0, Lcom/a/a/d/d/f/d;

    invoke-direct {v0}, Lcom/a/a/d/d/f/d;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->i:Lcom/a/a/d/d/f/d;

    iput-object p1, p0, Lcom/a/a/g;->d:Lcom/a/a/d/b/c;

    iput-object p3, p0, Lcom/a/a/g;->e:Lcom/a/a/d/b/a/c;

    iput-object p2, p0, Lcom/a/a/g;->f:Lcom/a/a/d/b/b/h;

    iput-object p5, p0, Lcom/a/a/g;->g:Lcom/a/a/d/a;

    new-instance v0, Lcom/a/a/d/c/c;

    invoke-direct {v0, p4}, Lcom/a/a/d/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a/g;->c:Lcom/a/a/d/c/c;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/a/a/g;->o:Landroid/os/Handler;

    new-instance v0, Lcom/a/a/d/b/d/a;

    invoke-direct {v0, p2, p3, p5}, Lcom/a/a/d/b/d/a;-><init>(Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V

    iput-object v0, p0, Lcom/a/a/g;->p:Lcom/a/a/d/b/d/a;

    new-instance v0, Lcom/a/a/g/c;

    invoke-direct {v0}, Lcom/a/a/g/c;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->j:Lcom/a/a/g/c;

    new-instance v0, Lcom/a/a/d/d/a/p;

    invoke-direct {v0, p3, p5}, Lcom/a/a/d/d/a/p;-><init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V

    iget-object v1, p0, Lcom/a/a/g;->j:Lcom/a/a/g/c;

    const-class v2, Ljava/io/InputStream;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/a/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/g/b;)V

    new-instance v1, Lcom/a/a/d/d/a/g;

    invoke-direct {v1, p3, p5}, Lcom/a/a/d/d/a/g;-><init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V

    iget-object v2, p0, Lcom/a/a/g;->j:Lcom/a/a/g/c;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v1}, Lcom/a/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/g/b;)V

    new-instance v2, Lcom/a/a/d/d/a/n;

    invoke-direct {v2, v0, v1}, Lcom/a/a/d/d/a/n;-><init>(Lcom/a/a/g/b;Lcom/a/a/g/b;)V

    iget-object v0, p0, Lcom/a/a/g;->j:Lcom/a/a/g/c;

    const-class v1, Lcom/a/a/d/c/g;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v2}, Lcom/a/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/g/b;)V

    new-instance v0, Lcom/a/a/d/d/d/c;

    invoke-direct {v0, p4, p3}, Lcom/a/a/d/d/d/c;-><init>(Landroid/content/Context;Lcom/a/a/d/b/a/c;)V

    iget-object v1, p0, Lcom/a/a/g;->j:Lcom/a/a/g/c;

    const-class v3, Ljava/io/InputStream;

    const-class v4, Lcom/a/a/d/d/d/b;

    invoke-virtual {v1, v3, v4, v0}, Lcom/a/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/g/b;)V

    iget-object v1, p0, Lcom/a/a/g;->j:Lcom/a/a/g/c;

    const-class v3, Lcom/a/a/d/c/g;

    const-class v4, Lcom/a/a/d/d/e/a;

    new-instance v5, Lcom/a/a/d/d/e/g;

    invoke-direct {v5, v2, v0, p3}, Lcom/a/a/d/d/e/g;-><init>(Lcom/a/a/g/b;Lcom/a/a/g/b;Lcom/a/a/d/b/a/c;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/a/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/g/b;)V

    iget-object v0, p0, Lcom/a/a/g;->j:Lcom/a/a/g/c;

    const-class v1, Ljava/io/InputStream;

    const-class v2, Ljava/io/File;

    new-instance v3, Lcom/a/a/d/d/c/d;

    invoke-direct {v3}, Lcom/a/a/d/d/c/d;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/g/b;)V

    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/a/a/d/c/a/a$a;

    invoke-direct {v2}, Lcom/a/a/d/c/a/a$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/a/a/d/c/b/c$a;

    invoke-direct {v2}, Lcom/a/a/d/c/b/c$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/a/a/d/c/a/c$a;

    invoke-direct {v2}, Lcom/a/a/d/c/a/c$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/a/a/d/c/b/e$a;

    invoke-direct {v2}, Lcom/a/a/d/c/b/e$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    const-class v0, Ljava/lang/Integer;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/a/a/d/c/a/c$a;

    invoke-direct {v2}, Lcom/a/a/d/c/a/c$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/a/a/d/c/b/e$a;

    invoke-direct {v2}, Lcom/a/a/d/c/b/e$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/a/a/d/c/a/d$a;

    invoke-direct {v2}, Lcom/a/a/d/c/a/d$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/a/a/d/c/b/f$a;

    invoke-direct {v2}, Lcom/a/a/d/c/b/f$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/a/a/d/c/a/e$a;

    invoke-direct {v2}, Lcom/a/a/d/c/a/e$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/a/a/d/c/b/g$a;

    invoke-direct {v2}, Lcom/a/a/d/c/b/g$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    const-class v0, Ljava/net/URL;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/a/a/d/c/b/h$a;

    invoke-direct {v2}, Lcom/a/a/d/c/b/h$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    const-class v0, Lcom/a/a/d/c/d;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/a/a/d/c/b/a$a;

    invoke-direct {v2}, Lcom/a/a/d/c/b/a$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    const-class v0, [B

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/a/a/d/c/b/b$a;

    invoke-direct {v2}, Lcom/a/a/d/c/b/b$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V

    iget-object v0, p0, Lcom/a/a/g;->i:Lcom/a/a/d/d/f/d;

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Lcom/a/a/d/d/a/j;

    new-instance v3, Lcom/a/a/d/d/f/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Lcom/a/a/d/d/f/b;-><init>(Landroid/content/res/Resources;Lcom/a/a/d/b/a/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/a/d/d/f/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/d/f/c;)V

    iget-object v0, p0, Lcom/a/a/g;->i:Lcom/a/a/d/d/f/d;

    const-class v1, Lcom/a/a/d/d/e/a;

    const-class v2, Lcom/a/a/d/d/b/b;

    new-instance v3, Lcom/a/a/d/d/f/a;

    new-instance v4, Lcom/a/a/d/d/f/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/a/a/d/d/f/b;-><init>(Landroid/content/res/Resources;Lcom/a/a/d/b/a/c;)V

    invoke-direct {v3, v4}, Lcom/a/a/d/d/f/a;-><init>(Lcom/a/a/d/d/f/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/a/d/d/f/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/d/f/c;)V

    new-instance v0, Lcom/a/a/d/d/a/e;

    invoke-direct {v0, p3}, Lcom/a/a/d/d/a/e;-><init>(Lcom/a/a/d/b/a/c;)V

    iput-object v0, p0, Lcom/a/a/g;->k:Lcom/a/a/d/d/a/e;

    new-instance v0, Lcom/a/a/d/d/e/f;

    iget-object v1, p0, Lcom/a/a/g;->k:Lcom/a/a/d/d/a/e;

    invoke-direct {v0, p3, v1}, Lcom/a/a/d/d/e/f;-><init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/g;)V

    iput-object v0, p0, Lcom/a/a/g;->l:Lcom/a/a/d/d/e/f;

    new-instance v0, Lcom/a/a/d/d/a/i;

    invoke-direct {v0, p3}, Lcom/a/a/d/d/a/i;-><init>(Lcom/a/a/d/b/a/c;)V

    iput-object v0, p0, Lcom/a/a/g;->m:Lcom/a/a/d/d/a/i;

    new-instance v0, Lcom/a/a/d/d/e/f;

    iget-object v1, p0, Lcom/a/a/g;->m:Lcom/a/a/d/d/a/i;

    invoke-direct {v0, p3, v1}, Lcom/a/a/d/d/e/f;-><init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/g;)V

    iput-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/d/d/e/f;

    return-void
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)Lcom/a/a/d/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/a/a/d/c/l",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/a/a/d/c/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/a/a/d/c/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/a/a/d/c/l",
            "<TT;TY;>;"
        }
    .end annotation

    if-nez p0, :cond_1

    const-string v0, "Glide"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Glide"

    const-string v1, "Unable to load null model, setting placeholder only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/a/a/g;->a(Landroid/content/Context;)Lcom/a/a/g;

    move-result-object v0

    invoke-direct {v0}, Lcom/a/a/g;->h()Lcom/a/a/d/c/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/a/a/d/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/d/c/l;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/a/a/g;
    .locals 6

    sget-object v0, Lcom/a/a/g;->a:Lcom/a/a/g;

    if-nez v0, :cond_2

    const-class v1, Lcom/a/a/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/a/a/g;->a:Lcom/a/a/g;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/a/a/h;

    invoke-direct {v3, v2}, Lcom/a/a/h;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/a/a/g;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/f/a;

    invoke-interface {v0, v2, v3}, Lcom/a/a/f/a;->a(Landroid/content/Context;Lcom/a/a/h;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/a/a/h;->a()Lcom/a/a/g;

    move-result-object v0

    sput-object v0, Lcom/a/a/g;->a:Lcom/a/a/g;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/f/a;

    sget-object v4, Lcom/a/a/g;->a:Lcom/a/a/g;

    invoke-interface {v0, v2, v4}, Lcom/a/a/f/a;->a(Landroid/content/Context;Lcom/a/a/g;)V

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    sget-object v0, Lcom/a/a/g;->a:Lcom/a/a/g;

    return-object v0
.end method

.method public static a(Lcom/a/a/h/b/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/b/j",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/a/a/j/h;->a()V

    invoke-interface {p0}, Lcom/a/a/h/b/j;->c()Lcom/a/a/h/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/a/a/h/b;->d()V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/a/a/h/b/j;->a(Lcom/a/a/h/b;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lcom/a/a/d/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/a/a/d/c/l",
            "<TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/a/a/d/c/l;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/a/a/j;
    .locals 1

    invoke-static {}, Lcom/a/a/e/k;->a()Lcom/a/a/e/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/e/k;->a(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/f/a;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/a/a/g;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/a/f/b;

    invoke-direct {v0, p0}, Lcom/a/a/f/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/a/a/f/b;->a()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private h()Lcom/a/a/d/c/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->c:Lcom/a/a/d/c/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/a/d/b/a/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->e:Lcom/a/a/d/b/a/c;

    return-object v0
.end method

.method a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/d/d/f/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/a/a/d/d/f/c",
            "<TZ;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g;->i:Lcom/a/a/d/d/f/d;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/d/d/f/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/d/d/f/c;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/a/a/h/b/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/a/a/h/b/j",
            "<TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g;->h:Lcom/a/a/h/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/h/b/f;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/a/a/h/b/j;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    invoke-static {}, Lcom/a/a/j/h;->a()V

    iget-object v0, p0, Lcom/a/a/g;->f:Lcom/a/a/d/b/b/h;

    invoke-interface {v0, p1}, Lcom/a/a/d/b/b/h;->a(I)V

    iget-object v0, p0, Lcom/a/a/g;->e:Lcom/a/a/d/b/a/c;

    invoke-interface {v0, p1}, Lcom/a/a/d/b/a/c;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/a/a/d/c/m",
            "<TT;TY;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g;->c:Lcom/a/a/d/c/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/d/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/m;)Lcom/a/a/d/c/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/a/a/d/c/m;->a()V

    :cond_0
    return-void
.end method

.method b()Lcom/a/a/d/b/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->d:Lcom/a/a/d/b/c;

    return-object v0
.end method

.method b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/g/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/a/a/g/b",
            "<TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g;->j:Lcom/a/a/g/c;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/g/b;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/a/a/d/d/a/e;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->k:Lcom/a/a/d/d/a/e;

    return-object v0
.end method

.method d()Lcom/a/a/d/d/a/i;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->m:Lcom/a/a/d/d/a/i;

    return-object v0
.end method

.method e()Lcom/a/a/d/d/e/f;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->l:Lcom/a/a/d/d/e/f;

    return-object v0
.end method

.method f()Lcom/a/a/d/d/e/f;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/d/d/e/f;

    return-object v0
.end method

.method public g()V
    .locals 1

    invoke-static {}, Lcom/a/a/j/h;->a()V

    iget-object v0, p0, Lcom/a/a/g;->f:Lcom/a/a/d/b/b/h;

    invoke-interface {v0}, Lcom/a/a/d/b/b/h;->a()V

    iget-object v0, p0, Lcom/a/a/g;->e:Lcom/a/a/d/b/a/c;

    invoke-interface {v0}, Lcom/a/a/d/b/a/c;->a()V

    return-void
.end method
