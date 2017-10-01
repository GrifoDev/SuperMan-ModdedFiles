.class Lcom/android/settings/CryptKeeperInterstitial$3;
.super Landroid/os/AsyncTask;
.source "CryptKeeperInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeperInterstitial;->showFinalConfirmation(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperInterstitial;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperInterstitial;Landroid/os/storage/IMountService;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeperInterstitial$3;->this$0:Lcom/android/settings/CryptKeeperInterstitial;

    iput-object p2, p0, Lcom/android/settings/CryptKeeperInterstitial$3;->val$mountService:Landroid/os/storage/IMountService;

    iput p3, p0, Lcom/android/settings/CryptKeeperInterstitial$3;->val$type:I

    iput-object p4, p0, Lcom/android/settings/CryptKeeperInterstitial$3;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeperInterstitial$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial$3;->val$mountService:Landroid/os/storage/IMountService;

    iget v2, p0, Lcom/android/settings/CryptKeeperInterstitial$3;->val$type:I

    iget-object v3, p0, Lcom/android/settings/CryptKeeperInterstitial$3;->val$password:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/storage/IMountService;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CryptKeeperInterstitial"

    const-string/jumbo v2, "Error changing encryption password"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
