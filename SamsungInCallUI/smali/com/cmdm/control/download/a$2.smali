.class Lcom/cmdm/control/download/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmdm/control/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic br:Lcom/cmdm/control/download/a;


# direct methods
.method constructor <init>(Lcom/cmdm/control/download/a;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/download/a$2;->br:Lcom/cmdm/control/download/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/cmdm/control/download/a$c;

    iget-object v1, p0, Lcom/cmdm/control/download/a$2;->br:Lcom/cmdm/control/download/a;

    invoke-virtual {v1, v0}, Lcom/cmdm/control/download/a;->a(Lcom/cmdm/control/download/a$c;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/cmdm/control/download/a$c;->bx:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/cmdm/control/download/a$c;->bx:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cmdm/control/download/a$2;->br:Lcom/cmdm/control/download/a;

    invoke-static {v1}, Lcom/cmdm/control/download/a;->a(Lcom/cmdm/control/download/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/cmdm/control/download/a$c;->bu:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, v0, Lcom/cmdm/control/download/a$c;->bx:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v1, v0, Lcom/cmdm/control/download/a$c;->bu:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, v0, Lcom/cmdm/control/download/a$c;->bx:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/download/a$2;->br:Lcom/cmdm/control/download/a;

    invoke-static {v1}, Lcom/cmdm/control/download/a;->a(Lcom/cmdm/control/download/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/cmdm/control/download/a$c;->bu:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/cmdm/control/download/a$c;->b(Lcom/cmdm/control/download/a$c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/cmdm/control/download/a$c;->bu:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/cmdm/control/download/a$c;->b(Lcom/cmdm/control/download/a$c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
