.class Lcom/android/settings/applications/AppLaunchSettings$1;
.super Ljava/lang/Object;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppLaunchSettings;->buildStateDropDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppLaunchSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppLaunchSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppLaunchSettings;->-wrap0(Lcom/android/settings/applications/AppLaunchSettings;I)Z

    move-result v0

    return v0
.end method
