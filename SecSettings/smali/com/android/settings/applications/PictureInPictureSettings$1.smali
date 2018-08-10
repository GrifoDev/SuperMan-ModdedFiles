.class Lcom/android/settings/applications/PictureInPictureSettings$1;
.super Ljava/lang/Object;
.source "PictureInPictureSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/PictureInPictureSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/PictureInPictureSettings;

.field final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/PictureInPictureSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/PictureInPictureSettings$1;->this$0:Lcom/android/settings/applications/PictureInPictureSettings;

    iput-object p2, p0, Lcom/android/settings/applications/PictureInPictureSettings$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/PictureInPictureSettings$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    const-class v0, Lcom/android/settings/applications/PictureInPictureDetails;

    iget-object v2, p0, Lcom/android/settings/applications/PictureInPictureSettings$1;->val$packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/PictureInPictureSettings$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/PictureInPictureSettings$1;->this$0:Lcom/android/settings/applications/PictureInPictureSettings;

    iget-object v1, p0, Lcom/android/settings/applications/PictureInPictureSettings$1;->this$0:Lcom/android/settings/applications/PictureInPictureSettings;

    invoke-virtual {v1}, Lcom/android/settings/applications/PictureInPictureSettings;->getMetricsCategory()I

    move-result v6

    const v1, 0x7f12146f

    const/4 v5, -0x1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V

    const/4 v0, 0x1

    return v0
.end method
