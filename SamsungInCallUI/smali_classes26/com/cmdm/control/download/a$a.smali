.class Lcom/cmdm/control/download/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmdm/control/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic br:Lcom/cmdm/control/download/a;

.field bs:Landroid/graphics/Bitmap;

.field bt:Lcom/cmdm/control/download/a$c;


# direct methods
.method public constructor <init>(Lcom/cmdm/control/download/a;Landroid/graphics/Bitmap;Lcom/cmdm/control/download/a$c;)V
    .locals 0
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "p"    # Lcom/cmdm/control/download/a$c;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/cmdm/control/download/a$a;->br:Lcom/cmdm/control/download/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-object p2, p0, Lcom/cmdm/control/download/a$a;->bs:Landroid/graphics/Bitmap;

    .line 550
    iput-object p3, p0, Lcom/cmdm/control/download/a$a;->bt:Lcom/cmdm/control/download/a$c;

    .line 551
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/cmdm/control/download/a$a;->br:Lcom/cmdm/control/download/a;

    iget-object v1, p0, Lcom/cmdm/control/download/a$a;->bt:Lcom/cmdm/control/download/a$c;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/download/a;->a(Lcom/cmdm/control/download/a$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/download/a$a;->bs:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/cmdm/control/download/a$a;->bt:Lcom/cmdm/control/download/a$c;

    iget-object v0, v0, Lcom/cmdm/control/download/a$c;->bu:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmdm/control/download/a$a;->bs:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/download/a$a;->bt:Lcom/cmdm/control/download/a$c;

    iget-object v0, v0, Lcom/cmdm/control/download/a$c;->bu:Landroid/widget/ImageView;

    .line 560
    iget-object v1, p0, Lcom/cmdm/control/download/a$a;->bt:Lcom/cmdm/control/download/a$c;

    invoke-static {v1}, Lcom/cmdm/control/download/a$c;->b(Lcom/cmdm/control/download/a$c;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
