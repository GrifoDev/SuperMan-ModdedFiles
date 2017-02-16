.class Landroid/animation/BidirectionalTypeConverter$InvertedConverter;
.super Landroid/animation/BidirectionalTypeConverter;
.source "BidirectionalTypeConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/BidirectionalTypeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvertedConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<From:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/BidirectionalTypeConverter",
        "<TFrom;TTo;>;"
    }
.end annotation


# instance fields
.field private mConverter:Landroid/animation/BidirectionalTypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/BidirectionalTypeConverter",
            "<TTo;TFrom;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/animation/BidirectionalTypeConverter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/BidirectionalTypeConverter",
            "<TTo;TFrom;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Landroid/animation/BidirectionalTypeConverter$InvertedConverter;, "Landroid/animation/BidirectionalTypeConverter<TT;TV;>.InvertedConverter<TFrom;TTo;>;"
    .local p1, "converter":Landroid/animation/BidirectionalTypeConverter;, "Landroid/animation/BidirectionalTypeConverter<TTo;TFrom;>;"
    invoke-virtual {p1}, Landroid/animation/TypeConverter;->getTargetType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/TypeConverter;->getSourceType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/animation/BidirectionalTypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 60
    iput-object p1, p0, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;->mConverter:Landroid/animation/BidirectionalTypeConverter;

    .line 58
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFrom;)TTo;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Landroid/animation/BidirectionalTypeConverter$InvertedConverter;, "Landroid/animation/BidirectionalTypeConverter<TT;TV;>.InvertedConverter<TFrom;TTo;>;"
    .local p1, "value":Ljava/lang/Object;, "TFrom;"
    iget-object v0, p0, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;->mConverter:Landroid/animation/BidirectionalTypeConverter;

    invoke-virtual {v0, p1}, Landroid/animation/BidirectionalTypeConverter;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTo;)TFrom;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Landroid/animation/BidirectionalTypeConverter$InvertedConverter;, "Landroid/animation/BidirectionalTypeConverter<TT;TV;>.InvertedConverter<TFrom;TTo;>;"
    .local p1, "value":Ljava/lang/Object;, "TTo;"
    iget-object v0, p0, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;->mConverter:Landroid/animation/BidirectionalTypeConverter;

    invoke-virtual {v0, p1}, Landroid/animation/TypeConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
