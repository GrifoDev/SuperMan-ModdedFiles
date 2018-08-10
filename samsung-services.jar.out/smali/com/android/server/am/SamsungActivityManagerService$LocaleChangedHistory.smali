.class Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleChangedHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;
    }
.end annotation


# static fields
.field private static final MAX_HISTORY_COUNT:I = 0xa


# instance fields
.field private final mCallerInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDate:Ljava/util/Date;

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field private final mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->addLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->setCallerLocked(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDate:Ljava/util/Date;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;-><init>()V

    return-void
.end method

.method private addLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "%s changed from %s to %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;

    invoke-direct {v4, v1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 10

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_0

    const-string/jumbo v4, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v4, "ACTIVITY MANAGER LOCALE CHANGED HISTORY"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, " (nothing) "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;

    const-string/jumbo v4, "#%d "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->message:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " at "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, v1, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDate:Ljava/util/Date;

    iget-wide v6, v1, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->systemTimeMillis:J

    invoke-virtual {v4, v6, v7}, Ljava/util/Date;->setTime(J)V

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDate:Ljava/util/Date;

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x4

    iget-object v4, v1, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->callstack:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_4

    aget-object v0, v6, v4

    if-nez v3, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setCallerLocked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
