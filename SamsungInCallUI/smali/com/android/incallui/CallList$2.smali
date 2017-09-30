.class Lcom/android/incallui/CallList$2;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallList;->fetchDefaultColorAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallList;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallList$2;->this$0:Lcom/android/incallui/CallList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "CallList"

    const-string v1, "fetchDefaultColorAsync"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientDefaultColors()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallList$2;->this$0:Lcom/android/incallui/CallList;

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    aget v2, v1, v3

    aget v1, v1, v4

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/Call;->setGradientDefaultColor(II)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
