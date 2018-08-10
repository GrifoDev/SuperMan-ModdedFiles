.class public Lcom/android/systemui/util/leak/LeakDetector;
.super Ljava/lang/Object;
.source "LeakDetector.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final ENABLED:Z


# instance fields
.field private final mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

.field private final mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

.field private final mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;


# direct methods
.method static synthetic -com_android_systemui_util_leak_LeakDetector-mthref-0(Ljava/util/Collection;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/util/leak/TrackedObjects;->isTrackedObject(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/leak/TrackedCollections;Lcom/android/systemui/util/leak/TrackedGarbage;Lcom/android/systemui/util/leak/TrackedObjects;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    iput-object p2, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    iput-object p3, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;

    return-void
.end method

.method public static create()Lcom/android/systemui/util/leak/LeakDetector;
    .locals 4

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/systemui/util/leak/TrackedCollections;

    invoke-direct {v0}, Lcom/android/systemui/util/leak/TrackedCollections;-><init>()V

    new-instance v1, Lcom/android/systemui/util/leak/LeakDetector;

    new-instance v2, Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-direct {v2, v0}, Lcom/android/systemui/util/leak/TrackedGarbage;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;)V

    new-instance v3, Lcom/android/systemui/util/leak/TrackedObjects;

    invoke-direct {v3, v0}, Lcom/android/systemui/util/leak/TrackedObjects;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/util/leak/LeakDetector;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;Lcom/android/systemui/util/leak/TrackedGarbage;Lcom/android/systemui/util/leak/TrackedObjects;)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-direct {v1, v2, v2, v2}, Lcom/android/systemui/util/leak/LeakDetector;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;Lcom/android/systemui/util/leak/TrackedGarbage;Lcom/android/systemui/util/leak/TrackedObjects;)V

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_util_leak_LeakDetector_3875(Ljava/util/Collection;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/util/leak/TrackedObjects;->isTrackedObject(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string/jumbo v1, "SYSUI LEAK DETECTOR"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TrackedCollections:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    new-instance v2, Lcom/android/systemui/util/leak/-$Lambda$mhfXwkSkgp7i941uE4Iktf2bLLE;

    invoke-direct {v2}, Lcom/android/systemui/util/leak/-$Lambda$mhfXwkSkgp7i941uE4Iktf2bLLE;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/leak/TrackedCollections;->dump(Ljava/io/PrintWriter;Ljava/util/function/Predicate;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "TrackedObjects:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    new-instance v2, Lcom/android/systemui/util/leak/-$Lambda$mhfXwkSkgp7i941uE4Iktf2bLLE$1;

    invoke-direct {v2}, Lcom/android/systemui/util/leak/-$Lambda$mhfXwkSkgp7i941uE4Iktf2bLLE$1;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/leak/TrackedCollections;->dump(Ljava/io/PrintWriter;Ljava/util/function/Predicate;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "TrackedGarbage:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/TrackedGarbage;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void

    :cond_0
    const-string/jumbo v1, "disabled"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getTrackedGarbage()Lcom/android/systemui/util/leak/TrackedGarbage;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    return-object v0
.end method

.method public trackCollection(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/util/leak/TrackedCollections;->track(Ljava/util/Collection;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public trackGarbage(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/leak/TrackedGarbage;->track(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public trackInstance(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/leak/TrackedObjects;->track(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
