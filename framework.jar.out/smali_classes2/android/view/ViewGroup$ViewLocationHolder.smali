.class Landroid/view/ViewGroup$ViewLocationHolder;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewLocationHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/view/ViewGroup$ViewLocationHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPARISON_STRATEGY_LOCATION:I = 0x2

.field public static final COMPARISON_STRATEGY_STRIPE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x20

.field private static sComparisonStrategy:I

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLayoutDirection:I

.field private final mLocation:Landroid/graphics/Rect;

.field public mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8190
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 8189
    sput-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 8196
    const/4 v0, 0x1

    sput v0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    .line 8185
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 8185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    .line 8185
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8281
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    .line 8282
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8280
    return-void
.end method

.method private init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 8273
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    .line 8274
    .local v0, "viewLocation":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 8275
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8276
    iput-object p2, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    .line 8277
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    .line 8272
    return-void
.end method

.method public static obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;
    .locals 2
    .param p0, "root"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8205
    sget-object v1, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$ViewLocationHolder;

    .line 8206
    .local v0, "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    if-nez v0, :cond_0

    .line 8207
    new-instance v0, Landroid/view/ViewGroup$ViewLocationHolder;

    .end local v0    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    invoke-direct {v0}, Landroid/view/ViewGroup$ViewLocationHolder;-><init>()V

    .line 8209
    .restart local v0    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    :cond_0
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->init(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 8210
    return-object v0
.end method

.method public static setComparisonStrategy(I)V
    .locals 0
    .param p0, "strategy"    # I

    .prologue
    .line 8214
    sput p0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    .line 8213
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I
    .locals 8
    .param p1, "another"    # Landroid/view/ViewGroup$ViewLocationHolder;

    .prologue
    const/4 v7, 0x1

    .line 8225
    if-nez p1, :cond_0

    .line 8226
    return v7

    .line 8229
    :cond_0
    sget v5, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    if-ne v5, v7, :cond_2

    .line 8231
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    if-gtz v5, :cond_1

    .line 8232
    const/4 v5, -0x1

    return v5

    .line 8235
    :cond_1
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-ltz v5, :cond_2

    .line 8236
    return v7

    .line 8241
    :cond_2
    iget v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    if-nez v5, :cond_3

    .line 8242
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v6

    .line 8243
    .local v1, "leftDifference":I
    if-eqz v1, :cond_4

    .line 8244
    return v1

    .line 8247
    .end local v1    # "leftDifference":I
    :cond_3
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    .line 8248
    .local v2, "rightDifference":I
    if-eqz v2, :cond_4

    .line 8249
    neg-int v5, v2

    return v5

    .line 8253
    .end local v2    # "rightDifference":I
    :cond_4
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v6

    .line 8254
    .local v3, "topDifference":I
    if-eqz v3, :cond_5

    .line 8255
    return v3

    .line 8258
    :cond_5
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v0, v5, v6

    .line 8259
    .local v0, "heightDiference":I
    if-eqz v0, :cond_6

    .line 8260
    neg-int v5, v0

    return v5

    .line 8263
    :cond_6
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v4, v5, v6

    .line 8264
    .local v4, "widthDiference":I
    if-eqz v4, :cond_7

    .line 8265
    neg-int v5, v4

    return v5

    .line 8269
    :cond_7
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v5

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v6

    sub-int/2addr v5, v6

    return v5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 8223
    check-cast p1, Landroid/view/ViewGroup$ViewLocationHolder;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 8218
    invoke-direct {p0}, Landroid/view/ViewGroup$ViewLocationHolder;->clear()V

    .line 8219
    sget-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 8217
    return-void
.end method
