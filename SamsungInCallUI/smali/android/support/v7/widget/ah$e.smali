.class Landroid/support/v7/widget/ah$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ah;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ah;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ah$e;->a:Landroid/support/v7/widget/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ah;Landroid/support/v7/widget/ah$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ah$e;-><init>(Landroid/support/v7/widget/ah;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ah$e;->a:Landroid/support/v7/widget/ah;

    invoke-static {v0}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/ah;)Landroid/support/v7/widget/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ah$e;->a:Landroid/support/v7/widget/ah;

    invoke-static {v0}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/ah;)Landroid/support/v7/widget/ad;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ah;->v(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ah$e;->a:Landroid/support/v7/widget/ah;

    invoke-static {v0}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/ah;)Landroid/support/v7/widget/ad;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ad;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ah$e;->a:Landroid/support/v7/widget/ah;

    invoke-static {v1}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/ah;)Landroid/support/v7/widget/ad;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ad;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ah$e;->a:Landroid/support/v7/widget/ah;

    invoke-static {v0}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/ah;)Landroid/support/v7/widget/ad;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ad;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ah$e;->a:Landroid/support/v7/widget/ah;

    iget v1, v1, Landroid/support/v7/widget/ah;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ah$e;->a:Landroid/support/v7/widget/ah;

    iget-object v0, v0, Landroid/support/v7/widget/ah;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/widget/ah$e;->a:Landroid/support/v7/widget/ah;

    invoke-virtual {v0}, Landroid/support/v7/widget/ah;->a()V

    :cond_0
    return-void
.end method
