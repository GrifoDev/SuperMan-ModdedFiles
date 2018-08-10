.class Lcom/android/keyguard/LatencyTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/LatencyTracker;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/LatencyTracker;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LatencyTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/LatencyTracker$1;->this$0:Lcom/android/keyguard/LatencyTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/LatencyTracker$1;->this$0:Lcom/android/keyguard/LatencyTracker;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->-wrap0(Lcom/android/keyguard/LatencyTracker;)V

    return-void
.end method
