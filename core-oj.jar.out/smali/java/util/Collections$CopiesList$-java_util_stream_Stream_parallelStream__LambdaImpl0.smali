.class final synthetic Ljava/util/Collections$CopiesList$-java_util_stream_Stream_parallelStream__LambdaImpl0;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CopiesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Stream_parallelStream__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/util/Collections$CopiesList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collections$CopiesList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Collections$CopiesList$-java_util_stream_Stream_parallelStream__LambdaImpl0;->val$this:Ljava/util/Collections$CopiesList;

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/Collections$CopiesList$-java_util_stream_Stream_parallelStream__LambdaImpl0;->val$this:Ljava/util/Collections$CopiesList;

    invoke-virtual {v0, p1}, Ljava/util/Collections$CopiesList;->-java_util_Collections$CopiesList_lambda$7(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
