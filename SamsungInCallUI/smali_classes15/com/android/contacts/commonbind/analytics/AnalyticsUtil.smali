.class public Lcom/android/contacts/commonbind/analytics/AnalyticsUtil;
.super Ljava/lang/Object;
.source "AnalyticsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/app/Application;)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 27
    return-void
.end method

.method public static sendEvent(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 55
    return-void
.end method

.method public static sendScreenView(Landroid/app/Fragment;)V
    .locals 0
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 33
    return-void
.end method

.method public static sendScreenView(Landroid/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    return-void
.end method

.method public static sendScreenView(Landroid/app/Fragment;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public static sendScreenView(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "fragmentName"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method
