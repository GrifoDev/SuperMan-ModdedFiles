.class Lcom/samsung/android/settings/applications/ManageDefaultApps$8;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/applications/ManageDefaultApps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$8;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$8;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$8;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    const/4 v0, 0x1

    return v0
.end method
