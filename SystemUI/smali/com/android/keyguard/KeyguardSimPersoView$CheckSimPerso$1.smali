.class Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso$1;
.super Ljava/lang/Object;
.source "KeyguardSimPersoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

.field final synthetic val$verifySucceed:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso$1;->val$verifySucceed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso$1;->val$verifySucceed:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->onSimCheckResponse(Z)V

    return-void
.end method
