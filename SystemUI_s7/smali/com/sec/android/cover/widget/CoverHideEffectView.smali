.class public Lcom/sec/android/cover/widget/CoverHideEffectView;
.super Landroid/opengl/GLSurfaceView;
.source "CoverHideEffectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;,
        Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationDuration:I

.field mBitmap:Landroid/graphics/Bitmap;

.field private mFadeWidthPx:F

.field private mListener:Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;

.field private final mRenderer:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/widget/CoverHideEffectView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/widget/CoverHideEffectView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mFadeWidthPx:F

    return v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/widget/CoverHideEffectView;)Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mListener:Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/widget/CoverHideEffectView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mFadeWidthPx:F

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mAnimationDuration:I

    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setEGLConfigChooser(IIIIII)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setEGLContextClientVersion(I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;-><init>(Lcom/sec/android/cover/widget/CoverHideEffectView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mRenderer:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mRenderer:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setRenderMode(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_hide_effect_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mFadeWidthPx:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$integer;->sview_cover_hide_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mAnimationDuration:I

    return-void
.end method


# virtual methods
.method public setListener(Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mListener:Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;

    return-void
.end method

.method public stopAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mRenderer:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->stopAnimation(Z)V

    return-void
.end method
