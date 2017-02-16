.class final Landroid/support/v17/leanback/widget/ForegroundHelper;
.super Ljava/lang/Object;
.source "ForegroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;,
        Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperStubImpl;,
        Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;
    }
.end annotation


# static fields
.field static final sInstance:Landroid/support/v17/leanback/widget/ForegroundHelper;


# instance fields
.field mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/ForegroundHelper;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ForegroundHelper;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ForegroundHelper;->sInstance:Landroid/support/v17/leanback/widget/ForegroundHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/support/v17/leanback/widget/ForegroundHelper;->supportsForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;-><init>(Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ForegroundHelper;->mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperStubImpl;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperStubImpl;-><init>(Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperStubImpl;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ForegroundHelper;->mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;

    goto :goto_0
.end method

.method public static getInstance()Landroid/support/v17/leanback/widget/ForegroundHelper;
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/ForegroundHelper;->sInstance:Landroid/support/v17/leanback/widget/ForegroundHelper;

    return-object v0
.end method

.method public static supportsForeground()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ForegroundHelper;->mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;->setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
