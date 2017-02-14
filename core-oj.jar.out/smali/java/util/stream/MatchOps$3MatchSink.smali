.class Ljava/util/stream/MatchOps$3MatchSink;
.super Ljava/util/stream/MatchOps$BooleanTerminalSink;
.source "MatchOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatchSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/MatchOps$BooleanTerminalSink",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field final synthetic val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

.field final synthetic val$predicate:Ljava/util/function/LongPredicate;


# direct methods
.method constructor <init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/MatchOps$3MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava/util/stream/MatchOps$3MatchSink;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-direct {p0, p1}, Ljava/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3

    iget-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/stream/MatchOps$3MatchSink;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    iget-object v1, p0, Ljava/util/stream/MatchOps$3MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Ljava/util/stream/MatchOps$MatchKind;->-get1(Ljava/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    iget-object v0, p0, Ljava/util/stream/MatchOps$3MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljava/util/stream/MatchOps$MatchKind;->-get0(Ljava/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    :cond_0
    return-void
.end method
