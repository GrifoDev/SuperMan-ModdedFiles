.class Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopToBottomLeftToRightComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;->this$0:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v2, v4, v5

    if-eqz v2, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v4, v5

    if-eqz v1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v0, v4, v5

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v3, v4, v5

    if-eqz v3, :cond_3

    return v3

    :cond_3
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
