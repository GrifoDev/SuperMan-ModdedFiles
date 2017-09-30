.class Lcom/android/incallui/smartcall/SmartCallManager$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcall/SmartCallManager;->queryImageUri(Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcall/SmartCallManager;

.field final synthetic val$callId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/android/incallui/smartcall/SmartCallerInfoListener;

.field final synthetic val$srcUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcall/SmartCallManager;Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/smartcall/SmartCallManager$2;->this$0:Lcom/android/incallui/smartcall/SmartCallManager;

    iput-object p2, p0, Lcom/android/incallui/smartcall/SmartCallManager$2;->val$srcUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/smartcall/SmartCallManager$2;->val$listener:Lcom/android/incallui/smartcall/SmartCallerInfoListener;

    iput-object p4, p0, Lcom/android/incallui/smartcall/SmartCallManager$2;->val$callId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallManager$2;->this$0:Lcom/android/incallui/smartcall/SmartCallManager;

    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallManager;->access$100(Lcom/android/incallui/smartcall/SmartCallManager;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/smartcall/SmartCallContract;->IMAGE_CACHE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "srcUrl = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/smartcall/SmartCallManager$2;->val$srcUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcall/SmartCallManager$2;->val$listener:Lcom/android/incallui/smartcall/SmartCallerInfoListener;

    iget-object v2, p0, Lcom/android/incallui/smartcall/SmartCallManager$2;->val$callId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/android/incallui/smartcall/SmartCallerInfoListener;->onResult(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IllegalArgumentException "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
