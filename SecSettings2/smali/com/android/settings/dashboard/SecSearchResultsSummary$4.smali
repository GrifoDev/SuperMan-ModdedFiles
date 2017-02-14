.class Lcom/android/settings/dashboard/SecSearchResultsSummary$4;
.super Ljava/lang/Object;
.source "SecSearchResultsSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$4;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$4;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
