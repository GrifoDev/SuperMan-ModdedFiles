.class abstract Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
.super Ljava/lang/Thread;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private mSubId:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mPin:Ljava/lang/String;

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mSubId:I

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_keyguard_KeyguardSimPinView$CheckSimPin_10082([I)V
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->onSimCheckResponse(II)V

    return-void
.end method

.method abstract onSimCheckResponse(II)V
.end method

.method public run()V
    .locals 6

    :try_start_0
    const-string/jumbo v3, "KeyguardSimPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "call supplyPinReportResultForSubscriber(subid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mSubId:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v2

    const-string/jumbo v3, "KeyguardSimPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supplyPinReportResult returned: "

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

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    new-instance v4, Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew;

    invoke-direct {v4, p0, v2}, Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardSimPinView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KeyguardSimPinView"

    const-string/jumbo v4, "RemoteException for supplyPinReportResult:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    new-instance v4, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)V

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
