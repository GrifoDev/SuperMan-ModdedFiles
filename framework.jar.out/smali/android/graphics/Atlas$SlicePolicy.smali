.class Landroid/graphics/Atlas$SlicePolicy;
.super Landroid/graphics/Atlas$Policy;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlicePolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Atlas$SlicePolicy$Cell;,
        Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$SplitDecision;
    }
.end annotation


# instance fields
.field private final mPadding:I

.field private final mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

.field private final mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;


# direct methods
.method constructor <init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/graphics/Atlas$Policy;-><init>(Landroid/graphics/Atlas$Policy;)V

    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v2, v3}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$SlicePolicy$Cell;)V

    iput-object v2, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    new-instance v0, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v0, v3}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$SlicePolicy$Cell;)V

    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iget-object v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v0, v1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object p4, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    return-void
.end method

.method private insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lt v6, p3, :cond_0

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-ge v6, p4, :cond_1

    :cond_0
    return v7

    :cond_1
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    sub-int v1, v6, p3

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    sub-int v0, v6, p4

    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v2, v8}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$SlicePolicy$Cell;)V

    new-instance v4, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v4, v8}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$SlicePolicy$Cell;)V

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    add-int/2addr v6, p3

    iget v7, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iget v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    sub-int v6, v1, v6

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    add-int/2addr v6, p4

    iget v7, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iget v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    sub-int v6, v0, v6

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iget-object v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    invoke-interface {v6, v1, v0, p3, p4}, Landroid/graphics/Atlas$SlicePolicy$SplitDecision;->splitHorizontal(IIII)Z

    move-result v6

    if-eqz v6, :cond_3

    iput p4, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    :goto_0
    iget v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lez v6, :cond_2

    iget v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-lez v6, :cond_2

    iput-object v2, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    move-object p2, v2

    :cond_2
    iget v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lez v6, :cond_4

    iget v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-lez v6, :cond_4

    iput-object v4, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iget-object v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    :goto_1
    iput-object v8, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iput v6, p5, Landroid/graphics/Atlas$Entry;->x:I

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v6, p5, Landroid/graphics/Atlas$Entry;->y:I

    const/4 v6, 0x1

    return v6

    :cond_3
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iput p3, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    move-object v5, v2

    move-object v3, v4

    move-object v4, v2

    move-object v2, v3

    goto :goto_0

    :cond_4
    iget-object v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v6, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    goto :goto_1
.end method


# virtual methods
.method pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iget-object v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iget-object v2, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    :goto_0
    if-eqz v1, :cond_1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Atlas$SlicePolicy;->insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    move-object v2, v1

    iget-object v1, v1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    goto :goto_0

    :cond_1
    return-object v6
.end method
