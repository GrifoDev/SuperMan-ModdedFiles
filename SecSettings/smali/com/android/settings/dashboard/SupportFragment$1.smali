.class Lcom/android/settings/dashboard/SupportFragment$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SupportFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SupportFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportFragment$1;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment$1;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportFragment;->-wrap1(Lcom/android/settings/dashboard/SupportFragment;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment$1;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportFragment;->-wrap1(Lcom/android/settings/dashboard/SupportFragment;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment$1;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportFragment;->-wrap1(Lcom/android/settings/dashboard/SupportFragment;)V

    return-void
.end method
