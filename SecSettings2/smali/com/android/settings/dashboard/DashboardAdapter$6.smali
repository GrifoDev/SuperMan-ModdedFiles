.class Lcom/android/settings/dashboard/DashboardAdapter$6;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->onBindFavoriteTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;

.field final synthetic val$tile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->val$tile:Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iget-object v1, v1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
