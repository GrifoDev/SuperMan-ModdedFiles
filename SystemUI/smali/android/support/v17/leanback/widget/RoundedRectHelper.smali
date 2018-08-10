.class final Landroid/support/v17/leanback/widget/RoundedRectHelper;
.super Ljava/lang/Object;
.source "RoundedRectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/RoundedRectHelper$Api21Impl;,
        Landroid/support/v17/leanback/widget/RoundedRectHelper$Impl;,
        Landroid/support/v17/leanback/widget/RoundedRectHelper$StubImpl;
    }
.end annotation


# static fields
.field private static final sInstance:Landroid/support/v17/leanback/widget/RoundedRectHelper;


# instance fields
.field private final mImpl:Landroid/support/v17/leanback/widget/RoundedRectHelper$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/RoundedRectHelper;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/RoundedRectHelper;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/RoundedRectHelper;->sInstance:Landroid/support/v17/leanback/widget/RoundedRectHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->supportsRoundedCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/RoundedRectHelper$Api21Impl;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/RoundedRectHelper$Api21Impl;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RoundedRectHelper;->mImpl:Landroid/support/v17/leanback/widget/RoundedRectHelper$Impl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/RoundedRectHelper$StubImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/RoundedRectHelper$StubImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RoundedRectHelper;->mImpl:Landroid/support/v17/leanback/widget/RoundedRectHelper$Impl;

    goto :goto_0
.end method

.method public static getInstance()Landroid/support/v17/leanback/widget/RoundedRectHelper;
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/RoundedRectHelper;->sInstance:Landroid/support/v17/leanback/widget/RoundedRectHelper;

    return-object v0
.end method

.method public static supportsRoundedCorner()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setClipToRoundedOutline(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RoundedRectHelper;->mImpl:Landroid/support/v17/leanback/widget/RoundedRectHelper$Impl;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_rounded_rect_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v17/leanback/widget/RoundedRectHelper$Impl;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    return-void
.end method

.method public setClipToRoundedOutline(Landroid/view/View;ZI)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RoundedRectHelper;->mImpl:Landroid/support/v17/leanback/widget/RoundedRectHelper$Impl;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/RoundedRectHelper$Impl;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    return-void
.end method
