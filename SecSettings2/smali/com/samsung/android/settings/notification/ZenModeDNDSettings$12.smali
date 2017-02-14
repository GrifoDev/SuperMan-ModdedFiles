.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->showDaysDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-set0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/PreferenceScreen;

    :cond_0
    return-void
.end method
