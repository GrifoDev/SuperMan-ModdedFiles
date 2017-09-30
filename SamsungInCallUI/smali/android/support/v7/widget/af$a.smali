.class Landroid/support/v7/widget/af$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/af;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/af;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/af$a;->a:Landroid/support/v7/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/af;Landroid/support/v7/widget/af$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/af$a;-><init>(Landroid/support/v7/widget/af;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/af$a;->a:Landroid/support/v7/widget/af;

    invoke-static {v0}, Landroid/support/v7/widget/af;->a(Landroid/support/v7/widget/af;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
