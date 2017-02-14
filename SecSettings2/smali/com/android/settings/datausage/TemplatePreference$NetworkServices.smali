.class public Lcom/android/settings/datausage/TemplatePreference$NetworkServices;
.super Ljava/lang/Object;
.source "TemplatePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/TemplatePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkServices"
.end annotation


# instance fields
.field mNetworkService:Landroid/os/INetworkManagementService;

.field mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

.field mPolicyManager:Landroid/net/NetworkPolicyManager;

.field mStatsService:Landroid/net/INetworkStatsService;

.field mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
