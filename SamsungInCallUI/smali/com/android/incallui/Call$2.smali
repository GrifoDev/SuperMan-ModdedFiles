.class Lcom/android/incallui/Call$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/Call;->updateFromTelecomCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/Call;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/Call;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/Call$2;->this$0:Lcom/android/incallui/Call;

    iput-object p2, p0, Lcom/android/incallui/Call$2;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/Call$2;->this$0:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/Call$2;->val$number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/operator/chn/PNLUtils;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setPhoneNumberLocator(Ljava/lang/String;)V

    return-void
.end method
