.class final Lcom/google/common/base/CharMatcher$InRange;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InRange"
.end annotation


# instance fields
.field private final endInclusive:C

.field private final startInclusive:C


# direct methods
.method constructor <init>(CC)V
    .locals 1
    .param p1, "startInclusive"    # C
    .param p2, "endInclusive"    # C

    .prologue
    .line 1774
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>()V

    .line 1775
    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1776
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$InRange;->startInclusive:C

    .line 1777
    iput-char p2, p0, Lcom/google/common/base/CharMatcher$InRange;->endInclusive:C

    .line 1778
    return-void

    .line 1775
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 1782
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$InRange;->startInclusive:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$InRange;->endInclusive:C

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 2
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 1788
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$InRange;->startInclusive:C

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$InRange;->endInclusive:C

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 1789
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.inRange(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$InRange;->startInclusive:C

    # invokes: Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;
    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$InRange;->endInclusive:C

    # invokes: Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;
    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
