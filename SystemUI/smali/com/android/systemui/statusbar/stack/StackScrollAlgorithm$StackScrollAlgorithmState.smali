.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StackScrollAlgorithmState"
.end annotation


# instance fields
.field public final paddingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public scrollY:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field public final visibleChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getPaddingAfterChild(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->-get0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-int v1, v1

    return v1
.end method
