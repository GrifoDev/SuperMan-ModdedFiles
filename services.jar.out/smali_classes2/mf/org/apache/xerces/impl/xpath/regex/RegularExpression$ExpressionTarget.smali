.class abstract Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
.super Ljava/lang/Object;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ExpressionTarget"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract charAt(I)C
.end method

.method abstract regionMatches(ZIIII)Z
.end method

.method abstract regionMatches(ZIILjava/lang/String;I)Z
.end method
