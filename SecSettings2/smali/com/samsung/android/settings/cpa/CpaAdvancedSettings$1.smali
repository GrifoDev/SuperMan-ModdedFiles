.class Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;
.super Landroid/database/ContentObserver;
.source "CpaAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;->this$0:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;->this$0:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;->this$0:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->finish()V

    :cond_0
    return-void
.end method
