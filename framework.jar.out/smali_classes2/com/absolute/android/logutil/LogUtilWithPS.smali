.class public Lcom/absolute/android/logutil/LogUtilWithPS;
.super Lcom/absolute/android/logutil/LogUtilNoPS;
.source "SourceFile"


# static fields
.field static final synthetic b:Z

.field private static final d:Z = false

.field private static final e:Z = true


# instance fields
.field private c:Lcom/absolute/android/persistence/IABTPersistenceLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-class v1, Lcom/absolute/android/logutil/LogUtilWithPS;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/absolute/android/logutil/LogUtilWithPS;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/absolute/android/logutil/LogUtilNoPS;-><init>()V

    return-void
.end method


# virtual methods
.method public logMessage(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/absolute/android/logutil/LogUtilNoPS;->logMessage(ILjava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    :goto_1
    return-void

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "Unknown"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    sget-boolean v2, Lcom/absolute/android/logutil/LogUtilWithPS;->b:Z

    if-eqz v2, :cond_2

    :cond_1
    array-length v2, v1

    if-gt v2, v3, :cond_3

    :goto_2
    iget-object v1, p0, Lcom/absolute/android/logutil/LogUtilWithPS;->c:Lcom/absolute/android/persistence/IABTPersistenceLog;

    invoke-interface {v1, p1, v0, p2}, Lcom/absolute/android/persistence/IABTPersistenceLog;->logMessage(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LogUtilwithPS.logMessage: exception caught. Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lcom/absolute/android/logutil/LogUtilNoPS;->logMessage(ILjava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    array-length v2, v1

    if-gt v2, v3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public start(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "ABTPersistenceService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistence/ABTPersistenceManager;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "abt-persistence-service"

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/logutil/LogUtilWithPS;->c:Lcom/absolute/android/persistence/IABTPersistenceLog;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "LogUtilWithPS.ctor abtPersistMgr == null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LogUtilwithPS.start: exception caught. Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lcom/absolute/android/logutil/LogUtilNoPS;->logMessage(ILjava/lang/String;)V

    return-void
.end method
