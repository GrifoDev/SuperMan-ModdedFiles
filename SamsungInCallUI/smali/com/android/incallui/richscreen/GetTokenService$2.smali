.class Lcom/android/incallui/richscreen/GetTokenService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmcc/sso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/richscreen/GetTokenService;->cleanCMCCSSO()V
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

    iput-object p1, p0, Lcom/android/incallui/richscreen/GetTokenService$2;->this$0:Lcom/android/incallui/richscreen/GetTokenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/richscreen/GetTokenService$2;->this$0:Lcom/android/incallui/richscreen/GetTokenService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " tryLoginRichScreenServerCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/incallui/richscreen/GetTokenService;->tryLoginRichScreenServerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/richscreen/GetTokenService;->access$000(Lcom/android/incallui/richscreen/GetTokenService;Ljava/lang/String;)V

    sget v0, Lcom/android/incallui/richscreen/GetTokenService;->tryLoginRichScreenServerCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/incallui/richscreen/GetTokenService;->tryLoginRichScreenServerCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/incallui/richscreen/GetTokenService;->tryLoginRichScreenServerCount:I

    iget-object v0, p0, Lcom/android/incallui/richscreen/GetTokenService$2;->this$0:Lcom/android/incallui/richscreen/GetTokenService;

    invoke-static {}, Lcom/android/incallui/richscreen/GetTokenService;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/richscreen/GetTokenService;->getToken(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/richscreen/GetTokenService;->tryLoginRichScreenServerCount:I

    goto :goto_0
.end method
