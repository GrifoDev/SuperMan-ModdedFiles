.class public Lcom/android/settings/applications/NotificationApps;
.super Lcom/android/settings/applications/ManageApplications;
.source "NotificationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/NotificationApps$1;,
        Lcom/android/settings/applications/NotificationApps$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/NotificationApps$1;

    invoke-direct {v0}, Lcom/android/settings/applications/NotificationApps$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/NotificationApps;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;-><init>()V

    return-void
.end method
