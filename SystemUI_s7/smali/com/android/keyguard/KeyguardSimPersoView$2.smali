.class Lcom/android/keyguard/KeyguardSimPersoView$2;
.super Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;
.source "KeyguardSimPersoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPersoView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardSimPersoView;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-direct {p0, p1, p3}, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;-><init>(Lcom/android/keyguard/KeyguardSimPersoView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPersoView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSimPersoView$2$1;-><init>(Lcom/android/keyguard/KeyguardSimPersoView$2;Z)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSimPersoView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
