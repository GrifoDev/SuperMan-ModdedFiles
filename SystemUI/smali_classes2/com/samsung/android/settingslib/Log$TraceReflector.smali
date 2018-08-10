.class public Lcom/samsung/android/settingslib/Log$TraceReflector;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceReflector"
.end annotation


# static fields
.field private static sMethodTraceBegin:Ljava/lang/reflect/Method;

.field private static sMethodTraceEnd:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "android.os.Trace"

    const-string/jumbo v1, "traceBegin"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settingslib/MethodReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/Log$TraceReflector;->sMethodTraceBegin:Ljava/lang/reflect/Method;

    const-string/jumbo v0, "android.os.Trace"

    const-string/jumbo v1, "traceEnd"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settingslib/MethodReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/Log$TraceReflector;->sMethodTraceEnd:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
