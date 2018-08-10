.class public Lcom/android/systemui/statusbar/DebugLogMonitor;
.super Ljava/lang/Object;
.source "DebugLogMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DebugLogMonitor$1;,
        Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;
    }
.end annotation


# static fields
.field private static final ENG:Z

.field private static final PANELBAR_TRACE_LOG_MAX_NUMBER:I

.field private static final TOUCH_LOG_MAX_NUMBER:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPanelBarTraceLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelViewAlphaLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelViewVisibilityLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTouchLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/DebugLogMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddPanelBarTraceDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddPanelViewAlphaDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddPanelViewVisibilityDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddTouchDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0x3e8

    const/16 v2, 0x1f4

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->ENG:Z

    const-string/jumbo v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->TOUCH_LOG_MAX_NUMBER:I

    const-string/jumbo v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    sput v1, Lcom/android/systemui/statusbar/DebugLogMonitor;->PANELBAR_TRACE_LOG_MAX_NUMBER:I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/systemui/statusbar/DebugLogMonitor$1;

    sget-object v0, Lcom/android/systemui/Dependency;->DEBUG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor$1;-><init>(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static LogEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->ENG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private dumpPanelBarTrace(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "PanelBarTraceLogs:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method private dumpPanelViewAlphaDebugLogs(Ljava/io/PrintWriter;)V
    .locals 3

    const-string/jumbo v2, "*PanelViewAlphaDebugLogs:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpPanelViewTrace(Ljava/io/PrintWriter;)V
    .locals 1

    const-string/jumbo v0, "PanelViewTraceLogs:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpPanelViewVisibilityDebugLogs(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpPanelViewAlphaDebugLogs(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dumpPanelViewVisibilityDebugLogs(Ljava/io/PrintWriter;)V
    .locals 3

    const-string/jumbo v2, "*PanelViewVisibilityDebugLogs:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpTouch(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "DebugTouchLogs:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method private handleAddPanelBarTraceDebugLogs(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->makeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/systemui/statusbar/DebugLogMonitor;->PANELBAR_TRACE_LOG_MAX_NUMBER:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private handleAddPanelViewAlphaDebugLogs(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/StackTraceElement;

    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->makeTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleAddPanelViewVisibilityDebugLogs(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/StackTraceElement;

    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->makeTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleAddTouchDebugLogs(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;

    iget-object v2, v1, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;->steArray:[Ljava/lang/StackTraceElement;

    iget-object v0, v1, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;->extraInfo:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->makeTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v4, Lcom/android/systemui/statusbar/DebugLogMonitor;->TOUCH_LOG_MAX_NUMBER:I

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private makeTime()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string/jumbo v1, "%02d:%02d:%02d.%03d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addPanelBarTraceDebugLogs(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public addPanelViewAlphaDebugLogs()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138b

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public addPanelViewVisibilityDebugLogs()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138a

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public addTouchDebugLogs(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method public addTouchDebugLogs(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;-><init>(Lcom/android/systemui/statusbar/DebugLogMonitor;Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;->steArray:[Ljava/lang/StackTraceElement;

    iput-object p1, v0, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;->extraInfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpTouch(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpPanelBarTrace(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpPanelViewTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
