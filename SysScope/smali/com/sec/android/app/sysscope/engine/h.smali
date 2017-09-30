.class public abstract Lcom/sec/android/app/sysscope/engine/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field protected b:Lcom/sec/android/app/sysscope/engine/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sec/android/app/sysscope/engine/d;)Lcom/sec/android/app/sysscope/engine/h;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sysscope/engine/h;->b:Lcom/sec/android/app/sysscope/engine/d;

    return-object p0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "name"

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/engine/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/h;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/d;->g()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/h;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/h;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
