.class public final Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
.super Ljava/lang/Object;
.source "ItemAlignmentFacet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    }
.end annotation


# instance fields
.field private mAlignmentDefs:[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    new-instance v1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->mAlignmentDefs:[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    return-void
.end method


# virtual methods
.method public getAlignmentDefs()[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->mAlignmentDefs:[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    return-object v0
.end method

.method public setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->mAlignmentDefs:[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    return-void
.end method
