.class public Lcom/android/server/enterprise/firewall/FirewallRuleAction;
.super Ljava/lang/Object;
.source "FirewallRuleAction.java"


# static fields
.field public static final ACCEPT:I = 0x1

.field private static final ACTION_NOT_SET:I = -0x1

.field public static final DROP:I = 0x2

.field public static final LOG:I = 0x4

.field public static final PROXY:I = 0x3

.field public static final REDIRECT:I = 0x0

.field public static final REDIRECT_EXCEPTION:I = 0x7

.field public static final REJECT:I = 0x6

.field public static final RETURN:I = 0x5


# instance fields
.field private mAction:I

.field private mIpAddress:Ljava/lang/String;

.field private mPort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    return v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    return v2

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return v1
.end method

.method public setIpAddress(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mIpAddress:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public setPort(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mPort:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method
