.class public Lcom/cmdm/control/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String; = "AppErrorLog.txt"

.field private static final b:I = 0x100000

.field private static d:Lcom/cmdm/control/app/a;


# instance fields
.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/app/a;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 43
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmdm/control/app/a;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lcom/cmdm/control/app/a;->d:Lcom/cmdm/control/app/a;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/cmdm/control/app/a;

    invoke-direct {v0, p0}, Lcom/cmdm/control/app/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmdm/control/app/a;->d:Lcom/cmdm/control/app/a;

    .line 50
    :cond_0
    sget-object v0, Lcom/cmdm/control/app/a;->d:Lcom/cmdm/control/app/a;

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    new-instance v0, Lcom/cmdm/control/app/a$1;

    invoke-direct {v0, p0, p1}, Lcom/cmdm/control/app/a$1;-><init>(Lcom/cmdm/control/app/a;Ljava/lang/Throwable;)V

    .line 134
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 135
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lcom/cmdm/control/app/a;->a(Ljava/lang/Throwable;)V

    .line 56
    iget-object v0, p0, Lcom/cmdm/control/app/a;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method
