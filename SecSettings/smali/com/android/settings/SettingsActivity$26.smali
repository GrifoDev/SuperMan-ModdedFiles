.class Lcom/android/settings/SettingsActivity$26;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->initMainScreenSearchView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$26;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$26;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0, v2}, Lcom/android/settings/SettingsActivity;->-set1(Lcom/android/settings/SettingsActivity;Z)Z

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$26;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->-get5(Lcom/android/settings/SettingsActivity;)Landroid/widget/SearchView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$26;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->-wrap0(Lcom/android/settings/SettingsActivity;)V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$26;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsActivity;->-set4(Lcom/android/settings/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$26;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->openSearchView()V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$26;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p1}, Lcom/android/settings/SettingsActivity;->setQueryFromOutter(Ljava/lang/String;)V

    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
