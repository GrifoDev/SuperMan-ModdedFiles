.class Lcom/a/a/d/b/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/d/b/d$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/d/b/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/d/b/d;

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lcom/a/a/d/b/d;->a(Lcom/a/a/d/b/d;)V

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-static {v0}, Lcom/a/a/d/b/d;->b(Lcom/a/a/d/b/d;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
