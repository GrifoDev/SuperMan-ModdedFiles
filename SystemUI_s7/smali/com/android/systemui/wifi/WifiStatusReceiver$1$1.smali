.class Lcom/android/systemui/wifi/WifiStatusReceiver$1$1;
.super Ljava/lang/Object;
.source "WifiStatusReceiver.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wifi/WifiStatusReceiver$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/wifi/WifiStatusReceiver$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/wifi/WifiStatusReceiver$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1$1;->this$1:Lcom/android/systemui/wifi/WifiStatusReceiver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
