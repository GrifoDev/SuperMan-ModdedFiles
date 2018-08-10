.class Lorg/simpleframework/xml/util/WeakCache$SegmentList;
.super Ljava/lang/Object;
.source "WeakCache.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/util/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SegmentList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/simpleframework/xml/util/WeakCache",
        "<TT;>.Segment;>;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/util/WeakCache",
            "<TT;>.Segment;>;"
        }
    .end annotation
.end field

.field private size:I

.field final synthetic this$0:Lorg/simpleframework/xml/util/WeakCache;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/util/WeakCache;I)V
    .locals 1

    iput-object p1, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->this$0:Lorg/simpleframework/xml/util/WeakCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->list:Ljava/util/List;

    iput p2, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->size:I

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->create(I)V

    return-void
.end method

.method private create(I)V
    .locals 6

    move v0, p1

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->list:Ljava/util/List;

    new-instance v3, Lorg/simpleframework/xml/util/WeakCache$Segment;

    iget-object v4, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->this$0:Lorg/simpleframework/xml/util/WeakCache;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/util/WeakCache$Segment;-><init>(Lorg/simpleframework/xml/util/WeakCache;Lorg/simpleframework/xml/util/WeakCache$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_0
.end method

.method private segment(Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->size:I

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/simpleframework/xml/util/WeakCache",
            "<TT;>.Segment;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->segment(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->size:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/util/WeakCache$Segment;

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/util/WeakCache",
            "<TT;>.Segment;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
