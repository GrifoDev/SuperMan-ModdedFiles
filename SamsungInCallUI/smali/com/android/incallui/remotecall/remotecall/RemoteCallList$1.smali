.class Lcom/android/incallui/remotecall/remotecall/RemoteCallList$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onCallAdded(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

.field final synthetic val$call:Lcom/android/incallui/remotecall/remotecall/RemoteCall;


# direct methods
.method constructor <init>(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$1;->this$0:Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    iput-object p2, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$1;->val$call:Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$1;->val$call:Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;->startQuery(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    return-void
.end method
