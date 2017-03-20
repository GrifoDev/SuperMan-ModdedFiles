.class Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;
.super Landroid/os/AsyncTask;
.source "RcsShareUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secrcs/RcsShareUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsQuerryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secrcs/RcsShareUI;


# direct methods
.method private constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p2, "x1"    # Lcom/android/incallui/secrcs/RcsShareUI$1;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->queryOwnCaps(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    .line 194
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;
    invoke-static {v3}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/android/incallui/Call;

    move-result-object v3

    # invokes: Lcom/android/incallui/secrcs/RcsShareUI;->queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;
    invoke-static {v1, v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->access$100(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    .local v0, "c":Landroid/database/Cursor;
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCrane selfCapability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 204
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Landroid/view/ViewStub;

    move-result-object v2

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$400()Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->mIsWebExEnabled:Z
    invoke-static {v4}, Lcom/android/incallui/secrcs/RcsShareUI;->access$500(Lcom/android/incallui/secrcs/RcsShareUI;)Z

    move-result v5

    move-object v4, p1

    # invokes: Lcom/android/incallui/secrcs/RcsShareUI;->setupPromotedServiceButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/secrcs/RcsShareUI;->access$600(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V

    .line 206
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$700()Landroid/view/ViewStub;

    move-result-object v2

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$800()Landroid/widget/Button;

    move-result-object v3

    # invokes: Lcom/android/incallui/secrcs/RcsShareUI;->setupRcsServicesButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V
    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->access$900(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V

    .line 208
    :cond_0
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPostExecute "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVSHButtonAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z
    invoke-static {v2}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1000(Lcom/android/incallui/secrcs/RcsShareUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsISHButtonAvailable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z
    invoke-static {v2}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1100(Lcom/android/incallui/secrcs/RcsShareUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 210
    if-eqz p1, :cond_1

    .line 211
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
