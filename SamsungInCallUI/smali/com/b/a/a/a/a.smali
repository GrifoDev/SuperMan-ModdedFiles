.class public Lcom/b/a/a/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a/a$3;,
        Lcom/b/a/a/a/a$c;,
        Lcom/b/a/a/a/a$a;,
        Lcom/b/a/a/a/a$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/b/a/a/a/a;

.field private static final h:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/a/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/b/a/a/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/b/a/a/a/a$b;",
            "Lcom/gsma/services/rcs/RcsService;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;

.field private final f:Lcom/gsma/services/rcs/d;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/a/a/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/b/a/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Set;Lcom/gsma/services/rcs/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/a/a/a$b;",
            ">;",
            "Lcom/gsma/services/rcs/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/a;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/b/a/a/a/a;->g:Ljava/util/Set;

    iput-object p3, p0, Lcom/b/a/a/a/a;->f:Lcom/gsma/services/rcs/d;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a/a;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a/a;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Incorrect parameter managedService!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/a/a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a/a$b;

    sget-object v2, Lcom/b/a/a/a/a$3;->a:[I

    invoke-virtual {v0}, Lcom/b/a/a/a/a$b;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    sget-object v2, Lcom/b/a/a/a/a$b;->a:Lcom/b/a/a/a/a$b;

    new-instance v3, Lcom/gsma/services/rcs/capability/b;

    sget-object v4, Lcom/b/a/a/a/a$b;->a:Lcom/b/a/a/a/a$b;

    invoke-direct {p0, v4}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/gsma/services/rcs/capability/b;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    sget-object v2, Lcom/b/a/a/a/a$b;->c:Lcom/b/a/a/a/a$b;

    new-instance v3, Lcom/gsma/services/rcs/chat/a;

    sget-object v4, Lcom/b/a/a/a/a$b;->c:Lcom/b/a/a/a/a$b;

    invoke-direct {p0, v4}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/gsma/services/rcs/chat/a;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    sget-object v2, Lcom/b/a/a/a/a$b;->b:Lcom/b/a/a/a/a$b;

    new-instance v3, Lcom/gsma/services/rcs/contact/a;

    sget-object v4, Lcom/b/a/a/a/a$b;->b:Lcom/b/a/a/a/a$b;

    invoke-direct {p0, v4}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/gsma/services/rcs/contact/a;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    sget-object v2, Lcom/b/a/a/a/a$b;->d:Lcom/b/a/a/a/a$b;

    new-instance v3, Lcom/gsma/services/rcs/filetransfer/a;

    sget-object v4, Lcom/b/a/a/a/a$b;->d:Lcom/b/a/a/a/a$b;

    invoke-direct {p0, v4}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/gsma/services/rcs/filetransfer/a;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    sget-object v2, Lcom/b/a/a/a/a$b;->h:Lcom/b/a/a/a/a$b;

    new-instance v3, Lcom/gsma/services/rcs/upload/a;

    sget-object v4, Lcom/b/a/a/a/a$b;->h:Lcom/b/a/a/a/a$b;

    invoke-direct {p0, v4}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/gsma/services/rcs/upload/a;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    sget-object v2, Lcom/b/a/a/a/a$b;->g:Lcom/b/a/a/a/a$b;

    new-instance v3, Lcom/gsma/services/rcs/sharing/geoloc/a;

    sget-object v4, Lcom/b/a/a/a/a$b;->g:Lcom/b/a/a/a/a$b;

    invoke-direct {p0, v4}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/gsma/services/rcs/sharing/geoloc/a;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    sget-object v2, Lcom/b/a/a/a/a$b;->j:Lcom/b/a/a/a/a$b;

    new-instance v3, Lcom/gsma/services/rcs/a/a;

    sget-object v4, Lcom/b/a/a/a/a$b;->j:Lcom/b/a/a/a/a$b;

    invoke-direct {p0, v4}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/gsma/services/rcs/a/a;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    sget-object v2, Lcom/b/a/a/a/a$b;->e:Lcom/b/a/a/a/a$b;

    new-instance v3, Lcom/gsma/services/rcs/sharing/image/d;

    sget-object v4, Lcom/b/a/a/a/a$b;->e:Lcom/b/a/a/a/a$b;

    invoke-direct {p0, v4}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/gsma/services/rcs/sharing/image/d;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    sget-object v2, Lcom/b/a/a/a/a$b;->i:Lcom/b/a/a/a/a$b;

    new-instance v3, Lcom/gsma/services/rcs/extension/g;

    sget-object v4, Lcom/b/a/a/a/a$b;->i:Lcom/b/a/a/a/a$b;

    invoke-direct {p0, v4}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/gsma/services/rcs/extension/g;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    sget-object v2, Lcom/b/a/a/a/a$b;->f:Lcom/b/a/a/a/a$b;

    new-instance v3, Lcom/gsma/services/rcs/sharing/video/e;

    sget-object v4, Lcom/b/a/a/a/a$b;->f:Lcom/b/a/a/a/a$b;

    invoke-direct {p0, v4}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/gsma/services/rcs/sharing/video/e;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a()Lcom/b/a/a/a/a;
    .locals 1

    sget-object v0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/gsma/services/rcs/d;Ljava/util/Set;)Lcom/b/a/a/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/gsma/services/rcs/d;",
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/a/a/a$b;",
            ">;)",
            "Lcom/b/a/a/a/a;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/a;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/b/a/a/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/a;

    if-nez v0, :cond_2

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/b/a/a/a/a;

    invoke-direct {v0, p0, p2, p1}, Lcom/b/a/a/a/a;-><init>(Landroid/content/Context;Ljava/util/Set;Lcom/gsma/services/rcs/d;)V

    sput-object v0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/a;

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/a;

    goto :goto_0
