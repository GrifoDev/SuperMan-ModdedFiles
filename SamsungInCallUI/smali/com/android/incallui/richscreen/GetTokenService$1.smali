.class Lcom/android/incallui/richscreen/GetTokenService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmcc/sso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/richscreen/GetTokenService;->getToken(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/richscreen/GetTokenService;


# direct methods
.method constructor <init>(Lcom/android/incallui/richscreen/GetTokenService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/richscreen/GetTokenService$1;->this$0:Lcom/android/incallui/richscreen/GetTokenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/richscreen/GetTokenService$1;->this$0:Lcom/android/incallui/richscreen/GetTokenService;

    const-string v1, "onGetTokenComplete"

    invoke-static {v0, v1}, Lcom/android/incallui/richscreen/GetTokenService;->access$000(Lcom/android/incallui/richscreen/GetTokenService;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/richscreen/GetTokenService;->bDuringGetToken:Z

    iget-object v0, p0, Lcom/android/incallui/richscreen/GetTokenService$1;->this$0:Lcom/android/incallui/richscreen/GetTokenService;

    invoke-static {v0, p1}, Lcom/android/incallui/richscreen/GetTokenService;->access$100(Lcom/android/incallui/richscreen/GetTokenService;Lorg/json/JSONObject;)V

    return-void
.end method
