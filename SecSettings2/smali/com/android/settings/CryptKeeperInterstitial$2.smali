.class Lcom/android/settings/CryptKeeperInterstitial$2;
.super Ljava/lang/Object;
.source "CryptKeeperInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeperInterstitial;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperInterstitial;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperInterstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeperInterstitial$2;->this$0:Lcom/android/settings/CryptKeeperInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial$2;->this$0:Lcom/android/settings/CryptKeeperInterstitial;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->-wrap1(Lcom/android/settings/CryptKeeperInterstitial;Z)V

    return-void
.end method
