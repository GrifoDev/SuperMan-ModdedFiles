.class final synthetic Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeLong_java_util_function_LongPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;
.super Ljava/lang/Object;
.source "MatchOps.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_TerminalOp_makeLong_java_util_function_LongPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

.field private synthetic val$predicate:Ljava/util/function/LongPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeLong_java_util_function_LongPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeLong_java_util_function_LongPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;->val$predicate:Ljava/util/function/LongPredicate;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeLong_java_util_function_LongPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeLong_java_util_function_LongPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-static {v0, v1}, Ljava/util/stream/MatchOps;->-java_util_stream_MatchOps-mthref-2(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object v0

    return-object v0
.end method
