.class Lcom/sec/android/cover/monitor/CoverUpdateMonitor$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$4;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$4;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap33(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    return-void
.end method
