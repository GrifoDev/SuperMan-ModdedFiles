.class Lcom/a/a/d/d/d/f$a;
.super Lcom/a/a/h/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/d/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/h/b/g",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:I

.field private final c:J

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/h/b/g;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/d/f$a;->a:Landroid/os/Handler;

    iput p2, p0, Lcom/a/a/d/d/d/f$a;->b:I

    iput-wide p3, p0, Lcom/a/a/d/d/d/f$a;->c:J

    return-void
.end method

.method static synthetic a(Lcom/a/a/d/d/d/f$a;)I
    .locals 1

    iget v0, p0, Lcom/a/a/d/d/d/f$a;->b:I

    return v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/d/f$a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/a/a/h/a/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/a/a/h/a/c",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/a/a/d/d/d/f$a;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/a/a/d/d/d/f$a;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/d/d/f$a;->a:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/a/a/d/d/d/f$a;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/a/a/h/a/c;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/d/d/d/f$a;->a(Landroid/graphics/Bitmap;Lcom/a/a/h/a/c;)V

    return-void
.end method
