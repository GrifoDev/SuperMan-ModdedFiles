.class final synthetic Lcom/android/keyguard/KnoxStateMonitor$-void__init__android_content_Context_context_LambdaImpl0;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__android_content_Context_context_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/keyguard/KnoxStateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$-void__init__android_content_Context_context_LambdaImpl0;->val$this:Lcom/android/keyguard/KnoxStateMonitor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$-void__init__android_content_Context_context_LambdaImpl0;->val$this:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-com_android_keyguard_KnoxStateMonitor_lambda$1()V

    return-void
.end method
