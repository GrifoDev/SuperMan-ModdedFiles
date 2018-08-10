.class Lcom/samsung/android/settings/flipfont/FontListPreference$3;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/flipfont/FontListPreference;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$3;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$3;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-get2(Lcom/samsung/android/settings/flipfont/FontListPreference;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$3;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-get2(Lcom/samsung/android/settings/flipfont/FontListPreference;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sec_container_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$3;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$3;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-set3(Lcom/samsung/android/settings/flipfont/FontListPreference;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$3;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$3;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    return-void
.end method