.end method

.method private a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;
    .locals 1

    new-instance v0, Lcom/b/a/a/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/b/a/a/a/a$1;-><init>(Lcom/b/a/a/a/a;Lcom/b/a/a/a/a$b;)V

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/a/a/a;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/a;->b:Ljava/util/Set;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/b/a/a/a/a/a;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/b/a/a/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    sget-object v0, Lcom/b/a/a/a/a;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exit activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Information"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Ok"

    new-instance v2, Lcom/b/a/a/a/a$2;

    invoke-direct {v2, p0, p1}, Lcom/b/a/a/a/a$2;-><init>(Lcom/b/a/a/a/a;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private a(Lcom/b/a/a/a/a$b;Lcom/gsma/services/rcs/f$a;)V
    .locals 3

    sget-object v0, Lcom/b/a/a/a/a;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/b/a/a/a/a$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b/a/a/a/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a/a$a;

    invoke-virtual {v0}, Lcom/b/a/a/a/a$a;->b()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/b/a/a/a/a$a;->a(Lcom/gsma/services/rcs/f$a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/b/a/a/a/a;Landroid/app/Activity;Ljava/lang/String;Lcom/b/a/a/a/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/a/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/a/a;Lcom/b/a/a/a/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/a/a;->b(Lcom/b/a/a/a/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/a/a;Lcom/b/a/a/a/a$b;Lcom/gsma/services/rcs/f$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;Lcom/gsma/services/rcs/f$a;)V

    return-void
.end method

.method private b(Lcom/b/a/a/a/a$b;)V
    .locals 3

    sget-object v0, Lcom/b/a/a/a/a;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/b/a/a/a/a$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b/a/a/a/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a/a$a;

    invoke-virtual {v0}, Lcom/b/a/a/a/a$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/b/a/a/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/a/a/a;->f()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/b/a/a/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/a/a;->f:Lcom/gsma/services/rcs/d;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/d;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/b/a/a/a/a;->h:Ljava/lang/String;

    const-string v2, "Failed to get RCS service starting state!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 5

    invoke-direct {p0}, Lcom/b/a/a/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a/a$b;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/b/a/a/a/a$b;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/b/a/a/a/a;->a([Lcom/b/a/a/a/a$b;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/b/a/a/a/a;->h:Ljava/lang/String;

    const-string v3, "Connect service "

    invoke-virtual {v0}, Lcom/b/a/a/a/a$b;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/RcsService;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/RcsService;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/b/a/a/a/a;->h:Ljava/lang/String;

    const-string v4, "Cannot connect service "

    invoke-virtual {v0}, Lcom/b/a/a/a/a$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public varargs a([Lcom/b/a/a/a/a$b;)Z
    .locals 5

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/b/a/a/a/a;->g:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to set of managed services!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v4, p0, Lcom/b/a/a/a/a;->b:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/b/a/a/a/a;->e:Landroid/content/Context;

    new-instance v1, Lcom/b/a/a/a/a$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/b/a/a/a/a$c;-><init>(Lcom/b/a/a/a/a;Lcom/b/a/a/a/a$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.gsma.services.rcs.action.SERVICE_UP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/b/a/a/a/a;->f()V

    return-void
.end method

.method public c()Lcom/gsma/services/rcs/capability/b;
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/a/a;->d:Ljava/util/Map;

    sget-object v1, Lcom/b/a/a/a/a$b;->a:Lcom/b/a/a/a/a$b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/capability/b;

    return-object v0
.end method
