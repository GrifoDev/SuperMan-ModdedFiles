.class Lcom/samsung/android/settings/flipfont/FontListPreference$2;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/flipfont/FontListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    iput-object v1, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-set1(Lcom/samsung/android/settings/flipfont/FontListPreference;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-set0(Lcom/samsung/android/settings/flipfont/FontListPreference;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->restartLater()V

    return-void
.end method
