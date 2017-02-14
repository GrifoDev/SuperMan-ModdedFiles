.class Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field private mCrypto:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

.field final synthetic this$0:Lcom/samsung/android/camera/iris/SemIrisManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;->mCrypto:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;->mCrypto:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-wrap2(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V

    return-void
.end method
