.class Lcom/android/incallui/secrcs/RcsShareUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gsma/services/rcs/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secrcs/RcsShareUI;->rcsServiceListener()Lcom/gsma/services/rcs/f;
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
    .locals 3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service API connected"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$1;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->access$100(Lcom/android/incallui/secrcs/RcsShareUI;)V

    return-void
.end method

.method public onServiceDisconnected(Lcom/gsma/services/rcs/f$a;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service API disconnected"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
