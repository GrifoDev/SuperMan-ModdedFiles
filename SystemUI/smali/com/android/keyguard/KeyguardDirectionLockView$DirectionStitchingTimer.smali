.class Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;
.super Ljava/lang/Thread;
.source "KeyguardDirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectionStitchingTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "KeyguardDirectionLock"

    const-string/jumbo v2, "Stitching Timer Thread started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set6(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set6(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set4(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap1(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set4(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set6(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    const-string/jumbo v1, "KeyguardDirectionLock"

    const-string/jumbo v2, "Interrupted before waking up naturally"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
