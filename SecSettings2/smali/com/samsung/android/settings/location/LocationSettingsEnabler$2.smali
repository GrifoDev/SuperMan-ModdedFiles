.class Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;
.super Ljava/lang/Object;
.source "LocationSettingsEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->-get0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
