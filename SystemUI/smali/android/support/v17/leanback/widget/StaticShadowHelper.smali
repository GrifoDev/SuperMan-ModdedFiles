.class final Landroid/support/v17/leanback/widget/StaticShadowHelper;
.super Ljava/lang/Object;
.source "StaticShadowHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperJbmr2Impl;,
        Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperStubImpl;,
        Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperVersionImpl;
    }
.end annotation


# static fields
.field static final sInstance:Landroid/support/v17/leanback/widget/StaticShadowHelper;


# instance fields
.field mImpl:Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperVersionImpl;

.field mSupportsShadow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/StaticShadowHelper;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/StaticShadowHelper;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/StaticShadowHelper;->sInstance:Landroid/support/v17/leanback/widget/StaticShadowHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/StaticShadowHelper;->mSupportsShadow:Z

    new-instance v0, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperJbmr2Impl;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperJbmr2Impl;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaticShadowHelper;->mImpl:Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperVersionImpl;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/StaticShadowHelper;->mSupportsShadow:Z

    new-instance v0, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperStubImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperStubImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaticShadowHelper;->mImpl:Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperVersionImpl;

    goto :goto_0
.end method

.method public static getInstance()Landroid/support/v17/leanback/widget/StaticShadowHelper;
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/StaticShadowHelper;->sInstance:Landroid/support/v17/leanback/widget/StaticShadowHelper;

    return-object v0
.end method


# virtual methods
.method public addStaticShadow(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaticShadowHelper;->mImpl:Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperVersionImpl;->addStaticShadow(Landroid/view/ViewGroup;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prepareParent(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaticShadowHelper;->mImpl:Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperVersionImpl;->prepareParent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setShadowFocusLevel(Ljava/lang/Object;F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaticShadowHelper;->mImpl:Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperVersionImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowHelperVersionImpl;->setShadowFocusLevel(Ljava/lang/Object;F)V

    return-void
.end method

.method public supportsShadow()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/StaticShadowHelper;->mSupportsShadow:Z

    return v0
.end method
