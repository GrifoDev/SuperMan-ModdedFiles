.class final synthetic Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$-java_util_function_Consumer_entryConsumer_java_util_function_Consumer_action_LambdaImpl0;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_Consumer_entryConsumer_java_util_function_Consumer_action_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$action:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$-java_util_function_Consumer_entryConsumer_java_util_function_Consumer_action_LambdaImpl0;->val$action:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$-java_util_function_Consumer_entryConsumer_java_util_function_Consumer_action_LambdaImpl0;->val$action:Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->-java_util_Collections$UnmodifiableMap$UnmodifiableEntrySet_lambda$1(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V

    return-void
.end method
