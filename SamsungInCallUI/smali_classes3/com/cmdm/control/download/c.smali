.class public Lcom/cmdm/control/download/c;
.super Lcom/cmdm/control/download/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cmdm/control/download/b;-><init>()V

    .line 25
    new-instance v0, Lcom/cmdm/control/download/a;

    invoke-direct {v0, p0}, Lcom/cmdm/control/download/a;-><init>(Lcom/cmdm/control/download/Interface/d;)V

    iput-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSetSrc"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cmdm/control/download/b;-><init>()V

    .line 29
    new-instance v0, Lcom/cmdm/control/download/a;

    invoke-direct {v0, p0}, Lcom/cmdm/control/download/a;-><init>(Lcom/cmdm/control/download/Interface/d;)V

    iput-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    .line 30
    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0, p2}, Lcom/cmdm/control/download/a;->c(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mView"    # Landroid/widget/ImageView;
    .param p3, "defaultDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, -0x1

    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/download/c;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mView"    # Landroid/widget/ImageView;
    .param p3, "defaultDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/download/a;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V

    .line 55
    return-void
.end method

.method public ap(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/download/a;->ap(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public f(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/download/a;->f(II)V

    .line 83
    return-void
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0}, Lcom/cmdm/control/download/a;->lock()V

    .line 72
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cmdm/control/download/c;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0}, Lcom/cmdm/control/download/a;->unlock()V

    .line 64
    return-void
.end method
