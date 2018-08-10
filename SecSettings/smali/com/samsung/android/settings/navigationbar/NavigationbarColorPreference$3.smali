.class Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;
.super Ljava/lang/Object;
.source "NavigationbarColorPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_color"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->-wrap2(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->-wrap1(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateUI()V

    return-void
.end method
