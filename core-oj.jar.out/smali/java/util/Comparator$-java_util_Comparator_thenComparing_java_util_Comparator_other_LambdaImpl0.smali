.class final synthetic Ljava/util/Comparator$-java_util_Comparator_thenComparing_java_util_Comparator_other_LambdaImpl0;
.super Ljava/lang/Object;
.source "Comparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_Comparator_thenComparing_java_util_Comparator_other_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$other:Ljava/util/Comparator;

.field private synthetic val$this:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Comparator$-java_util_Comparator_thenComparing_java_util_Comparator_other_LambdaImpl0;->val$this:Ljava/util/Comparator;

    iput-object p2, p0, Ljava/util/Comparator$-java_util_Comparator_thenComparing_java_util_Comparator_other_LambdaImpl0;->val$other:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Ljava/util/Comparator$-java_util_Comparator_thenComparing_java_util_Comparator_other_LambdaImpl0;->val$this:Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/Comparator$-java_util_Comparator_thenComparing_java_util_Comparator_other_LambdaImpl0;->val$other:Ljava/util/Comparator;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/Comparator;->-java_util_Comparator_lambda$1(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
