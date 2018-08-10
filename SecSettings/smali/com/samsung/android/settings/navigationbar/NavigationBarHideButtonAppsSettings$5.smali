.class Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$5;
.super Ljava/lang/Object;
.source "NavigationBarHideButtonAppsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->refreshDisplayedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

.field final synthetic val$row:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$5;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$5;->val$row:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$5;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$5;->val$row:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;

    iget-object v2, v2, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$5;->val$row:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;

    iget v3, v3, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mUid:I

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->setNaviBarHidePackage(Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$5;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-set0(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;Z)Z

    const/4 v1, 0x1

    return v1
.end method
