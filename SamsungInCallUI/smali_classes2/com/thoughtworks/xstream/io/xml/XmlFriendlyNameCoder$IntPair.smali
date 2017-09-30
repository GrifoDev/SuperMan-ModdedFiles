.class Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntPair"
.end annotation


# instance fields
.field max:I

.field min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;->min:I

    iput p2, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;->max:I

    return-void
.end method
