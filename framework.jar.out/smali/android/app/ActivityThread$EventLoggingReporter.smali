.class Landroid/app/ActivityThread$EventLoggingReporter;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Llibcore/io/EventLogger$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventLoggingReporter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$EventLoggingReporter;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread$EventLoggingReporter;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs report(I[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method
