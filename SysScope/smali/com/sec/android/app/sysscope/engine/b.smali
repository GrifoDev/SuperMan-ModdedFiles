.class public abstract Lcom/sec/android/app/sysscope/engine/b;
.super Lcom/sec/android/app/sysscope/engine/a;


# instance fields
.field a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/engine/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "filescanning"

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/b;->a:Ljava/util/List;

    return-object v0
.end method
