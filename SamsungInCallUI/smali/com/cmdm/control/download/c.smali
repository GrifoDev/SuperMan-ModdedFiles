.class public Lcom/cmdm/control/download/c;
.super Lcom/cmdm/control/download/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/cmdm/control/download/b;-><init>()V

    new-instance v0, Lcom/cmdm/control/download/a;

    invoke-direct {v0, p0}, Lcom/cmdm/control/download/a;-><init>(Lcom/cmdm/control/download/Interface/d;)V

    iput-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/cmdm/control/download/b;-><init>()V

    new-instance v0, Lcom/cmdm/control/download/a;

    invoke-direct {v0, p0}, Lcom/cmdm/control/download/a;-><init>(Lcom/cmdm/control/download/Interface/d;)V

    iput-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0, p2}, Lcom/cmdm/control/download/a;->c(Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/download/c;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V
    .locals 6

    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/download/a;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method public ap(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/download/a;->ap(Ljava/lang/String;)V

    return-void
.end method

.method public f(II)V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/download/a;->f(II)V

    return-void
.end method

.method public lock()V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0}, Lcom/cmdm/control/download/a;->lock()V

    return-void
.end method

.method public unlock()V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0}, Lcom/cmdm/control/download/a;->unlock()V

    return-void
.end method
