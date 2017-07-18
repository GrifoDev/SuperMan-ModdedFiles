.class Lcom/android/incallui/secrcs/RcsShareUI$1;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Lcom/gsma/services/rcs/RcsServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secrcs/RcsShareUI;->rcsServiceListener()Lcom/gsma/services/rcs/RcsServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secrcs/RcsShareUI;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$1;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service API connected"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$1;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->access$100(Lcom/android/incallui/secrcs/RcsShareUI;)V

    return-void
.end method

.method public onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service API disconnected"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
