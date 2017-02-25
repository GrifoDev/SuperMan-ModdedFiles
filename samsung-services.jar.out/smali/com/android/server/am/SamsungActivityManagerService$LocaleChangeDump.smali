.class Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocaleChangeDump"
.end annotation


# static fields
.field private static final MAX_NUM_OF_LOCALE_CHANGED_HISTORY_DUMP:I = 0x5


# instance fields
.field private mCountPointer:I

.field private mDate:Ljava/util/Date;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field mLocaleChangedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;",
            ">;"
        }
    .end annotation
.end field

.field mStoredCaller:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/SamsungActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/SamsungActivityManagerService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mDate:Ljava/util/Date;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mStoredCaller:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mCountPointer:I

    return-void
.end method


# virtual methods
.method public clearCaller()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mStoredCaller:Ljava/lang/String;

    return-void
.end method

.method public dumpLocaleChangedHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v3, "ACTIVITY MANAGER LOCALE CHANGED HISTORY"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mCountPointer:I

    if-nez v3, :cond_1

    const-string/jumbo v3, " (nothing) "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mCountPointer:I

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mCountPointer:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    rem-int/lit8 v1, v3, 0x5

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;

    iget-object v2, v3, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mMsg:Ljava/lang/String;

    const-string/jumbo v3, "# %d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mCountPointer:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;

    iget-object v3, v3, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;

    iget-wide v6, v3, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mSystemTimeMillis:J

    invoke-virtual {v4, v6, v7}, Ljava/util/Date;->setTime(J)V

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;

    iget-object v3, v3, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mCallstack:Ljava/lang/RuntimeException;

    invoke-virtual {v3, p2}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public recordLocaleChangedHistory(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .locals 10

    const/4 v6, 0x0

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Locale is changed.\n\t{%s} -> {%s}\n * Caller : %s\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mStoredCaller:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mCountPointer:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mCountPointer:I

    new-instance v6, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;

    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9, v2}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;-><init>(Lcom/android/server/am/SamsungActivityManagerService;JLjava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    iget v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mCountPointer:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mCountPointer:I

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mCountPointer:I

    rem-int/lit8 v5, v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v2}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->updateData(JLjava/lang/String;)V

    goto :goto_2
.end method

.method public setCaller(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->mStoredCaller:Ljava/lang/String;

    return-void
.end method
