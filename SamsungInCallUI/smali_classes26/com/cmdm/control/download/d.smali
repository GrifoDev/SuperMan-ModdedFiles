.class public Lcom/cmdm/control/download/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cmdm/control/download/Interface/c;


# instance fields
.field protected bE:Landroid/content/Context;

.field protected bF:Landroid/graphics/drawable/Drawable;

.field bG:Landroid/widget/BaseAdapter;

.field protected bH:Lcom/cmdm/control/download/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    .line 31
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    .line 60
    iput-object p1, p0, Lcom/cmdm/control/download/d;->bE:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    .line 64
    new-instance v0, Lcom/cmdm/control/download/c;

    invoke-direct {v0, p1}, Lcom/cmdm/control/download/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isSetSrc"    # Z

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    .line 31
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    .line 68
    iput-object p1, p0, Lcom/cmdm/control/download/d;->bE:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    .line 72
    new-instance v0, Lcom/cmdm/control/download/c;

    invoke-direct {v0, p1, p3}, Lcom/cmdm/control/download/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adpter"    # Landroid/widget/BaseAdapter;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    .line 31
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    .line 38
    iput-object p1, p0, Lcom/cmdm/control/download/d;->bE:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    .line 40
    iput-object p3, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    .line 43
    new-instance v0, Lcom/cmdm/control/download/c;

    invoke-direct {v0, p1}, Lcom/cmdm/control/download/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adpter"    # Landroid/widget/BaseAdapter;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "isSetSrc"    # Z

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    .line 31
    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    .line 51
    iput-object p1, p0, Lcom/cmdm/control/download/d;->bE:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    .line 53
    iput-object p3, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    .line 56
    new-instance v0, Lcom/cmdm/control/download/c;

    invoke-direct {v0, p1, p4}, Lcom/cmdm/control/download/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    .line 57
    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "hashPostion"    # I
    .param p2, "drawable"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    return-void
.end method

.method protected a(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 96
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    iget-object v1, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p1, v1}, Lcom/cmdm/control/download/c;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method public b(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 0
    .param p1, "imgView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/cmdm/control/download/d;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 114
    return-void
.end method
