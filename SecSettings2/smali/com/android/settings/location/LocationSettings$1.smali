.class Lcom/android/settings/location/LocationSettings$1;
.super Landroid/database/ContentObserver;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-wrap0(Lcom/android/settings/location/LocationSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v3}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/location/LocationSettings;->isRestricted(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/location/LocationSettings;->onModeChanged(IZ)V

    return-void
.end method
