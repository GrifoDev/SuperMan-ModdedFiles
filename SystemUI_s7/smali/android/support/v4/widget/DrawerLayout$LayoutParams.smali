.class public Landroid/support/v4/widget/DrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field private isPeeking:Z

.field private onScreen:F

.field private openState:I


# direct methods
.method static synthetic -get0(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    return v0
.end method

.method static synthetic -get1(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method static synthetic -get2(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    return v0
.end method

.method static synthetic -set0(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    return p1
.end method

.method static synthetic -set1(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return p1
.end method

.method static synthetic -set2(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    return p1
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->-get1()[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method
