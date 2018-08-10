.class public Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;
.source "DefaultWorkBrowserPreferenceController.java"


# instance fields
.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;->mUserId:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "work_default_browser"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->isAvailable()Z

    move-result v0

    return v0
.end method
