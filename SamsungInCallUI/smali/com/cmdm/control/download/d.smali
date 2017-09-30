.class public Lcom/cmdm/control/download/d;
.super Ljava/lang/Object;

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

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    iput-object p1, p0, Lcom/cmdm/control/download/d;->bE:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/cmdm/control/download/c;

    invoke-direct {v0, p1}, Lcom/cmdm/control/download/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    iput-object p1, p0, Lcom/cmdm/control/download/d;->bE:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/cmdm/control/download/c;

    invoke-direct {v0, p1, p3}, Lcom/cmdm/control/download/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    iput-object p1, p0, Lcom/cmdm/control/download/d;->bE:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    iput-object p3, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/cmdm/control/download/c;

    invoke-direct {v0, p1}, Lcom/cmdm/control/download/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    iput-object p1, p0, Lcom/cmdm/control/download/d;->bE:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmdm/control/download/d;->bG:Landroid/widget/BaseAdapter;

    iput-object p3, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/cmdm/control/download/c;

    invoke-direct {v0, p1, p4}, Lcom/cmdm/control/download/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cmdm/control/download/d;->bH:Lcom/cmdm/control/download/c;

    iget-object v1, p0, Lcom/cmdm/control/download/d;->bF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p1, v1}, Lcom/cmdm/control/download/c;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/cmdm/control/download/d;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method
