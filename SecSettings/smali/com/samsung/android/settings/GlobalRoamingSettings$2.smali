.class Lcom/samsung/android/settings/GlobalRoamingSettings$2;
.super Landroid/os/Handler;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalRoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v0

    const v1, 0x7f120f71

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-wrap1(Lcom/samsung/android/settings/GlobalRoamingSettings;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method
