.class Landroid/support/v4/app/r$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/r;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/r;


# direct methods
.method constructor <init>(Landroid/support/v4/app/r;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/r$2;->c:Landroid/support/v4/app/r;

    iput p2, p0, Landroid/support/v4/app/r$2;->a:I

    iput p3, p0, Landroid/support/v4/app/r$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/app/r$2;->c:Landroid/support/v4/app/r;

    iget-object v1, p0, Landroid/support/v4/app/r$2;->c:Landroid/support/v4/app/r;

    iget-object v1, v1, Landroid/support/v4/app/r;->o:Landroid/support/v4/app/p;

    invoke-virtual {v1}, Landroid/support/v4/app/p;->h()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/app/r$2;->a:I

    iget v4, p0, Landroid/support/v4/app/r$2;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/r;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    return-void
.end method
