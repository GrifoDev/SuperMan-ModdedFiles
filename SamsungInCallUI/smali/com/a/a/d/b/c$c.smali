.class public Lcom/a/a/d/b/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/b/d;

.field private final b:Lcom/a/a/h/e;


# direct methods
.method public constructor <init>(Lcom/a/a/h/e;Lcom/a/a/d/b/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/b/c$c;->b:Lcom/a/a/h/e;

    iput-object p2, p0, Lcom/a/a/d/b/c$c;->a:Lcom/a/a/d/b/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/d/b/c$c;->a:Lcom/a/a/d/b/d;

    iget-object v1, p0, Lcom/a/a/d/b/c$c;->b:Lcom/a/a/h/e;

    invoke-virtual {v0, v1}, Lcom/a/a/d/b/d;->b(Lcom/a/a/h/e;)V

    return-void
.end method
