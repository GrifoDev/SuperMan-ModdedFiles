.class Lcom/android/settings/dashboard/SupportFragment$2;
.super Ljava/lang/Object;
.source "SupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SupportFragment;->postConnectivityChanged()V
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

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportFragment$2;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment$2;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportFragment;->-get0(Lcom/android/settings/dashboard/SupportFragment;)Lcom/android/settings/dashboard/SupportItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment$2;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportFragment;->-get0(Lcom/android/settings/dashboard/SupportFragment;)Lcom/android/settings/dashboard/SupportItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment$2;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-static {v1}, Lcom/android/settings/dashboard/SupportFragment;->-wrap0(Lcom/android/settings/dashboard/SupportFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter;->setHasInternet(Z)V

    :cond_0
    return-void
.end method
