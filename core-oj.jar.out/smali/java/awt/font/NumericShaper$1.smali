.class Ljava/awt/font/NumericShaper$1;
.super Ljava/lang/Object;
.source "NumericShaper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/awt/font/NumericShaper$Range;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/awt/font/NumericShaper;


# direct methods
.method constructor <init>(Ljava/awt/font/NumericShaper;)V
    .locals 0

    iput-object p1, p0, Ljava/awt/font/NumericShaper$1;->this$0:Ljava/awt/font/NumericShaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/awt/font/NumericShaper$Range;Ljava/awt/font/NumericShaper$Range;)I
    .locals 2

    invoke-static {p1}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    invoke-static {p2}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    invoke-static {p2}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/awt/font/NumericShaper$Range;

    check-cast p2, Ljava/awt/font/NumericShaper$Range;

    invoke-virtual {p0, p1, p2}, Ljava/awt/font/NumericShaper$1;->compare(Ljava/awt/font/NumericShaper$Range;Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    return v0
.end method
