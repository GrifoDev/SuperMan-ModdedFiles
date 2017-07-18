.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_joining_java_lang_CharSequence_delimiter_java_lang_CharSequence_prefix_java_lang_CharSequence_suffix_LambdaImpl0;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Collector_joining_java_lang_CharSequence_delimiter_java_lang_CharSequence_prefix_java_lang_CharSequence_suffix_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$delimiter:Ljava/lang/CharSequence;

.field private synthetic val$prefix:Ljava/lang/CharSequence;

.field private synthetic val$suffix:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_joining_java_lang_CharSequence_delimiter_java_lang_CharSequence_prefix_java_lang_CharSequence_suffix_LambdaImpl0;->val$delimiter:Ljava/lang/CharSequence;

    iput-object p2, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_joining_java_lang_CharSequence_delimiter_java_lang_CharSequence_prefix_java_lang_CharSequence_suffix_LambdaImpl0;->val$prefix:Ljava/lang/CharSequence;

    iput-object p3, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_joining_java_lang_CharSequence_delimiter_java_lang_CharSequence_prefix_java_lang_CharSequence_suffix_LambdaImpl0;->val$suffix:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_joining_java_lang_CharSequence_delimiter_java_lang_CharSequence_prefix_java_lang_CharSequence_suffix_LambdaImpl0;->val$delimiter:Ljava/lang/CharSequence;

    iget-object v1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_joining_java_lang_CharSequence_delimiter_java_lang_CharSequence_prefix_java_lang_CharSequence_suffix_LambdaImpl0;->val$prefix:Ljava/lang/CharSequence;

    iget-object v2, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_joining_java_lang_CharSequence_delimiter_java_lang_CharSequence_prefix_java_lang_CharSequence_suffix_LambdaImpl0;->val$suffix:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$15(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    return-object v0
.end method
