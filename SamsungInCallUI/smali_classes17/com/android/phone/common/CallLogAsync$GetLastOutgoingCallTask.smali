.class Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLastOutgoingCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;

.field private mNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/common/CallLogAsync;


# direct methods
.method public constructor <init>(Lcom/android/phone/common/CallLogAsync;Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;->this$0:Lcom/android/phone/common/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;->mCallback:Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0, p1}, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;->doInBackground([Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;)Ljava/lang/String;
    .locals 6

    array-length v1, p1

    const-string v2, ""

    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    iget-object v5, v0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/provider/CallLog$Calls;->getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;->this$0:Lcom/android/phone/common/CallLogAsync;

    # invokes: Lcom/android/phone/common/CallLogAsync;->assertUiThread()V
    invoke-static {v0}, Lcom/android/phone/common/CallLogAsync;->access$000(Lcom/android/phone/common/CallLogAsync;)V

    iget-object v0, p0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;->mCallback:Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;

    invoke-interface {v0, p1}, Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;->lastOutgoingCall(Ljava/lang/String;)V

    return-void
.end method
