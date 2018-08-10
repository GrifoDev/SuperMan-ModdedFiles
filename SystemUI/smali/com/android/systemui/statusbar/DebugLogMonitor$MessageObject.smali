.class Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;
.super Ljava/lang/Object;
.source "DebugLogMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DebugLogMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageObject"
.end annotation


# instance fields
.field extraInfo:Ljava/lang/String;

.field steArray:[Ljava/lang/StackTraceElement;

.field final synthetic this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/DebugLogMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;->this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/DebugLogMonitor;Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;-><init>(Lcom/android/systemui/statusbar/DebugLogMonitor;)V

    return-void
.end method
