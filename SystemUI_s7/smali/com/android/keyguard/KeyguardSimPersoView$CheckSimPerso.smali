.class abstract Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;
.super Ljava/lang/Thread;
.source "KeyguardSimPersoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPersoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPerso"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPersoView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(Z)V
.end method

.method public run()V
    .locals 8

    const-wide/16 v6, 0x32

    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPerso(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "KeyguardSimPersoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CheckSimPerso supplyPerso returned : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    new-instance v3, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso$1;-><init>(Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;Z)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/keyguard/KeyguardSimPersoView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KeyguardSimPersoView"

    const-string/jumbo v3, "RemoteException for supplyPerso:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    new-instance v3, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso$2;-><init>(Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;)V

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/keyguard/KeyguardSimPersoView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
