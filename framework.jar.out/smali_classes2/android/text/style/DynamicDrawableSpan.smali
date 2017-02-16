.class public abstract Landroid/text/style/DynamicDrawableSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DynamicDrawableSpan.java"


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DynamicDrawableSpan"


# instance fields
.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVerticalAlignment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 47
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "verticalAlignment"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 55
    iput p1, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 54
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 110
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 112
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 115
    :cond_0
    if-nez v0, :cond_1

    .line 116
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 120
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    .local v0, "b":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p8, v2

    .line 99
    .local v1, "transY":I
    iget v2, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 100
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v1, v2

    .line 103
    :cond_0
    int-to-float v2, v1

    invoke-virtual {p1, p5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    return-void
.end method

.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 80
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 81
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    neg-int v2, v2

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 82
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 84
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 85
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 88
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->right:I

    return v2
.end method

.method public getVerticalAlignment()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    return v0
.end method
