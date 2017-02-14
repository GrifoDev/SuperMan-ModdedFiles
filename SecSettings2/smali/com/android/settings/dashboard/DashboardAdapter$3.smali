.class Lcom/android/settings/dashboard/DashboardAdapter$3;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;

.field final synthetic val$holder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->val$holder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-set0(Lcom/android/settings/dashboard/DashboardAdapter;Z)Z

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->val$holder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1103c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap1(Lcom/android/settings/dashboard/DashboardAdapter;)V

    return-void
.end method
