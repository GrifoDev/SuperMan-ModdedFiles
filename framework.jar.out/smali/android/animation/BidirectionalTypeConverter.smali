.class public abstract Landroid/animation/BidirectionalTypeConverter;
.super Landroid/animation/TypeConverter;
.source "BidirectionalTypeConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/BidirectionalTypeConverter$InvertedConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/TypeConverter",
        "<TT;TV;>;"
    }
.end annotation


# instance fields
.field private mInvertedConverter:Landroid/animation/BidirectionalTypeConverter;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Landroid/animation/BidirectionalTypeConverter;, "Landroid/animation/BidirectionalTypeConverter<TT;TV;>;"
    .local p1, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/animation/TypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TT;"
        }
    .end annotation
.end method

.method public invert()Landroid/animation/BidirectionalTypeConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/animation/BidirectionalTypeConverter",
            "<TV;TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Landroid/animation/BidirectionalTypeConverter;, "Landroid/animation/BidirectionalTypeConverter<TT;TV;>;"
    iget-object v0, p0, Landroid/animation/BidirectionalTypeConverter;->mInvertedConverter:Landroid/animation/BidirectionalTypeConverter;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;

    invoke-direct {v0, p0}, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;-><init>(Landroid/animation/BidirectionalTypeConverter;)V

    iput-object v0, p0, Landroid/animation/BidirectionalTypeConverter;->mInvertedConverter:Landroid/animation/BidirectionalTypeConverter;

    .line 52
    :cond_0
    iget-object v0, p0, Landroid/animation/BidirectionalTypeConverter;->mInvertedConverter:Landroid/animation/BidirectionalTypeConverter;

    return-object v0
.end method
