.class Lcom/a/a/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/j;-><init>(Landroid/content/Context;Lcom/a/a/e/g;Lcom/a/a/e/l;Lcom/a/a/e/m;Lcom/a/a/e/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/e/g;

.field final synthetic b:Lcom/a/a/j;


# direct methods
.method constructor <init>(Lcom/a/a/j;Lcom/a/a/e/g;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iput-object p2, p0, Lcom/a/a/j$1;->a:Lcom/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/j$1;->a:Lcom/a/a/e/g;

    iget-object v1, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    invoke-interface {v0, v1}, Lcom/a/a/e/g;->a(Lcom/a/a/e/h;)V

    return-void
.end method
