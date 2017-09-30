.class Lcom/android/incallui/service/ims/IMSManagerWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/ims/IMSManagerWrapper;->connectService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/ims/IMSManagerWrapper;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/ims/IMSManagerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper$1;->this$0:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "IMSManagerWrapper"

    const-string v1, "onConnected mImsManager"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper$1;->this$0:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    iput-boolean v2, v0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mIsConnected:Z

    return-void
.end method

.method public onDisconnected()V
    .locals 3

    const-string v0, "IMSManagerWrapper"

    const-string v1, "onDisconnected mImsManager"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/ims/IMSManagerWrapper$1;->this$0:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/service/ims/IMSManagerWrapper;->mIsConnected:Z

    return-void
.end method
