.class abstract Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.super Ljava/lang/Thread;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    iput p4, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(II)V
.end method

.method public run()V
    .locals 6

    :try_start_0
    const-string/jumbo v3, "KeyguardSimPukView"

    const-string/jumbo v4, "call supplyPukReportResult()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    const-string/jumbo v3, "KeyguardSimPukView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supplyPukReportResult returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v4, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;

    invoke-direct {v4, p0, v2}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;[I)V

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardSimPukView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KeyguardSimPukView"

    const-string/jumbo v4, "RemoteException for supplyPukReportResult:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v4, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)V

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardSimPukView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
