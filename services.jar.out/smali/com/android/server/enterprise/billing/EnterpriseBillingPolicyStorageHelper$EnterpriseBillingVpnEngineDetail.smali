.class public Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
.super Ljava/lang/Object;
.source "EnterpriseBillingPolicyStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnterpriseBillingVpnEngineDetail"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnterpriseBillingPolicyStorage.EnterpriseBillingVpnEngineDetail"


# instance fields
.field public final containerId:I

.field public final enginePackageName:Ljava/lang/String;

.field public final vpnProfileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->vpnProfileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->enginePackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->containerId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->vpnProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->enginePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->containerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
