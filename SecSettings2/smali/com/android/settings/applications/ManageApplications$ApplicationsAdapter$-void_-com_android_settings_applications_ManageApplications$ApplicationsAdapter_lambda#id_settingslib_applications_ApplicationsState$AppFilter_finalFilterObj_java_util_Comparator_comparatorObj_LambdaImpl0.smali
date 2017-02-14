.class final synthetic Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$entries:Ljava/util/ArrayList;

.field private synthetic val$this:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;->val$this:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;->val$entries:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;->val$this:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;->val$entries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$2(Ljava/util/ArrayList;)V

    return-void
.end method
