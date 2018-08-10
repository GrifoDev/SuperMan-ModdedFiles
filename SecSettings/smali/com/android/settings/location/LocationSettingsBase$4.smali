.class Lcom/android/settings/location/LocationSettingsBase$4;
.super Ljava/lang/Object;
.source "LocationSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettingsBase;->showVzwLocationConsentDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettingsBase;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettingsBase;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationSettingsBase$4;->this$0:Lcom/android/settings/location/LocationSettingsBase;

    iput-object p2, p0, Lcom/android/settings/location/LocationSettingsBase$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/location/LocationSettingsBase$4;->this$0:Lcom/android/settings/location/LocationSettingsBase;

    iget-object v1, p0, Lcom/android/settings/location/LocationSettingsBase$4;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v2}, Lcom/android/settings/location/LocationSettingsBase;->-wrap0(Lcom/android/settings/location/LocationSettingsBase;Landroid/content/Context;ZI)V

    return-void
.end method
