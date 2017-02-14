.class public Landroid/view/View$SemClipRect;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemClipRect"
.end annotation


# instance fields
.field mClipRect:Landroid/graphics/Rect;

.field mCornerRadius:F

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Landroid/view/View$SemClipRect;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$SemClipRect;->mClipRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$SemClipRect;->mCornerRadius:F

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/View$SemClipRect;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    iget v0, p0, Landroid/view/View$SemClipRect;->mCornerRadius:F

    return v0
.end method

.method public setBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/view/View$SemClipRect;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$SemClipRect;->mClipRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/view/View$SemClipRect;->mClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/view/View$SemClipRect;->mClipRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/view/View$SemClipRect;->mClipRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/view/View$SemClipRect;->mClipRect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    iput p1, p0, Landroid/view/View$SemClipRect;->mCornerRadius:F

    return-void
.end method
