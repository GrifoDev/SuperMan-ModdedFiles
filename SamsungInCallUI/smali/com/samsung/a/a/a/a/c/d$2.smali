.class Lcom/samsung/a/a/a/a/c/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/a/a/a/a/c/d;->a(Lcom/samsung/a/a/a/a/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/a/a/a/a/c/b;

.field final synthetic b:Lcom/samsung/a/a/a/a/c/d;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/c/d;Lcom/samsung/a/a/a/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/c/d$2;->b:Lcom/samsung/a/a/a/a/c/d;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/c/d$2;->a:Lcom/samsung/a/a/a/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/c/d$2;->a:Lcom/samsung/a/a/a/a/c/b;

    invoke-interface {v0}, Lcom/samsung/a/a/a/a/c/b;->a()V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/c/d$2;->a:Lcom/samsung/a/a/a/a/c/b;

    invoke-interface {v0}, Lcom/samsung/a/a/a/a/c/b;->b()I

    return-void
.end method
