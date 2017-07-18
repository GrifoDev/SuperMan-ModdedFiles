.class final synthetic Ljava/util/stream/SpinedBuffer$-java_lang_String_toString__LambdaImpl0;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_lang_String_toString__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$-java_lang_String_toString__LambdaImpl0;->val$-lambdaCtx:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$-java_lang_String_toString__LambdaImpl0;->val$-lambdaCtx:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/stream/SpinedBuffer;->-java_util_stream_SpinedBuffer-mthref-0(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method
