.class final synthetic Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeDouble_boolean_mustFindFirst_LambdaImpl0;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_TerminalOp_makeDouble_boolean_mustFindFirst_LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/OptionalDouble;

    invoke-static {p1}, Ljava/util/stream/FindOps;->-java_util_stream_FindOps-mthref-6(Ljava/util/OptionalDouble;)Z

    move-result v0

    return v0
.end method
