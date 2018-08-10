.class Lcom/samsung/android/settings/flipfont/FontListPreference$9;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/flipfont/FontListPreference;->RebootDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$9;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$9;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$9;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-set2(Lcom/samsung/android/settings/flipfont/FontListPreference;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$9;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$9;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->restartNow()V

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$9;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->dismissList()V

    return-void
.end method
